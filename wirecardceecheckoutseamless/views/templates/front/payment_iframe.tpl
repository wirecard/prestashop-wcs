{*
 * Shop System Plugins - Terms of Use
 *
 * The plugins offered are provided free of charge by Wirecard Central Eastern Europe GmbH
 * (abbreviated to Wirecard CEE) and are explicitly not part of the Wirecard CEE range of
 * products and services.
 *
 * They have been tested and approved for full functionality in the standard configuration
 * (status on delivery) of the corresponding shop system. They are under General Public
 * License Version 2 (GPLv2) and can be used, developed and passed on to third parties under
 * the same terms.
 *
 * However, Wirecard CEE does not provide any guarantee or accept any liability for any errors
 * occurring when used in an enhanced, customized shop system configuration.
 *
 * Operation in an enhanced, customized configuration is at your own risk and requires a
 * comprehensive test phase by the user of the plugin.
 *
 * Customers use the plugins at their own risk. Wirecard CEE does not guarantee their full
 * functionality neither does Wirecard CEE assume liability for any disadvantages related to
 * the use of the plugins. Additionally, Wirecard CEE does not guarantee the full functionality
 * for customized shop systems or installed plugins of other vendors of plugins within the same
 * shop system.
 *
 * Customers are responsible for testing the plugin's functionality before starting productive
 * operation.
 *
 * By installing the plugin into the shop system the customer agrees to these terms of use.
 * Please do not use the plugin if you do not agree to these terms of use!
 *}

{extends file='page.tpl'}
{block name='content'}

  <section id="content">
    <div class="card card-block">
      <div class="row">
        <div class="col-xs-12">

          {if isset($nbProducts) && $nbProducts <= 0}
            <p class="alert alert-warning">{l s='Your shopping cart is empty.' mod='wirecardceecheckoutseamless'}</p>
          {else}
            <p class="cart_navigation clearfix" id="cart_navigation">
              <a href="{url}order" class="button-exclusive btn btn-default">
                <i class="icon-chevron-left"></i>{l s='Other payment methods' mod='wirecardceecheckoutseamless'}
              </a>
              <a id="wcsIframeBox" class="button-exclusive btn btn-default" href="{$redirectUrl|escape:'htmlall':'UTF-8'}" data-toggle="modal" data-target="#paymentWcsModal" title="{l s='Wirecard Checkout Seamless payment' mod='wirecardceecheckoutseamless'}">Open iFrame Modal</a>
            </p>
          {/if}
        </div>
      </div>
    </div>
  </section>

  <div class="modal fade" id="paymentWcsModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-body">
          <iframe width="100%" height="600px" frameborder="0"></iframe>
        </div>
      </div>
    </div>
  </div>

  <script>
    window.onload = function() {
      showPaymentModal('{$redirectUrl|escape:'htmlall':'UTF-8'}');
    }
  </script>

{/block}
