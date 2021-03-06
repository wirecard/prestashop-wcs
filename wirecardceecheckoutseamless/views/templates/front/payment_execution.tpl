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
        <h1 class="page-heading">{l s='Order summary' mod='wirecardceecheckoutseamless'}</h1>

      {if isset($nbProducts) && $nbProducts <= 0}
        <p class="alert alert-warning">{l s='Your shopping cart is empty.' mod='wirecardceecheckoutseamless'}</p>
      {else}
        <form id="wirecardceecheckoutseamless_transaction" action="{url}module/wirecardceecheckoutseamless/payment?paymentType={$paymentType}&financialinstitution={$financialinstitution}&birthdate={$birthdate}" method="post">
          <div class="box">
            <h3 class="page-subheading">{l s='Wirecard Checkout Seamless payment' mod='wirecardceecheckoutseamless'}</h3>
            <p class="">
              <strong class="dark">
                {l s='You have chosen to pay with ' mod='wirecardceecheckoutseamless'}{$paymentName|escape:'htmlall':'UTF-8'}.
              </strong>
            </p>
            <p>
              - {l s='Total amount of your order:' mod='wirecardceecheckoutseamless'}
              <span id="amount" class="price">{$total|escape:'htmlall':'UTF-8'}</span>
            </p>
            <p>- {l s='Please confirm your order by clicking "Order with obligation to pay".' mod='wirecardceecheckoutseamless'}</p>
          </div>
          <p class="cart_navigation clearfix" id="cart_navigation">
            <a href="{url}?controller=order" class="button-exclusive btn btn-default">
              <i class="icon-chevron-left"></i>{l s='Other payment methods' mod='wirecardceecheckoutseamless'}
            </a>
            <button type="submit" id="pt_wirecardcheckoutseamless_pay_obligation" class="btn btn-primary">
              <span>{l s='Order with obligation to pay' mod='wirecardceecheckoutseamless'}</span>
            </button>
          </p>
        </form>

        {/if}

      </div>
    </div>
  </div>
</section>
{/block}
