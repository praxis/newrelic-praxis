# newrelic-praxis changelog

## next

* `Blueprint` instrumentation's `RenderEvent` raising a `NoMethodError` when the notification's `payload[:view]` is `nil`.

## 1.1

* Ensure every transaction is named after the Ctrl+action (even if it never hits the controller action code)

## 1.0

* Initial release of the Gem:
  * It has support for Praxis (the API framework), Praxis Blueprints and Praxis Mapper.

