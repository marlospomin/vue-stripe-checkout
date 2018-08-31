# Vue Stripe Checkout Component

> Easily drag and drop to your project and start processing payments.

## Install

Just `git clone` the repo and copy the file to your components folder.

## Usage

Register the component on your vue instance (`new Vue`) and add `<checkout></checkout>` to your views.

Pass `name` and `amount` as attributes to call the modal, like the example below:

``` html
<checkout name="My Product" amount="9.99"></checkout>
```

This component was mainly used within a Rails app, see `/doc` for mode details on that.

#### Configuring

Currently there's no configuration supported, all changes must be made on the `*.vue` file.

## Contributing

If you wish to contribute please make a pull request or open an issue.

## License

Code released under the [MIT](LICENSE) license.
