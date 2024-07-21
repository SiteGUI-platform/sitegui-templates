{$data.content = "Đơn hàng #{$data.id} đã thay đổi trạng thái. Trạng thái mới: {$data.status|trans}.
	{if $data.tracking_labels}
		<br>Vận chuyển: {$data.meta.cart.shipping_methods.0.name}
		<br>Mã vận đơn: {$data.tracking_labels}
	{/if}
"}

{include "base.tpl"}