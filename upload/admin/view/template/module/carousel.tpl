<?php echo $header; ?>
<div id="content" class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="icon-exclamation-sign"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="panel panel-default">
    <div class="panel-heading">
      <div class="pull-right">
        <button type="submit" form="form-carousel" class="btn btn-primary"><i class="icon-ok"></i> <?php echo $button_save; ?></button>
        <a href="<?php echo $cancel; ?>" class="btn btn-danger"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a></div>
      <h1 class="panel-title"><i class="icon-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-carousel">
        <table id="module" class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-left"><?php echo $entry_banner; ?></td>
              <td class="text-left"><?php echo $entry_limit; ?></td>
	      <td class="text-left"><?php echo $entry_auto; ?></td>
              <td class="text-left"><?php echo $entry_scroll; ?></td>
	      <td class="text-left"><?php echo $entry_wrap; ?></td>
              <td class="text-left"><?php echo $entry_image; ?></td>
              <td class="text-left"><?php echo $entry_layout; ?></td>
              <td class="text-left"><?php echo $entry_position; ?></td>
              <td class="text-left"><?php echo $entry_status; ?></td>
              <td class="text-right"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <?php $module_row = 0; ?>
            <?php foreach ($modules as $module) { ?>
            <tr id="module-row<?php echo $module_row; ?>">
              <td class="text-left"><select name="carousel_module[<?php echo $module_row; ?>][banner_id]" class="form-control">
                  <?php foreach ($banners as $banner) { ?>
                  <?php if ($banner['banner_id'] == $module['banner_id']) { ?>
                  <option value="<?php echo $banner['banner_id']; ?>" selected="selected"><?php echo $banner['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $banner['banner_id']; ?>"><?php echo $banner['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="text-left"><input type="text" name="carousel_module[<?php echo $module_row; ?>][limit]" value="<?php echo $module['limit']; ?>" placeholder="<?php echo $entry_limit; ?>" class="form-control" /></td>
	      <td class="text-left"><input type="text" name="carousel_module[<?php echo $module_row; ?>][auto]" value="<?php echo $module['auto']; ?>" size="3" /></td>
              <td class="text-left"><input type="text" name="carousel_module[<?php echo $module_row; ?>][scroll]" value="<?php echo $module['scroll']; ?>" placeholder="<?php echo $entry_scroll; ?>" class="form-control" /></td>
	      <td class="text-left">
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
              <td class="text-left"><input type="text" name="carousel_module[<?php echo $module_row; ?>][width]" value="<?php echo $module['width']; ?>" placeholder="<?php echo $entry_width; ?>" class="form-control" />
                <input type="text" name="carousel_module[<?php echo $module_row; ?>][height]" value="<?php echo $module['height']; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
                <?php if (isset($error_image[$module_row])) { ?>
                <div class="text-danger"><?php echo $error_image[$module_row]; ?></div>
                <?php } ?></td>
              <td class="text-left"><select name="carousel_module[<?php echo $module_row; ?>][layout_id]" class="form-control">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="text-left"><select name="carousel_module[<?php echo $module_row; ?>][position]" class="form-control">
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
              <td class="text-left"><select name="carousel_module[<?php echo $module_row; ?>][status]" class="form-control">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
              <td class="text-right"><input type="text" name="carousel_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>
              <td class="text-left"><button type="button" onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="btn btn-danger"><i class="icon-minus-sign"></i> <?php echo $button_remove; ?></button></td>
            </tr>
            <?php $module_row++; ?>
            <?php } ?>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="10"></td>
              <td class="text-left"><button type="button" onclick="addModule();" class="btn btn-primary"><i class="icon-plus-sign"></i> <?php echo $button_add_module; ?></button></td>
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
	html += '  <td class="text-left"><select name="carousel_module[' + module_row + '][banner_id]" class="form-control">';
	<?php foreach ($banners as $banner) { ?>
	html += '    <option value="<?php echo $banner['banner_id']; ?>"><?php echo addslashes($banner['name']); ?></option>';
	<?php } ?>
	html += '  </select></td>';	
	html += '  <td class="text-left"><input type="text" name="carousel_module[' + module_row + '][limit]" value="5" placeholder="<?php echo $entry_limit; ?>" class="form-control" /></td>';
	html += '    <td class="left"><input type="text" name="carousel_module[' + module_row + '][auto]" value="0" size="1" /></td>';
	html += '  <td class="text-left"><input type="text" name="carousel_module[' + module_row + '][scroll]" value="3" placeholder="<?php echo $entry_scroll; ?>" class="form-control" /></td>';
	html += '    <td class="left"><select name="carousel_module[' + module_row + '][cwrap]">';
	html += '      <option value="null">null</option>';
	html += '      <option value="circular">circular</option>';
	html += '      <option value="first">first</option>';
	html += '      <option value="last">last</option>';
	html += '    </select></td>';
	html += '  <td class="text-left"><input type="text" name="carousel_module[' + module_row + '][width]" value="80" placeholder="<?php echo $entry_width; ?>" class="form-control" /> <input type="text" name="carousel_module[' + module_row + '][height]" placeholder="<?php echo $entry_height; ?>" value="80" class="form-control" /></td>'; 
	html += '  <td class="text-left"><select name="carousel_module[' + module_row + '][layout_id]" class="form-control">';
	<?php foreach ($layouts as $layout) { ?>
	html += '    <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '  </select></td>';	
	html += '  <td class="text-left"><select name="carousel_module[' + module_row + '][position]" class="form-control">';
	html += '    <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '    <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '    <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '    <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '  </select></td>';
	html += '  <td class="text-left"><select name="carousel_module[' + module_row + '][status]" class="form-control">';
    html += '    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '    <option value="0"><?php echo $text_disabled; ?></option>';
    html += '  </select></td>';
	html += '  <td class="text-right"><input type="text" name="carousel_module[' + module_row + '][sort_order]" value="" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#module-row' + module_row + '\').remove();" class="btn btn-danger"><i class="icon-minus-sign"></i> <?php echo $button_remove; ?></button></td>';
	html += '</tr>';
	
	$('#module tbody').append(html);
	
	module_row++;
}
//--></script> 
<?php echo $footer; ?>