# RussianInvoices
Гем для генерации различных документов в формате pdf для rails приложегния.
В данный момент есть возможность генерации следующих видов документов:
* счет-фактура - RussianInvoices::CommercialInvoice;
* акт выполненных работ - RussianInvoices::CertificateOfCompletion;
* договор - RussianInvoices::CertificateOfCompletion.


## Установка

Нужно добавить эту строку в Gemfile:
``` ruby
gem 'russian_invoices'
```

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



This project rocks and uses MIT-LICENSE.
