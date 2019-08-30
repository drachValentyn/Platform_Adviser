<template>
    <transition name="modal-fade">
        <div class="modal-backdrop" role="dialog">
            <div class="modal" ref="modal">
                <header class="modal-header">
                    <slot name="header">
                        <button type="button"
                                class="btn-close btn-right" @click="closeModal" aria-label="Close modal">
                        </button>
                        <h2 class="modal-header-title">
                            Share link with this results
                        </h2>


                    </slot>
                </header>

                <section class="modal-body">
                    <slot name="body">
                        <!--<i class="ttt" id="howToCopyClipboard" @click="copyToClipboard()">Press me</i>-->
                        <!--<div class="blue">-->
                        <!--<input id="rrr" name="exampleClipboard" placeholder="Insert the text you want to copy"-->
                        <!--value="Example text"-->
                        <!--&lt;!&ndash;v-bind:value="response"&ndash;&gt;-->

                        <!--tabindex="1" autocomplete="off" maxlength="240"-->
                        <!--style="width:200px" type="text">-->
                        <!--<p>-->
                        <!--&lt;!&ndash;<button id="copy">&ndash;&gt;-->
                        <!--&lt;!&ndash;Copy text&ndash;&gt;-->
                        <!--&lt;!&ndash;</button>&ndash;&gt;-->
                        <!--</p>-->
                        <!--<p>-->
                        <!--Right click paste or Ctr + v after click Copytext button <br/>-->
                        <!--<textarea class="bord"></textarea>-->
                        <!--</p>-->
                        <!--&lt;!&ndash;<button id="howToCopyClipboard" @click="copyToClipboard()">Copy</button>&ndash;&gt;-->
                        <!--</div>-->
                        <social-sharing inline-template
                                        :url="url"
                                        @copy="copyToClipboard"
                                        :title="shareInfo.title"
                                        :description="shareInfo.title"
                                        :quote="shareInfo.title"
                                        :networks="{copyingLinkText:copyingLinkText}"
                                        v-cloak>

                        <!--<social-sharing :url="shareInfo.url"-->
                                        <!--:title="shareInfo.title"-->
                                        <!--:description="shareInfo.title"-->
                                        <!--:quote="shareInfo.title"-->
                                        <!--v-cloak-->
                            <!--inline-template>-->
                            <div class="sharing-block">
                                <input id="ourUrl" :value="url" :style="{opacity: 0, position: 'absolute', zIndex: -1}"/>
                                <!--<network network="link">-->
                                <div class="tooltip tooltip-left sharing-item" :data-description="networks.copyingLinkText" @click="$emit('copy')">
                                    <i class="ic-link"></i>
                                </div>
                                <!--</network>-->


                                <div class="tooltip tooltip-centre sharing-item" data-description="Send email!">
                                    <network network="email">
                                        <i class="ic-email"></i>
                                    </network>
                                </div>

                                <network network="facebook" class="sharing-item">
                                    <i class="ic-facebook"></i>
                                </network>

                                <network network="twitter" class="sharing-item">
                                    <i class="ic-twitter"></i>
                                </network>

                                <network network="linkedin" class="sharing-item">
                                    <i class="ic-linkedin"></i>
                                </network>

                            </div>
                        </social-sharing>
                    </slot>
                </section>

                <footer class="modal-footer">
                    <slot name="footer">

                    </slot>
                </footer>
            </div>
        </div>
    </transition>
</template>
<script>

  export default {
    name: "Modal",
    data() {

      return {
          isModalVisible: false,
          copyingLinkText: 'Copy link!'
      }
    },

      props: {
          shareData: String,
          url: String,
          closeModal: Function,
          shareInfo: Object,
      },

      mounted(){

        console.log('shareInfo')
        console.log(this.shareInfo)
        // this.shareInfo = this.shareData;
        // console.log('url');
        // console.log(this.url)
      },

    methods: {
      // close(event) {
      //   this.$emit('close');
      // },
      // showModal() {
      //   this.isModalVisible = true;
      // },
      // closeModal() {
      //   this.isModalVisible = false;
      // },
      copyToClipboard(event) {

          var copyText = document.getElementById("ourUrl");
          copyText.select();
          document.execCommand("copy");

          this.copyingLinkText = 'Link copied!';

          console.log('copyText')
          console.log(copyText)

          setTimeout(()=>{
              this.copyingLinkText = 'Copy link!';
          }, 500)
      }
    },

      components: {
        //   SocialSharing: {
        //     props:['copyingLinkText', 'url']
        // }
      }
  }
</script>
