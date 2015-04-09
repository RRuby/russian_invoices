# RussianInvoices
Гем для генерации различных документов в формате pdf для rails приложегния.

## Установка

Нужно добавить эту строку в Gemfile:
``` ruby
gem 'russian_invoices'
```
В данный момент есть возможность генерации следующих видов документов:
* счет-фактура - RussianInvoices::CommercialInvoice;
* акт выполненных работ - RussianInvoices::CertificateOfCompletion;
* договор - RussianInvoices::CertificateOfCompletion.

### Пример генерацииенерация документа "Счет фактура".
``` ruby
def show
  doc = RussianInvoices::CommercialInvoice.create(
    invoice_number: 1,
    invoice_from_date: '1 декабря 1999',
    vendor_name: 'ООО "Рога и копыта"',
    vendor_address: 'г.Москва, ул.Ленина, д.1., кв 1',
    vendor_name: 'Иванов И.И.',
    vendor_inn: 1234567,
    vendor_kpp: 12345678901,
    shipper_name: 'ООО "Доставщик"',
    shipper_address: 'г.Москва, ул.Ленина, д.2., кв 3',
    consignee_name: 'ООО "Poluchatel"',
    consignee_address: 'г.Воронеж, ул.Карла Маркса, д.1., кв.2',
    to_the_payment_documents: '№124 от 24.01.2014, №232 от 27.01.2014',
    buyer_name: 'ООО "Pokupatel"',
    buyer_address: '123345, Воронеж, пл.Ленина, 1',
    buyer_inn: 1234567890,
    buyer_kpp: 123456789,
    currency_name: 'Российский рубль',
    currency_code: 643,
    goods: [
      {
        name: 'Монитор 17 Samsung 710N (SKN) TFT',
        code: 796,
        unit: 'шт.',
        quantity: 5,
        price: 3039.2,
        excise_price: 321,
        tax: '18%',
        digital_code: 156,
        country: 'Китай',
        number_of_customs_declaration: '10210130/ 211206/ 0017348/ 1'
      }
    ]
  )
  render_pdf_document(doc)
end
```

### Пример генерацииенерация документа "акт выполненных работ".
``` ruby
def show
  doc = RussianInvoices::CertificateOfCompletion.create(
    number: 1,
    from_date: '1 декабря 1999',
    customer_name: 'Иванов И.И.',
    customer_inn: '1237778884',
    customer_kpp: '12343521456456',
    customer_address: 'г.Городинск, ул.Улицова, д.1., кв 165',
    performer_name: 'Иванов И.И.',
    performer_inn: '12568679653',
    performer_kpp: '43578543233556',
    performer_address: 'г.Урюпинск, ул.Ленина д.5',
    nds: 18, #in percents
    goods: [
      { name: 'Позиция1', quantity: 2, unit: 'шт.', price: 22.55 },
      { name: 'Колбаса', quantity: 2.42, unit: 'кг.', price: 347.2 },
      { name: 'Печенье', quantity: 1.41, unit: 'кг.', price: 120.13 },
    ],
    performer_signature: Rails.root.join('public', 'signature.png'),
    performer_stamp: Rails.root.join('public', 'stamp.png')
  )
  render_pdf_document(doc)
end
```

### Пример генерацииенерация документа "Договор".
```ruby
def show
  doc = RussianInvoices::Contract.create(
    name: 'о разработке гема',
    number: 1,
    city: 'Москва',
    from_date: '"01" января 2036г.',
    body: '<p>Очень длинный текст договора...</p>'*10,
    customer_details: 'Никулин Александр Юрьевич<br />
                       Паспорт XXXX XXXXXX<br />
                       Выдан в городе Москва 01.01.1812, код подразделения 000-001, проживающий по адресу г.Москва, ул.Безымянная, д. 1, кв.111
                       Тел.: 8-000-000-00-00',
    performer_details: 'http://rubyruby.ru',
    customer_position: 'менеджер',
    performer_position: 'руководитель',
    customer_signature: Rails.root.join('public', 'signature.png'),
    performer_signature: Rails.root.join('public', 'signature.png'),
    customer_stamp: Rails.root.join('public', 'stamp.png'),
    performer_stamp: Rails.root.join('public', 'stamp.png')
  )
  render_pdf_document(doc)
end
```

This project rocks and uses MIT-LICENSE.
