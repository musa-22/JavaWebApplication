<%
if(session.getAttribute("nameF")==null){
	response.sendRedirect("regist.jsp");
}
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Musa Salih</title>
    <link rel="stylesheet" href="assets/style.css">
    <script src="https://kit.fontawesome.com/c8e4d183c2.js"crossorigin="anonymous"></script>
</head>
<body>
    <section id="about-me">
        <nav>
          <div class="personal__logo"><%=session.getAttribute("nameF") %></div>
          <ul class="nav__link--list">
            <li class="nav__link">
              <a href="#languages" class="
                nav__link--anchor
                link__hover-effect
                link__hover-effect--black
              ">Languages</a>
            </li>
            <li class="nav__link">
              <a href="#projects" class="
                nav__link--anchor
                link__hover-effect
                link__hover-effect--black
              ">Projects</a>
            </li>
            <li class="nav__link">
              <a href="mailto:email@email.com" class="
                nav__link--anchor
                nav__link--anchor-primary
              ">Contact</a>
            </li>
            
            <li class="nav__link">
              <a href="logoutFu" class="
                nav__link--anchor
                nav__link--anchor-primary
              ">Logout</a>
            </li>
            
            
            
            
          </ul>
        </nav>
        <div class="flex flex-1">
          <div class="about-me__info row">
            <div class="about-me__info--container">
              <figure class="about-me__picture--mask">
                <img src="./assets/photo.jpg" class="about-me__picture" alt="this is my pic">
              </figure>
              <h1 class="about-me__info--title">
                Hey! I'm <span class="text--purple">Musa Salih</span>&nbsp;<span class="wave">✋🏾</span>
              </h1>
              <p class="about-me__info--para">
                I'm a <strong class="text--purple">graduate software engineer</strong>, and I would like to work on the back-end of the web & also, front-end. I'm with a really great passion for building websites
                applications. Aslo, I have passion for solving coding problems .
              </p>
              <div class="about-me__links">
                <a href="" class="about-me__link">
                  <i class="fab fa-linkedin-in"></i>
                </a>
                <a href="" class="about-me__link">
                  <i class="fab fa-github"></i>
                </a>
                <a href="" class="about-me__link">
                  <i class="far fa-envelope"></i>
                </a>
                <a href="" target="_blank" class="about-me__link">
                  <i class="fas fa-file-pdf"></i>
                </a>
              </div>
            </div>
            <br>
            <br>
            <br>
            <figure class="about-me__img--container">
              <img src="./assets/undraw_program.svg" class="about-me__img" alt="">
            </figure>
          </div>
        </div>
      </section>
      <section id="languages">
        <div class="container">
          <div class="row">
            <h1 class="section__title">These technologies I have used to <span class="text--purple">  build projects</span></h1>
            <div class="language__list">
              <div class="language">
                <figure class="language__img--wrapper">
                  <img
                    src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/HTML5_Badge.svg/240px-HTML5_Badge.svg.png"
                    alt="Html Logo" class="language__img" />
                </figure>
                <span class="language__name">HTML</span>
              </div>
              <div class="language">
                <figure class="language__img--wrapper">
                  <img src="https://cdn.iconscout.com/icon/free/png-256/css-131-722685.png" alt="CSS Logo"
                    class="language__img" />
                </figure>
                <span class="language__name">CSS</span>
              </div>
                         
              <div class="language">
                <figure class="language__img--wrapper">
                  <img src="./assets/bootstrap.png"
                    alt="TypeScript Logo" class="language__img" />
                </figure>
                <span class="language__name">Bootstrap</span>
              </div>

              <div class="language">
                <figure class="language__img--wrapper">
                  <img src="https://cdn.iconscout.com/icon/free/png-256/javascript-1-225993.png" alt="JavaScript Logo"
                    class="language__img" />
                </figure>
                <span class="language__name">JavaScript</span>
              </div>

              <div class="language">
                <figure class="language__img--wrapper">
                  <img src="./assets/php.png" alt="Vue Logo"
                    class="language__img" />
                </figure>
                <span class="language__name">PHP</span>
              </div>

              <div class="language">
                <figure class="language__img--wrapper">
                  <img src="./assets/java.png" alt="Nuxt Logo"
                    class="language__img" />
                </figure>
                <span class="language__name">java</span>
              </div>

              <div class="language">
                <figure class="language__img--wrapper">
                  <img src="./assets/c.png" alt="React Logo"
                    class="language__img" />
                </figure>
                <span class="language__name">C++</span>
              </div>

              <div class="language">
                <figure class="language__img--wrapper">
                  <img src="./assets/cp.png" alt="React Logo"
                    class="language__img" />
                </figure>
                <span class="language__name">C</span>
              </div>



            </div>
          </div>
        </div>
      </section>
      <section id="projects">
        <div class="container">
          <div class="row">
            <h1 class="section__title">Here are some of my <span class="text--purple">projects</span></h1>
            <ul class="project__list">
              <li class="project">
                <div class="project__wrapper">
                  <img src="./assets/ED.png" class="project__img" alt="Car subscription project">
                  <div class="project__description">
                    <h3 class="project__description--title">Education agent</h3>
                    <h4 class="project__description--sub-title">
                      Html, CSS, Bootstrap , PHP, Mysql 
                    </h4>
                    <p class="project__description--para">
                      I built this website for the client in my first year at the university and used pure PHP programming language for the back-end, and for the database I used MySQL. For the front-end, I have used the Bootstrap framework, and HTML5 & CSS.  
                    </p>
                    <div class="project__description--links">
                     
                      <a href="https://education-ftc.com/" class="project__description--link">
                        <i class="fas fa-link"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </li>
              <li class="project">
                <div class="project__wrapper">
                  <img src="./assets/assim.png" class="project__img" alt="Car subscription project">
                  <div class="project__description">
                    <h3 class="project__description--title">Assignment I did it in my second year at university</h3>
                    <h4 class="project__description--sub-title">
                      Html, CSS, Bootstrap, JavaScript, PHP, Mysql,Jquery , Ajax,  
                    </h4>
                    <p class="project__description--para">
                      I had to develop this website to prove my knowledge of website and mobile application development subject in my second year. In my second year at the university, I learned JavaScript and how to use Ajax and Jquery.  
                    </p>
                    <div class="project__description--links">
                      <a href="https://www.github.com/" target="_blank" class="project__description--link">
                        <i class="fab fa-github"></i>
                      </a>
                      
                      </a>
                    </div>
                  </div>
                </div>
              </li>
              
              

            </ul>
          </div>
        </div>
      </section>
      <footer>
        <div class="row footer__row">
          <a href="#" class="footer__anchor">
            <figure class="footer__logo">
              <img src="./assets/lllog.png" class="footer__logo--img" alt="">
            </figure>
            <span class="footer__logo--popper">
              Top
              <i class="fas fa-arrow-up"></i>
            </span>
          </a>
          <div class="footer__social--list">
            <a href="https://google.com" target="_blank" class="
              footer__social--link
              link__hover-effect
              link__hover-effect--white
            " target="_blank">GitHub</a>
            <a href="https://google.com" target="_blank" class="
              footer__social--link
              link__hover-effect
              link__hover-effect--white
            " target="_blank">LinkedIn</a>
            <a href="mailto:musasaleih@email.com" target="_blank" class="
              footer__social--link
              link__hover-effect
              link__hover-effect--white
            " target="_blank">Email</a>
            <a href="" target="_blank" class="
              footer__social--link
              link__hover-effect
              link__hover-effect--white
            " target="_blank">Resume</a>
          </div>
          <div class="footer__copyright">Copyright © 2022 Musa Salih</div>
        </div>
      </footer>
    </body>
</html>