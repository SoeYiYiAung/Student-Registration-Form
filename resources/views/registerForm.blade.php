<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <script src="script.js" defer></script>
    <title>Registraion Form</title>
    <link rel="stylesheet" href="{{url('assets/bootstrap/css/bootstrap.min.css')}}" />
    <link rel="stylesheet" href="{{url('assets/css/register.css')}}" />
    <script src="{{url('assets/js/register.js')}}" defer></script>
  </head>
  
  <body>
    <form action="{{route('registerForm.store')}}" method="post">
      @csrf
      <h1 class="text-center">Registration Form</h1>

      <!-- Progress bar -->
      <div class="progressbar">
        <div class="progress" id="progress"></div>
        
        <div
          class="progress-step progress-step-active"
          data-title="Personal Information"
        ></div>
        <div class="progress-step" data-title="Educational Background"></div>
        <div class="progress-step" data-title="Working Experience"></div>
        <div class="progress-step" data-title="Upload Document"></div>
      </div>

      <!-- Steps -->

      <div class="form-step form-step-active">
        <div class="row">
          <div class="col-md-6">
            <label for="" class="form-label"><strong>Program</strong></label>
            <select name="program_id" class="form-select">
              <option value="">Choose Program</option>
              @foreach($programs as $program)
                <option value="{{ $program->id }}">{{ $program->title }}</option>
              @endforeach
            </select>
          </div>

          <div class="col-md-6">
            <label for="" class="form-label"><strong>Academic Year</strong></label>
            <select name="academic_year" class="form-select">
              <option value="">Choose Academic Year</option>
              @foreach($academic_years as $academic_year)
                <option value="{{ $academic_year->id }}">{{ $academic_year->academic_year }}</option>
              @endforeach
            </select>
          </div>
        </div>

        <h3 class="mb-3 mt-3">Personal Information</h3>
              <div class="row">
              <div class="col-md-4">
                <label for="" class="form-label">Full Name</label>
                <input type="text" name="name" id="" class="form-control mb-5" required>
              </div>
              <div class="col-md-4">
                <label for="" class="form-label">NRC Number</label>
                <input type="text" name="nrc" id="" class="form-control mb-5" required>
              </div>
              <div class="col-md-4">
                <label for="" class="form-label">Date of Birth</label>
                <input type="date" name="date_of_birth" id="" class="form-control mb-5" required>
              </div>
            </div>

            <div class="row">
              <div class="col-md-4">
                <label for="" class="form-label">Email</label>
                <input type="email" name="email" id="" class="form-control mb-5" required>
              </div>
              <div class="col-md-4">
                <label for="" class="form-label">Phone Number</label>
                <input type="number" name="phone" id="" class="form-control mb-5" required>
              </div>
              <div class="col-md-4">
                <label for="" class="form-label">Facebook Link</label>
                <input type="text" name="fb_link" id="" class="form-control mb-5">
              </div>
            </div>

            <div class="row">
              <div class="col-md-3">
                <label for="" class="form-label">Address</label>
                <input type="text" name="address" id="" class="form-control mb-5">
              </div>
              <div class="col-md-3">
                <label for="" class="form-label">City</label>
                <input type="text" name="city" id="" class="form-control mb-5">
              </div>
              <div class="col-md-3">
                <label for="" class="form-label">State or Divison</label>
                <input type="text" name="devision" id="" class="form-control mb-5">
              </div>
              <div class="col-md-3">
                <label for="" class="form-label">Country</label>
                <input type="text" name="country" id="" class="form-control mb-5">
              </div>
            </div>

            <div class="row">
              <div class="col-md-4">
                <label for="" class=""><strong>Race</strong></label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="race" id="flexRadioDefault1" value="Myanmar">
                  <label class="form-check-label" for="flexRadioDefault1">
                    Myanmar
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="race" id="flexRadioDefault2" value="Other">
                  <label class="form-check-label" for="flexRadioDefault2">
                    Other
                  </label>
                </div>
              </div>
              
              <div class="col-md-4">
                <label for="" class="form-label"><strong>Marital Status</strong></label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="martial_status" id="flexRadioDefault1" value="married">
                  <label class="form-check-label" for="flexRadioDefault1">
                    Married
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="martial_status" id="flexRadioDefault1" value="single">
                  <label class="form-check-label" for="flexRadioDefault1">
                    Single
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="martial_status" id="flexRadioDefault2" value="other">
                  <label class="form-check-label" for="flexRadioDefault2">
                    Other
                  </label>
                </div>
              </div>

              <div class="col-md-4">
                <label ><strong>Gender</strong></label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault1" value="male">
                  <label class="form-check-label" for="flexRadioDefault1">
                    Male
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault1" value="female">
                  <label class="form-check-label" for="flexRadioDefault1">
                    Female
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault2" value="other">
                  <label class="form-check-label" for="flexRadioDefault2">
                    Other
                  </label>
                </div>
              </div>
            </div>

        <div class="mt-3">
          <a href="#" class="btn btn-next width-50 ml-auto btn-light">Next</a>
        </div>
      </div>


      <div class="form-step">
        <h3>Educational Background</h3>
              <div class="row">
                <div class="col-md-6">
                  <label>Highest Education</label>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="education" id="flexRadioDefault1" value="Matriculation">
                    <label class="form-check-label" for="flexRadioDefault1">
                      Matriculation
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="education" id="flexRadioDefault1" value="IGCSE">
                    <label class="form-check-label" for="flexRadioDefault1">
                      IGCSE or GED
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="education" id="flexRadioDefault2" value="other">
                    <label class="form-check-label" for="flexRadioDefault2">
                      Other
                    </label>
                  </div>
                </div>
                </div>

                <div class="col-md-6">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="education" id="flexRadioDefault1" value="University">
                    <label class="form-check-label" for="flexRadioDefault1">
                      University Student
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="education" id="flexRadioDefault1" value="Bachelor">
                    <label class="form-check-label" for="flexRadioDefault1">
                      Bachelor
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="education" id="flexRadioDefault2" value="Master">
                    <label class="form-check-label" for="flexRadioDefault2">
                      Master
                    </label>
                  </div>
                </div>

              <div class="row">
                <h6 class="mt-3"><strong>High School</strong></h6>
                <div class="col-md-6">
                  
                  <label for="" class="forn-label">High School Name</label>
                  <input type="text" name="school_name" id="" class="form-control mb-4">
                </div>
                <div class="col-md-6">
                  <label for="" class="forn-label">Year of Matriculation Exam Pass</label>
                  <input type="date" name="exam_pass_date" id="" class="form-control mb-4">
                </div>
              </div>

              <div class="row">
                <label for="" class="form-label"><strong>Degree of Diploma</strong></label>
                <div class="col-md-3">
                  <label for="" class="form-label">Degree of Diploma</label>
                  <input type="text" name="degree" id="" class="form-control mb-5">
                </div>
                <div class="col-md-3">
                  <label for="" class="form-label">University Name</label>
                  <input type="text" name="uni_name" id="" class="form-control mb-5">
                </div>
                <div class="col-md-3">
                  <label for="" class="form-label">Starting Date</label>
                  <input type="date" name="uni_start_date" id="" class="form-control mb-5">
                </div>
                <div class="col-md-3">
                  <label for="" class="form-label">End Date</label>
                  <input type="date" name="uni_end_date" id="" class="form-control mb-5">
                </div>
              </div>
                <div class="btns-group">
                <a href="#" class="btn btn-prev">Previous</a>
                <a href="#" class="btn btn-next">Next</a>
                </div>
        
      </div>
    {{-- </div> --}}



      <div class="form-step">
        <h3>Woring Experience</h3>
              <div class="row">
                <div class="col-md-6">
                  <h6>Do you have any working experience?</h6>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="experience" id="flexRadioDefault1" value="hasExp">
                    <label class="form-check-label" for="flexRadioDefault1">
                      Yes
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="experience" id="flexRadioDefault1" value="noExp">
                    <label class="form-check-label" for="flexRadioDefault1">
                      No
                    </label>
                  </div>
                </div>

                <div class="col-md-6">
                  <h6>Working Experience</h6>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="experience_year" id="flexRadioDefault1" value="between1&3">
                    <label class="form-check-label" for="flexRadioDefault1">
                      Between 1 year and 3 years
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="experience_year" id="flexRadioDefault1" value="between3&5">
                    <label class="form-check-label" for="flexRadioDefault1">
                      Between 3 years and 5 years
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="experience_year" id="flexRadioDefault2" value="above5">
                    <label class="form-check-label" for="flexRadioDefault2">
                      Above 5 years
                    </label>
                  </div>
                </div>
              </div>

              <div class="row">
                <h6>Current Occupation</h6>
                <div class="col-md-4">
                  <label for="">Position</label>
                  <input type="text" name="current_position" id="">
                </div>
                <div class="col-md-4">
                  <label for="">Company Name</label>
                  <input type="text" name="current_company" id="">
                </div>
                <div class="col-md-4">
                  <label for="">Starting Date</label>
                  <input type="date" name="company_startDate" id="">
                </div>
              </div>

              <div class="row">
                <h6 class="mt-4">Previous jobs</h6>
                <div class="col-md-3">
                  <label for="">Position</label>
                  <input type="text" name="previous_position" id="">
                </div>
                <div class="col-md-3">
                  <label for="">Company Name</label>
                  <input type="text" name="previous_company" id="">
                </div>
                <div class="col-md-3">
                  <label for="">Starting Date</label>
                  <input type="date" name="previous_startDate" id="">
                </div>
                <div class="col-md-3">
                  <label for="">End Date</label>
                  <input type="date" name="previous_endDate" id="">
                </div>
              </div>

              <div class="btns-group mt-5">
                <a href="#" class="btn btn-prev">Previous</a>
                <a href="#" class="btn btn-next">Next</a>
              </div>
      </div>


      <div class="form-step">
        <h4>To Upload Documents</h4>
              <div class="row">
                <div class="col-md-4">
                  <label for="">Scanned NRC front and back:</label>
                  <input type="file" name="nrc_image" id="">
                </div>
                <div class="col-md-4">
                  <label for="">Scanned Graducation Certificate</label>
                  <input type="file" name="graduation_certificate" id="">
                </div>
                <div class="col-md-4">
                  <label for="">Other Documents</label>
                  <input type="file" name="document" id="">
                </div>
              </div>

              <div class="row">
                <label for="" class="mt-4">Other Description</label>
                <textarea name="description" id="" cols="10" rows="5"></textarea>
              </div>

              <div class="form-check mt-3 mb-3">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                  Agree to the terms and conditions
                </label>
              </div>
               
            <div class="btns-group">
          <a href="#" class="btn btn-prev">Previous</a>
          {{-- <button class="btn btn-warning" type="" >Submit</button> --}}
          <input type="submit" value="Submit" class="btn" />
        </div>
      </div>

      </form>
  </body>
</html>