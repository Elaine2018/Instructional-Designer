<login>

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                  </div>
                  <form class="user">

                    </div>

                    <hr>
                    <button  type="button" onclick={ logIn } class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google</button>

                      <button  type="button" onclick={ logOut} class="btn btn-facebook btn-user btn-block">
                         <i class="fab fa-google fa-fw"></i>Logout Google Account</button>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>






<script type="text/javascript">
var user = firebase.auth();
this.currentUser = user.currentUser;

   //sign-in with google
   this.logIn = function () {
     console.log("logging in...");
     var provider = new firebase.auth.GoogleAuthProvider();
     user.signInWithPopup(provider);
   }

   //sign-out
   this.logOut = function () {
     console.log("logging out...");
     user.signOut();
   }
   var tag = this;//make a copy of the tag variable at the very top of your script

  // sign-in Listener
      user.onAuthStateChanged(function (userObj) {
        tag.currentUser = firebase.auth().currentUser;
        console.log("on stage change: this.currentUser", this.currentUser);
        tag.update();
      });
</script>
</login>
