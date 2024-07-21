{$data.content = "Your order #{$data.id} has been updated. Order Status: {$data.status}.
	{if $data.tracking_labels}
		<br>Shipping: {$data.meta.cart.shipping_methods.0.name}
		<br>Tracking Number(s): {$data.tracking_labels}
	{/if}
"}

{include "base.tpl"}