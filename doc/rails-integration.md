# Rails Integration

To integrate `checkout.vue` within a Rails app follow the steps below:

1. Copy the files to your rails app and modify as needed.
2. Setup the proper credentials in the `*.vue` file.
3. Click the button.

Note: `checkout.vue` would go under `app/javascript/some-folder`, the main vue instance should be in `app/javascript/packs`.

``` js
// Import the file
import Checkout from '../some-folder/checkout.vue'

// Register it as a component
new Vue({
  ... redacted ...
  components: { Checkout }
  ... redacted ...
})
```
