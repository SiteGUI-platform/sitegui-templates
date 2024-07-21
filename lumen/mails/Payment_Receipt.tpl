<!doctype html>
<html>
<head>
    <title>Payment Receipt</title>
</head>    
<body bgcolor="#f5f5f5">
  <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" role="presentation" style="margin: 0 auto;">
    <tbody>
      <tr>
        <td align="left" valign="top" style="padding: 0;">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
            <tbody>
              <tr>
                <td height="20" style="font-size: 1px; line-height: 1px;">&nbsp;</td>
              </tr>
            </tbody>
          </table>
          {block name="header"}  
          <!-- BEGIN MODULE: Menu 1 -->
          <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
            <tbody>
              <tr>
                <td bgcolor="#f5f5f5" valign="top" style="padding: 0px; background-color: #f5f5f5; border-radius: 8px">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                    <tbody>
                      <tr>
                        <td align="center" valign="top" style="padding: 10px;">
                          <a href="https://{$site.url}" style="text-decoration: none;"><img src="{$site.logo}" height="49" alt="" style="height: auto; max-width: 100%; border: 0; line-height: 100%; outline: 0; -ms-interpolation-mode: bicubic; color: #ffffff; font-size: 14px;"></a>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>
            </tbody>
          </table>
          <!-- END MODULE: Menu 1 -->
          {/block}  
          {block name="content"}
          <!-- BEGIN MODULE: Transactional 1 -->
          <table width="100%" border="0" cellspacing="0" cellpadding="0" role="presentation">
            <tbody>
              <tr>
                <td height="0" style="font-size: 1px; line-height: 1px;">&nbsp;</td>
              </tr>
            </tbody>
          </table>
          <table border="0" cellpadding="0" cellspacing="0" role="presentation" width="100%">
            <tbody>
              <tr>
                <td style="padding: 20px; background: #ffffff; border-radius: 8px" bgcolor="#ffffff" valign="top">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
                    <tbody>
                      <tr>
                        <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 600; line-height: 46px; letter-spacing: -0.6px; color: #151515; padding: 0" valign="top">
                          Payment Receipt #{$data.series}. Paid Date: {$data.paid_date|date_format}
                        </td>
                      </tr>
                      <tr>
                        <td height="15" style="line-height: 1px; font-size: 1px">&nbsp;</td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 30px; letter-spacing: -0.2px; color: #777777; padding: 0" valign="top">
                          Hello {$data.recipient},<br>
                          This is a receipt for your recent payment.
                        </td>
                      </tr>
                      <tr>
                        <td height="25" style="line-height: 1px; font-size: 1px;">&nbsp;</td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>  
                        <td>
                          <table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
                            <tbody>                              
                              <tr>
		                            <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 17px; line-height: 30px; letter-spacing: -0.2px; color: #777777; padding: 0" valign="top">
    															<table border="0" cellpadding="0" cellspacing="0" role="presentation" width="100%">
    		                            <tbody>
    		                              <tr>
    		                                <th style="letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; padding: 10px 10px 10px 0; border-bottom: 1px solid #E5E5E5; width: 90%; color: #151515;" align="left">
    		                                  Item
    		                                </th>
    		                                <th style="letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; border-bottom: 1px solid #E5E5E5; padding: 10px 0; width: 60px; color: #151515;" align="right">
    		                                  Amount
    		                                </th>
    		                              </tr>
    		                              <tr>
    		                                <td colspan="4" height="0" style="font-size: 1px; line-height: 1px;">&nbsp;</td>
    		                              </tr>
    		                            </tbody>
    		                            <tbody>
    		                              {foreach $data.lines AS $line}		
    		                              <tr>
    		                                <td style="padding: 20px 20px 20px 0; font-size: 16px; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; border-bottom: 1px solid #E5E5E5;" valign="top">
    		                                  {$line.name} {if $line.to}({$line.from|date_format} - {$line.to|date_format}){/if}
                                        </td>
    		                                <td style="padding: 20px 0 20px; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; border-bottom: 1px solid #E5E5E5; color: #151515;" valign="top" align="right">
    		                                  {$data.currency.prefix}{$line.amount}{$data.currency.suffix}
    		                                </td>
    		                              </tr>
    		                              {/foreach} 
                                      <tr>
    		                                <td style="padding: 20px 20px 10px 0; font-size: 16px; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif;" valign="top" align="right">
    		                                  SubTotal
    		                                </td>
    		                                <td style="padding: 20px 0px 10px 0; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; color: #151515;" valign="top" align="right">
    		                                  {$data.currency.prefix}{$data.subtotal}{$data.currency.suffix}
    		                                </td>
    		                              </tr>
    		                              {foreach $data.taxes AS $tax}
    		                              <tr>
    		                                <td style="padding: 10px 20px 10px 0; color: #9B9B9B; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px;" valign="top" align="right">
    		                                  {if $tax.name}{$tax.name}{else}{"Tax"|trans} <span class="js-percentage short">{$tax.rate}%</span>{/if} 
    		                                </td>
    		                                <td style="padding: 10px 0; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; color: #151515;" valign="top" align="right">
    		                                  {$data.currency.prefix}{$tax.amount -0}{$data.currency.suffix}
    		                                </td>
    		                              </tr>
    		                              {/foreach}
    		                              <tr>
    		                                <td style="padding: 10px 20px 10px 0; color: #9B9B9B; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px;" valign="top" align="right">
    		                                  Total
    		                                </td>
    		                                <td style="padding: 10px 0; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; color: #151515;" valign="top" align="right">
    		                                  {$data.currency.prefix}{$data.total -0}{$data.currency.suffix}
    		                                </td>
    		                              </tr>
                                      <tr>
                                        <td style="padding: 10px 20px 10px 0; color: #9B9B9B; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px;" valign="top" align="right">
                                          Paid - {$data.payment_method} ({if $data.credit}{"Credit"|trans} {/if}{$data.transactions.0.payment_id})
                                        </td>
                                        <td style="padding: 10px 0; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; color: #151515;" valign="top" align="right">
                                          {$data.currency.prefix}{$data.total - $data.amount_due}{$data.currency.suffix}
                                        </td>
                                      </tr>
                                      <tr>
                                        <td style="padding: 10px 20px 10px 0; color: #9B9B9B; letter-spacing: -0.2px; line-height: 26px; font-weight:600; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px;" valign="top" align="right">
                                          Balance Due
                                        </td>
                                        <td style="padding: 10px 0; letter-spacing: -0.2px; line-height: 26px; font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; color: #151515;" valign="top" align="right">
                                          {$data.currency.prefix}{$data.amount_due -0}{$data.currency.suffix}
                                        </td>
                                      </tr>
    		                            </tbody>
    		                          </table>                               

                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                            <tbody>
                              <tr>
                                <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 30px; letter-spacing: -0.2px; color: #777777; padding: 0" valign="top">
                                </td>
                              </tr>
                              <tr>
                                <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 30px; letter-spacing: -0.2px; color: #777777; padding: 0" valign="top">
                                  If you have any questions about your payment or need any assistance, please don't hesitate to contact us at our <a href="{$data.account_center}/invoice" style="text-decoration: none;">Account Center</a>.
                                </td>
                              </tr>
                              <tr>
                                <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 30px; letter-spacing: -0.2px; color: #777777; padding: 0" valign="top">
                                  We appreciate your business!
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </td>  
                      </tr>
                    </tbody>
                    {if $data.signature}
                    <tbody>
                      <tr>
                        <td height="25" style="line-height: 1px; font-size: 1px;">&nbsp;</td>
                      </tr>
                      <tr>
                        <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 17px; line-height: 30px; letter-spacing: -0.2px; color: #777777; padding: 0" valign="top">
                          {$data.signature}
                        </td>
                      </tr>
                    </tbody>
                    {/if}
                  </table>
                </td>
              </tr>
            </tbody>
          </table>
          <!-- END MODULE: Transactional 1 -->
          {/block}  
          {block name="footer"}
          <!-- BEGIN MODULE: Footer 1 -->
          <table width="100%" border="0" cellspacing="0" cellpadding="0" role="presentation">
            <tbody>
              <tr>
                <td height="8" style="font-size: 1px; line-height: 1px;">&nbsp;</td>
              </tr>
            </tbody>
          </table>
          <table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
            <tbody>
              <tr>
                <td style="padding: 10px 0px; background-color: #f5f5f5; border-radius: 8px" valign="top" bgcolor="#f5f5f5" role="presentation">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
                    <tbody>
                      <tr>
                        <td style="font-size: 0;" valign="top">
                          <!--[if (gte mso 9)|(IE)]><table width="100%" border="0" cellspacing="0" cellpadding="0" role="presentation"><tr><td width="280" valign="top"><![endif]-->
                          <div style="display: inline-block; width: 50%; vertical-align: top;">
                            <table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
                              <tbody>
                                <tr>
                                  <td style="padding: 20px;" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
                                      <tbody>
                                        <tr>
                                          <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 500; line-height: 18px; letter-spacing: -0.2px; color: #000000" valign="top">
                                            Follow Us
                                          </td>
                                        </tr>
                                        <tr>
                                          <td height="11" style="line-height: 1px; font-size: 1px;">&nbsp;</td>
                                        </tr>
                                      </tbody>
                                      <tbody>
                                        <tr>
                                          <td style="font-family: Arial, sans-serif; font-size: 19px;" valign="top">
                                            {if $site.social.facebook}
                                            <a href="https://facebook.com/{$site.social.facebook}" style="text-decoration: none;"><img src="https://cdn.sitegui.com/public/uploads/global/img/facebook.png" alt="" style="border: 0; line-height: 100%; outline: 0; -ms-interpolation-mode: bicubic; color: #ffffff;"></a>
                                            <span>&nbsp;&nbsp;</span>
                                            {/if}
                                            {if $site.social.youtube}
                                            <a href="https://www.youtube.com/@{$site.social.youtube}" style="text-decoration: none;"><img src="https://cdn.sitegui.com/public/uploads/global/img/youtube.png" alt="" style="border: 0; line-height: 100%; outline: 0; -ms-interpolation-mode: bicubic; color: #ffffff;"></a>
                                            <span>&nbsp;&nbsp;</span>
                                            {/if}
                                            {if $site.social.instagram}
                                            <a href="https://instagram.com/{$site.social.instagram}" style="text-decoration: none;"><img src="https://cdn.sitegui.com/public/uploads/global/img/instagram.png" alt="" style="border: 0; line-height: 100%; outline: 0; -ms-interpolation-mode: bicubic; color: #ffffff;"></a>
                                            <span>&nbsp;&nbsp;</span>
                                            {/if}
                                            {if $site.social.tiktok}
                                            <a href="https://tiktok.com/@{$site.social.tiktok}" style="text-decoration: none;"><img src="https://cdn.sitegui.com/public/uploads/global/img/tiktok.png" alt="" style="border: 0; line-height: 100%; outline: 0; -ms-interpolation-mode: bicubic; color: #ffffff;"></a>
                                            <span>&nbsp;&nbsp;</span>
                                            {/if}
                                            {if $site.social.twitter}
                                            <a href="https://twitter.com/{$site.social.twitter}" style="text-decoration: none;"><img src="https://cdn.sitegui.com/public/uploads/global/img/twitter-x.png" alt="" style="border: 0; line-height: 100%; outline: 0; -ms-interpolation-mode: bicubic; color: #ffffff;"></a>
                                            <span>&nbsp;&nbsp;</span>
                                            {/if}
                                            {if $site.social.linkedin}
                                            <a href="https://linkedin.com/company/{$site.social.linkedin}" style="text-decoration: none;"><img src="https://cdn.sitegui.com/public/uploads/global/img/linkedin.png" alt="" style="border: 0; line-height: 100%; outline: 0; -ms-interpolation-mode: bicubic; color: #ffffff;"></a>
                                            <span>&nbsp;&nbsp;</span>
                                            {/if}
                                          </td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                         <!--[if (gte mso 9)|(IE)]></td><td width="280" valign="top"><![endif]-->
                          <div style="display: inline-block; width: 50%; vertical-align: top">
                            <table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
                              <tbody>
                                <tr>
                                  <td style="padding: 20px;" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
                                      <tbody>
                                        <tr>
                                          <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 500; line-height: 24px;" valign="top" align="">
                                            <img src="https://cdn.sitegui.com/public/uploads/global/img/house-lock.png" alt="" style="border: 0; line-height: 100%; outline: 0; vertical-align:text-bottom;"><span>&nbsp;&nbsp;</span>
                                            <a href="https://{$site.account_url}/account" style="text-decoration: none; color: #1595E7;">Account Center</a>
                                          </td>
                                        </tr>
                                      </tbody>
                                      {if $site.social.phone}
                                      <tbody>
                                        <tr>
                                          <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 500; line-height: 24px;" valign="top" align="">
                                            <img src="https://cdn.sitegui.com/public/uploads/global/img/phone.png" alt="" style="border: 0; line-height: 100%; outline: 0; vertical-align:text-bottom;"><span>&nbsp;&nbsp;</span>
                                            <a href="tel:{$site.social.phone}" style="text-decoration: none; color: #1595E7;">{$site.social.phone}</a>
                                          </td>
                                        </tr>
                                      </tbody>
                                      {/if}
                                      {if $site.social.email}
                                      <tbody>
                                        <tr>
                                          <td style="font-family: 'Fira Sans', Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 500; line-height: 24px;" valign="top" align="">
                                            <img src="https://cdn.sitegui.com/public/uploads/global/img/email.png" alt="" style="border: 0; line-height: 100%; outline: 0; vertical-align:text-bottom;"><span>&nbsp;&nbsp;</span>
                                            <a href="mailto:{$site.social.email}" style="text-decoration: none; color: #1595E7;">{$site.social.email}</a>
                                          </td>
                                        </tr>
                                      </tbody>
                                      {/if}
                                    </table>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div> 
                          <!--[if (gte mso 9)|(IE)]></td></tr></table><![endif]-->                        
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>
            </tbody>
          </table>
          <!-- END MODULE: Footer 1 -->
          {/block} 
 
          <table width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation">
            <tbody>
              <tr>
                <td height="20" style="font-size: 1px; line-height: 1px;">&nbsp;</td>
              </tr>
            </tbody>
          </table>
        </td>
      </tr>
    </tbody>
  </table>
  </body>