<template>
  <section>
        <div class="section-inner">
            <div class="container pad-sides-120">
                <div class="row">

                  <div class="col-sm-3">
                  </div>

                    <div id="post-content" class="col-sm-9 blog-item mb60 wow">
                        <div class="row">
                            <div class="col-sm-12 single-post-content">

                                <div id="comments-list" class="gap wow">
                                    <div class="mt60 mb50 single-section-title">
                                        <h3>3 Comments</h3>
                                    </div>
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="avatar comment-avatar" src="assets/img/users/1.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="well">
                                                <div class="media-heading">
                                                    <span class="heading-font">Dave Evans</span>&nbsp; <small class="secondary-font">30th Jan, 2015</small>
                                                </div>
                                                <p>Was are delightful solicitude discovered collecting man day. Resolving neglected sir tolerably but existence conveying for. Day his put off unaffected literature partiality inhabiting.</p>
                                                <a class="btn btn-primary pull-right" href="#">Reply</a>
                                            </div>
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="avatar comment-avatar" src="assets/img/users/2.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="well">
                                                        <div class="media-heading">
                                                            <span class="heading-font">Dave Evans</span>&nbsp; <small>30th Jan, 2015</small>
                                                        </div>
                                                        <p>Wicket longer admire do barton vanity itself do in it. Preferred to sportsmen it engrossed listening. Park gate sell they west hard for the. Abode stuff noisy manor blush yet the far. Up colonel so between removed so do.</p>
                                                        <a class="btn btn-primary pull-right" href="#">Reply</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/.media-->
                                        </div>
                                    </div>
                                    <!--/.media-->
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="avatar comment-avatar" src="assets/img/users/3.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="well">
                                                <div class="media-heading">
                                                    <span class="heading-font">Dave Evans</span>&nbsp; <small>30th Jan, 2015</small>
                                                </div>
                                                <p>Quitting informed concerns can men now. Projection to or up conviction uncommonly delightful continuing. In appetite ecstatic opinions hastened by handsome admitted.</p>
                                                <a class="btn btn-primary pull-right" href="#">Reply</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/.media-->

                                    <div id="comments-form" class="row wow">
                                        <div class="col-md-12">
                                            <div class="mt60 mb50 single-section-title">
                                                <h3>Commentaires</h3>
                                            </div>
                                            <form method="post" id="commentform" class="comment-form">
                                                <input type="text" class="form-control col-md-4" name="name2" placeholder="Votre Nom | Pseudo *" id="name2" required data-validation-required-message="Please enter your name." />
                                                <!-- <input type="text" class="form-control col-md-4" name="email2" placeholder="Votre Email *" id="email2" required data-validation-required-message="Please enter your email address." /> -->
                                                <!-- <input type="text" class="form-control col-md-4" name="website2" placeholder="Your URL *" id="website2" required data-validation-required-message="Please enter your web address." /> -->
                                                <textarea name="comments2" class="form-control" id="comments2" placeholder="Votre message *" required data-validation-required-message="Please enter a message."></textarea>
                                                <a class="btn btn-primary pull-right" href="#">Envoyer</a>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
  name : 'comments-work',
}
</script>
