var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!"
    };
  },
  created: function() {
    axios.get("http://localhost:3000/api/books").then(function(response){
    this.books = response.data;
    console.log(this.books);}.bind(this));
  },
  methods: {},
  computed: {}
};

  var SamplePage = {
    template: "#sample-page",
    data: function() {
      return {
        message: "You are welcome!!!"
      };
    },
    created: function() {},
    methods: {},
    computed: {}
  };

  var SignupPage = {
    template: "#signup-page",
    data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
      };

  var SignupPage = {
    template: "#Books-new-page",
    data: function() {
    return {
      name: "",
      author: "",
      description: "",
    };
  },


  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

  var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/user_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};


var LogoutPage = {
  template: "<h1>Logout</h1>",
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/");
  }
};



  var router = new VueRouter({
  routes: [
      { path: "/", component: HomePage },
      { path: "/sample", component: SamplePage},
      { path: "/signup", component: SignupPage },
      { path: "/login", component: LoginPage },
      { path: "/logout", component: LogoutPage },
      { path: "/books", component: NewBook}
      ],

      scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});



var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});



