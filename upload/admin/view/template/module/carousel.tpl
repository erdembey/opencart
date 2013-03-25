<?php echo $header; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-error"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><i class="icon-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div class="buttons"><a onclick="$('#form').submit();" class="btn"><i class="icon-ok"></i> <?php echo $button_save; ?></a> <a href="<?php echo $cancel; ?>" class="btn"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a></div>
        <table id="module" class="table">
          <thead>
            <tr>
              <td class="left"><?php echo $entry_banner; ?></td>
              <td class="left"><?php echo $entry_limit; ?></td>
	      <td class="left"><?php echo $entry_auto; ?></td>
              <td class="left"><?php echo $entry_scroll; ?></td>
	      <td class="left"><?php echo $entry_wrap; ?></td>
              <td class="left"><?php echo $entry_image; ?></td>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
              <td class="right"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <?php $module_row = 0; ?>
            <?php foreach ($modules as $module) { ?>
            <tr id="module-row<?php echo $module_row; ?>">
              <td class="left"><select name="carousel_module[<?php echo $module_row; ?>][banner_id]">
                  <?php foreach ($banners as $banner) { ?>
                  <?php if ($banner['banner_id'] == $module['banner_id']) { ?>
                  <option value="<?php echo $banner['banner_id']; ?>" selected="selected"><?php echo $banner['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $banner['banner_id']; ?>"><?php echo $banner['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="left"><input type="text" name="carousel_module[<?php echo $module_row; ?>][limit]" value="<?php echo $module['limit']; ?>" size="1" /></td>
	      <td class="left"><input type="text" name="carousel_module[<?php echo $module_row; ?>][auto]" value="<?php echo $module['auto']; ?>" size="3" /></td>
              <td class="left"><input type="text" name="carousel_module[<?php echo $module_row; ?>][scroll]" value="<?php echo $module['scroll']; ?>" size="3" /></td>
	      <td class="left">
	      	<select name="carousel_module[<?php echo $module_row; ?>][cwrap]">
			<?php if ($module['cwrap'] == 'null') { ?>
			<option value="null" selected="selected">null</option>
			<?php } else { ?>
			<option value="null">null</option>
			<?php } ?>
			<?php if ($module['cwrap'] == 'circular') { ?>
			<option value="circular" selected="selected">circular</option>
			<?php } else { ?>
			<option value="circular">circular</option>
			<?php } ?>
			<?php if ($module['cwrap'] == 'first') { ?>
			<option value="first" selected="selected">first</option>
			<?php } else { ?>
			<option value="first">first</option>
			<?php } ?>
			<?php if ($module['cwrap'] == 'last') { ?>
			<option value="last" selected="selected">last</option>
			<?php } else { ?>
			<option value="last">last</option>
			<?php } ?>
		  </select>
	      </td>
              <td class="left"><input type="text" name="carousel_module[<?php echo $module_row; ?>][width]" value="<?php echo $module['width']; ?>" size="3" />
                <input type="text" name="carousel_module[<?php echo $module_row; ?>][height]" value="<?php echo $module['height']; ?>" size="3" />
                <?php if (isset($error_image[$module_row])) { ?>
                <span class="error"><?php echo $error_image[$module_row]; ?></span>
                <?php } ?></td>
              <td class="left"><select name="carousel_module[<?php echo $module_row; ?>][layout_id]">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="carousel_module[<?php echo $module_row; ?>][position]">
                  <?php if ($module['position'] == 'content_top') { ?>
                  <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                  <?php } else { ?>
                  <option value="content_top"><?php echo $text_content_top; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'content_bottom') { ?>
                  <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                  <?php } else { ?>
                  <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                  <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                  <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="carousel_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
              <td class="right"><input type="text" name="carousel_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
              <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="btn"><i class="icon-minus-sign"></i> <?php echo $button_remove; ?></a></td>
            </tr>
            <?php $module_row++; ?>
            <?php } ?>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="10"></td>
              <td class="left"><a onclick="addModule();" class="btn"><i class="icon-plus-sign"></i> <?php echo $button_add_module; ?></a></td>
            </tr>
          </tfoot>
        </table>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tr id="module-row' + module_row + '">';
	html += '  <td class="left"><select name="carousel_module[' + module_row + '][banner_id]">';
	<?php foreach ($banners as $banner) { ?>
	html += '    <option value="<?php echo $banner['banner_id']; ?>"><?php echo addslashes($banner['name']); ?></option>';
	<?php } ?>
	html += '  </select></td>';	
	html += '  <td class="left"><input type="text" name="carousel_module[' + module_row + '][limit]" value="5" size="1" /></td>';
	html += '    <td class="left"><input type="text" name="carousel_module[' + module_row + '][auto]" value="0" size="1" /></td>';
	html += '  <td class="left"><input type="text" name="carousel_module[' + module_row + '][scroll]" value="3" size="1" /></td>';
	html += '    <td class="left"><select name="carousel_module[' + module_row + '][cwrap]">';
	html += '      <option value="null">null</option>';
	html += '      <option value="circular">circular</option>';
	html += '      <option value="first">first</option>';
	html += '      <option value="last">last</option>';
	html += '    </select></td>';
	html += '  <td class="left"><input type="text" name="carousel_module[' + module_row + '][width]" value="80" size="3" /> <input type="text" name="carousel_module[' + module_row + '][height]" value="80" size="3" /></td>'; 
	html += '  <td class="left"><select name="carousel_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '    <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '  </select></td>';	
	html += '  <td class="left"><select name="carousel_module[' + module_row + '][position]">';
	html += '    <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '    <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '    <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '    <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '  </select></td>';
	html += '  <td class="left"><select name="carousel_module[' + module_row + '][status]">';
    html += '    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '    <option value="0"><?php echo $text_disabled; ?></option>';
    html += '  </select></td>';
	html += '  <td class="right"><input type="text" name="carousel_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '  <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="btn"><i class="icon-minus-sign"></i> <?php echo $button_remove; ?></a></td>';
	html += '</tr>';
	
	$('#module tbody').append(html);
	
	module_row++;
}
//--></script> 
<?php echo $footer; ?>