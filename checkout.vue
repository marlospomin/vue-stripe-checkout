<template>
  <button class="btn" @click="checkout">Checkout</button>
</template>

<script>
  export default {
    methods: {
      checkout() {
        this.$checkout.open({
          name: this.name,
          amount: parseInt(this.amount),
          token: (token) => {
            document.getElementById("stripeToken").value = token.id
            document.getElementById("stripeEmail").value = token.email
            document.querySelector("form").submit()
          }
        })
      }
    },
    props: ['name', 'amount'],
    beforeCreate() {
      const script = document.createElement('script')
      script.src = 'https://checkout.stripe.com/checkout.js'
      document.head.appendChild(script)

      script.onload = () => {
        this.$checkout = StripeCheckout.configure({
          key: 'pk_test_key',
          locale: 'auto',
          currency: 'USD',
          panelLabel: 'Price: {{amount}}'
        })
      }
    }
  }
</script>
