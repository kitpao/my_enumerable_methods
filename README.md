
<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h2 align="center"> Enumerable methods </h2>
  <p align="center">
    Project developed with Ruby. The objective is to rebuild commonly used iterators methods.
    <br />
    <a href="https://github.com/kitpao/my_enumerable_methods"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/kitpao/my_enumerable_methods">View Demo</a>
    ·
    <a href="https://github.com/kitpao/my_enumerable_methods/issues">Report Bug</a>
    ·
    <a href="https://github.com/kitpao/my_enumerable_methods/issues">Request Feature</a>
  </p>
</p>

## Table of Contents
* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)
<!-- ABOUT THE PROJECT -->

## About The Project
<small>(Click on the image to play with the code! See instructions in [Usage](#usage))</small>
[![Product Name Screen Shot][product-screenshot]](http://gitpod.io/github.com/kitpao/my_enumerable_methods/tree/feature/my_methods_feature)

In this project we rebuild the following iterator methods used in the enumerator module:
* #each -> #my_each
* #each_with_index -> #my_each_with_index
* #select -> #my_select
* #all? -> #my_all?
* #any? -> #my_any?
* #none? -> #my_none?
* #count -> #my_count
* #map -> #my_map
* #inject -> #my_inject
* Test #my_inject by creating a method called #multiply_els which multiplies all the elements of the array together by using #my_inject, e.g. multiply_els([2,4,5]) #=> 40
* Modify #my_map method to take a proc instead.
* Modify #my_map method to take either a proc or a block. If both are given, preference to the proc.

### Built With
The project was developed using the following technologies:
- [RUBY](https://www.ruby-lang.org/es/)
- [RUBOCOP LINTERN](https://github.com/microverseinc/linters-config/tree/master/ruby)

## Usage

Click on the image at the top or in the following [link](http://gitpod.io/github.com/kitpao/my_enumerable_methods/tree/feature/my_methods_feature),

In the left panel, select "my_methods.rb"

You can try any method in the [About the Project](#about-the-project) section. A fast way to do this is by typing at the end of the document (line 131) in the following format: `puts argument.this_method {provide_block_if required}`
  * for example `puts [10, 19, 18].none? { |num| num>4} `
  
Click on the console and type ruby `my_methods.rb` and hit enter

You will get the result at the end of the console

## Roadmap

See the [open issues](https://github.com/kitpao/my_enumerable_methods/issues) for a list of proposed features (and known issues).

## Contact
<p align="center">

  Project Link: [https://github.com/kitpao/my_enumerable_methods](https://github.com/kitpao/my_enumerable_methods)

<p align="center">
  
  Kitzia Paola Vidal Marroquin - [Github user: kitpao](https://github.com/kitpao)
</p>
<p align="center" style="display: flex; justify-content: center; align-items: center;">
    <a target="_blank" href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=kitpao91@gmail.com">
      kitpao91@gmail.com
    </a> &nbsp; |
    <a target="_blank" href="https://github.com/kitpao/Personal_Projects">
        Portfolio
    </a> &nbsp; |
    <a target="_blank" href="https://www.linkedin.com/in/kitzia-paola-vidal/">
      LinkedIn
    </a> &nbsp; |
    <a target="_blank" href="https://twitter.com/Kitpao1">
      Twitter
    </a>
</p>

## Acknowledgements
- [Microverse curriculum basic Ruby section](https://www.microverse.org/?grsf=6ns691)
- [The Odin project: Advanced Building Blocks](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks)

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/kitpao/my_enumerable_methods.svg?style=flat-square
[contributors-url]: https://github.com/kitpao/my_enumerable_methods/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/kitpao/my_enumerable_methods.svg?style=flat-square
[forks-url]: https://github.com/kitpao/my_enumerable_methods/network/members
[stars-shield]: https://img.shields.io/github/stars/kitpao/my_enumerable_methods.svg?style=flat-square
[stars-url]: https://github.com/kitpao/my_enumerable_methods/stargazers
[issues-shield]: https://img.shields.io/github/issues/kitpao/my_enumerable_methods.svg?style=flat-square
[issues-url]: https://github.com/kitpao/my_enumerable_methods/issues
[license-shield]: https://img.shields.io/github/license/kitpao/my_enumerable_methods.svg?style=flat-square
[license-url]: https://github.com/kitpao/my_enumerable_methods/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/kitzia-paola-vidal/
[product-screenshot]: project-screenshot.png
