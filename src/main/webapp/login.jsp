<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <title>Document</title>
  </head>
  <body>
    <!-- Section: Design Block -->
    <section class="text-center text-lg-start">
      <style>
        .cascading-right {
          margin-right: -50px;
        }

        @media (max-width: 991.98px) {
          .cascading-right {
            margin-right: 0;
          }
        }
      </style>

      <!-- Jumbotron -->
      <div class="container py-4">
        <div class="row g-0 align-items-center">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div
              class="card cascading-right"
              style="
                background: hsla(0, 0%, 100%, 0.55);
                backdrop-filter: blur(30px);
              "
            >
              <div class="card-body p-5 shadow-5 text-center">
                <h2 class="fw-bold mb-5">Sign in now</h2>
                <form>
                  <!-- Email input -->
                  <div class="input-group has-validation mb-3">
                    <div class="col form-floating is-invalid">
                      <input
                        type="email"
                        id="form3Example3"
                        class="form-control"
                        placeholder="Email"
                        required
                      />
                      <label for="floatingInputGroup2">Email address</label>
                    </div>
                    <!-- <div class="col-3 invalid-feedback text-start">
                      Please choose a valid Email.
                    </div> -->
                  </div>

                  <!-- Password input -->
                  <div class="col input-group has-validation mb-3">
                    <div class="col form-floating is-invalid">
                      <input
                      type="password"
                      id=""
                      class="form-control"
                      placeholder="Password"
                        required
                      />
                      <label for="floatingInputGroup2">password</label>
                    </div>
                    <!-- <div class="col-3 invalid-feedback text-start">
                      Please choose a valid password.
                    </div> -->
                  </div>

                  <!-- 2 column grid layout for inline styling -->
                  <div class="row mb-4">
                    <div class="col d-flex justify-content-center">
                      <!-- Checkbox -->
                      <div class="form-check">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          value=""
                          id="form2Example31"
                          checked
                        />
                        <label class="form-check-label" for="form2Example31">
                          Remember me
                        </label>
                      </div>
                    </div>

                    <div class="col">
                      <!-- Simple link -->
                      <a href="#!">Forgot password?</a>
                    </div>
                  </div>

                  <!-- Submit button -->
                  <button type="button" class="btn btn-primary btn-block mb-4" style="background-color: #C13584;">
                    Sign in
                  </button>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-5 mb-lg-0">
            <img
              src="https://mdbootstrap.com/img/new/textures/full/171.jpg"
              class="w-100 rounded-4 shadow-4"
              alt=""
              style="height: 500px"
            />
          </div>
        </div>
      </div>
      <!-- Jumbotron -->
    </section>
    <!-- Section: Design Block -->
  </body>
</html>
