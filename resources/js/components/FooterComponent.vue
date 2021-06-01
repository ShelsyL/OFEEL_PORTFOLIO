<template>
  <div id="footer-wrapper" class="dark-footer-image-bg">

      <section class="dark-wrapper">
          <div class="section-inner">
              <div class="container">
                  <div class="row">

                  <!-- GLOBAL COVERAGE  -->
                      <div class="col-md-4">
                          <div class="widget about-us-widget">
                              <h4 class="widget-title"><strong>Global</strong> Coverage</h4>
                              <p>Professionally monetize team building materials for 24/7 results. Holisticly transition corporate platforms vis-a-vis cutting-edge experiences. Dynamically strategize ubiquitous applications for premier initiatives. Interactively seize resource sucking niche markets.</p>
                          </div>
                      </div>

                    <!-- LATEST ARTICLES -->
                      <div class="col-md-4">
                          <div class="widget">
                              <h4 class="widget-title"><strong>Latest</strong> Articles</h4>
                              <div>
                                  <div class="media">
                                      <div class="pull-left">
                                          <img class="widget-img" :src="'assets/img/widget/widget1.jpg'" alt="">
                                      </div>
                                      <div class="media-body">
                                          <span class="media-heading"><a href="#">Blog Post A</a></span>
                                          <small class="muted">Posted 14 April 2015</small>
                                      </div>
                                  </div>
                                  <div class="media">
                                      <div class="pull-left">
                                          <img class="widget-img" :src="'assets/img/widget/widget2.jpg'" alt="">
                                      </div>
                                      <div class="media-body">
                                          <span class="media-heading"><a href="#">Blog Post B</a></span>
                                          <small class="muted">Posted 14 April 2015</small>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <!-- POPULAR TAGS -->
                      <div class="col-md-4">
                          <div class="widget">
                              <h4 class="widget-title">Popular Tags</h4>

                              <div class="tagcloud" v-for="tag in tags" :key="tag.id">

                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">{{ tag.name }}</a>
                                  <!-- <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">Media</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">Photogtraphy</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">Aid</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">Fashion</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">News</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">Cars</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">Global Affairs</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">Music</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">Downloads</a>
                                  <a href="#" class="tag-link btn btn-theme btn-white btn-xs smoothie" title="3 topics">MP3</a> -->
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </section>


      <footer class="white-wrapper">
          <div class="container">
              <div class="row">
                  <div class="col-md-6 text-left">
                      <ul class="list-inline social-links wow">
                          <li>
                              <a href="#"><i class="fa fa-twitter"></i></a>
                          </li>
                          <li>
                              <a href="#"><i class="fa fa-pinterest"></i></a>
                          </li>
                          <li>
                              <a href="#"><i class="fa fa-dribbble"></i></a>
                          </li>
                          <li>
                              <a href="#"><i class="fa fa-facebook"></i></a>
                          </li>
                          <li>
                              <a href="#"><i class="fa fa-behance"></i></a>
                          </li>
                          <li>
                              <a href="#"><i class="fa fa-linkedin"></i></a>
                          </li>
                      </ul>
                  </div>

                  <div class="col-md-6 text-right">
                      <span class="copyright">Copyright 2019. Designed by DISTINCTIVE THEMES</span>
                  </div>
              </div>
          </div>
      </footer>
  </div>
</template>



<script>
export default {
  computed: {
    tags () {
      let tags = this.$store.getters.getTags;
      console.log("COucouTags")
      return tags;
    }

  },
}
</script>
