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
    <link rel="stylesheet" href="./s.css" />
  </head>
  <body>
    <main>
      <!-- Section: Design Block -->
      <section class="text-center">
        <!-- Background image -->
        <div class="p-5 bg-image" style="padding-bottom: 0% !important"></div>
        <!-- Background image -->

        <div
          class="card mx-4 mx-md-5 shadow-5-strong"
          style="
            margin-top: -100px;
            background: hsla(0, 0%, 100%, 0.8);
            backdrop-filter: blur(30px);
          "
        >
          <div class="card-body py-3 px-md-3">
            <div class="row d-flex justify-content-center">
              <div class="col-lg-8">
                <h2 class="fw-bold mb-1">Sign up now</h2>
                <form>
                  <div class="row row-cols-2">
                    <!-- Email input -->
                    <div class="input-group has-validation">
                      <div class="col form-floating is-invalid">
                        <%--@declare id="floatinginputgroup2"--%><input
                                type="email"
                                id="form3Example3"
                                class="form-control"
                                placeholder="Email"
                                required
                        />
                        <label for="floatingInputGroup2">Email address</label>
                      </div>
                      <div class="col-3 invalid-feedback text-start">
                        Please choose a valid Email.
                      </div>
                    </div>
                  </div>

                  <!-- Password input -->
                  <div class="row row-cols-2">
                    <div class="col input-group has-validation">
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
                      <div class="col-3 invalid-feedback text-start">
                        Please choose a valid password.
                      </div>
                    </div>
                    <div class="col input-group has-validation">
                      <div class="col form-floating is-invalid">
                        <input
                                type="password"
                                id="l"
                                class="form-control"
                                placeholder="Password"
                                required
                        />
                        <label for="floatingInputGroup2">password</label>
                      </div>
                      <div class="col-3 invalid-feedback text-start">
                        passwords do not match
                      </div>
                    </div>
                  </div>

                  <!-- Submit button -->
                  <button type="submit" class="btn btn-primary btn-block mb-4" style="background-color: #C13584;">
                    Sign up
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Section: Design Block -->
    </main>
  </body>
</html>
