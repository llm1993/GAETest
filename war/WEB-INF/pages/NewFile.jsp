<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="Main">
							
	
<script type="text/javascript">    
    var isEdit = true;
    var isNewPost = true;
    var currentEditorId = 'Editor_Edit_EditorBody';
    var currentUseEditor = 3;
    var txbTitleId = 'Editor_Edit_txbTitle';
</script>
<div id="Editor_Messages">
	

</div>

<div id="Editor_Edit">
	<div id="Editor_Edit_Header" class="CollapsibleTitle">
		<span id="Editor_Edit_headerTitle">添加随笔</span>
	</div><div id="Editor_Edit_Contents">
		
    <div id="edit_container">
        <div id="edit_title">
            <b>标题</b>            
            <br>
            <input name="Editor$Edit$txbTitle" type="text" maxlength="200" id="Editor_Edit_txbTitle" onblur="localPreserver.saveDraftTitle();" onkeydown="title_keydown(event);" style="width:99%;" autocomplete="off">
        </div>
        <div id="edit_body">
            <div id="edit_body_tip">
            <b>内容</b>(TinyMCE编辑器，支持拖放/粘贴上传图片) <span id="write_hint"></span>
            </div>
            <script type="text/javascript" src="//common.cnblogs.com/editor/tiny_mce/tiny_mce.js?id=20160909-2"></script>
<script type="text/javascript" src="//common.cnblogs.com/blog/script/tinymce_config.js?id=20160909-2"></script><textarea name="Editor$Edit$EditorBody" rows="2" cols="20" id="Editor_Edit_EditorBody" style="display: none;" aria-hidden="true"></textarea><span role="application" aria-labelledby="Editor_Edit_EditorBody_voice" id="Editor_Edit_EditorBody_parent" class="mceEditor defaultSkin"><span class="mceVoiceLabel" style="display:none;" id="Editor_Edit_EditorBody_voice">富文本区</span><table role="presentation" id="Editor_Edit_EditorBody_tbl" class="mceLayout" cellspacing="0" cellpadding="0" style="width: 100%; height: 506px;"><tbody><tr role="presentation" class="mceFirst"><td class="mceToolbar mceLeft mceFirst mceLast" role="toolbar"><div id="Editor_Edit_EditorBody_toolbargroup" role="group" aria-labelledby="Editor_Edit_EditorBody_toolbargroup_voice" tabindex="-1"><span role="application"><span id="Editor_Edit_EditorBody_toolbargroup_voice" class="mceVoiceLabel" style="display:none;">工具栏</span><table id="Editor_Edit_EditorBody_toolbar1" class="mceToolbar mceToolbarRow1 Enabled" cellpadding="0" cellspacing="0" align="" role="presentation" tabindex="-1" aria-disabled="false" aria-pressed="false"><tbody><tr><td class="mceToolbarStart mceToolbarStartButton mceFirst"><span><!-- IE --></span></td><td style="position: relative"><div id="Editor_Edit_EditorBody_forecolor" role="button" tabindex="-1" aria-labelledby="Editor_Edit_EditorBody_forecolor_voice" aria-haspopup="true"><table role="presentation" class="mceSplitButton mceSplitButtonEnabled mce_forecolor" cellpadding="0" cellspacing="0" title="选择文本颜色"><tbody><tr><td class="mceFirst"><a role="button" id="Editor_Edit_EditorBody_forecolor_action" tabindex="-1" href="javascript:;" class="mceAction mce_forecolor" onclick="return false;" onmousedown="return false;" title="选择文本颜色"><span class="mceAction mce_forecolor"></span><span class="mceVoiceLabel mceIconOnly" id="Editor_Edit_EditorBody_forecolor_voice" style="display:none;">选择文本颜色</span><div id="Editor_Edit_EditorBody_forecolor_preview" class="mceColorPreview" style="background-color: rgb(136, 136, 136);"></div></a></td><td class="mceLast"><a role="button" id="Editor_Edit_EditorBody_forecolor_open" tabindex="-1" href="javascript:;" class="mceOpen mce_forecolor" onclick="return false;" onmousedown="return false;" title="选择文本颜色"><span class="mceOpen mce_forecolor"><span style="display:none;" class="mceIconOnly" aria-hidden="true">▼</span></span></a></td></tr></tbody></table></div></td><td style="position: relative"><div id="Editor_Edit_EditorBody_backcolor" role="button" tabindex="-1" aria-labelledby="Editor_Edit_EditorBody_backcolor_voice" aria-haspopup="true"><table role="presentation" class="mceSplitButton mceSplitButtonEnabled mce_backcolor" cellpadding="0" cellspacing="0" title="选择背景颜色"><tbody><tr><td class="mceFirst"><a role="button" id="Editor_Edit_EditorBody_backcolor_action" tabindex="-1" href="javascript:;" class="mceAction mce_backcolor" onclick="return false;" onmousedown="return false;" title="选择背景颜色"><span class="mceAction mce_backcolor"></span><span class="mceVoiceLabel mceIconOnly" id="Editor_Edit_EditorBody_backcolor_voice" style="display:none;">选择背景颜色</span><div id="Editor_Edit_EditorBody_backcolor_preview" class="mceColorPreview" style="background-color: rgb(136, 136, 136);"></div></a></td><td class="mceLast"><a role="button" id="Editor_Edit_EditorBody_backcolor_open" tabindex="-1" href="javascript:;" class="mceOpen mce_backcolor" onclick="return false;" onmousedown="return false;" title="选择背景颜色"><span class="mceOpen mce_backcolor"><span style="display:none;" class="mceIconOnly" aria-hidden="true">▼</span></span></a></td></tr></tbody></table></div></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_bold" href="javascript:;" class="mceButton mceButtonEnabled mce_bold" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_bold_voice" title="粗体 (Ctrl B)" tabindex="-1"><span class="mceIcon mce_bold"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_bold_voice">粗体 (Ctrl B)</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_italic" href="javascript:;" class="mceButton mceButtonEnabled mce_italic" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_italic_voice" title="斜体 (Ctrl I)" tabindex="-1"><span class="mceIcon mce_italic"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_italic_voice">斜体 (Ctrl I)</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_underline" href="javascript:;" class="mceButton mceButtonEnabled mce_underline" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_underline_voice" title="下划线 (Ctrl U)" tabindex="-1"><span class="mceIcon mce_underline"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_underline_voice">下划线 (Ctrl U)</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_strikethrough" href="javascript:;" class="mceButton mceButtonEnabled mce_strikethrough" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_strikethrough_voice" title="删除线" tabindex="-1"><span class="mceIcon mce_strikethrough"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_strikethrough_voice">删除线</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_bullist" href="javascript:;" class="mceButton mceButtonEnabled mce_bullist" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_bullist_voice" title="无序编号" tabindex="-1" aria-pressed="false"><span class="mceIcon mce_bullist"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_bullist_voice">无序编号</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_numlist" href="javascript:;" class="mceButton mceButtonEnabled mce_numlist" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_numlist_voice" title="有序编号" tabindex="-1" aria-pressed="false"><span class="mceIcon mce_numlist"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_numlist_voice">有序编号</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_outdent" href="javascript:;" class="mceButton mce_outdent mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_outdent_voice" title="减少缩进" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_outdent"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_outdent_voice">减少缩进</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_indent" href="javascript:;" class="mceButton mceButtonEnabled mce_indent" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_indent_voice" title="增加缩进" tabindex="-1"><span class="mceIcon mce_indent"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_indent_voice">增加缩进</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_blockquote" href="javascript:;" class="mceButton mceButtonEnabled mce_blockquote" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_blockquote_voice" title="引用" tabindex="-1"><span class="mceIcon mce_blockquote"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_blockquote_voice">引用</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_hr" href="javascript:;" class="mceButton mceButtonEnabled mce_hr" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_hr_voice" title="水平线" tabindex="-1"><span class="mceIcon mce_hr"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_hr_voice">水平线</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_sub" href="javascript:;" class="mceButton mceButtonEnabled mce_sub" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_sub_voice" title="下标" tabindex="-1"><span class="mceIcon mce_sub"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_sub_voice">下标</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_sup" href="javascript:;" class="mceButton mceButtonEnabled mce_sup" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_sup_voice" title="上标" tabindex="-1"><span class="mceIcon mce_sup"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_sup_voice">上标</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_charmap" href="javascript:;" class="mceButton mceButtonEnabled mce_charmap" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_charmap_voice" title="插入特殊符号" tabindex="-1"><span class="mceIcon mce_charmap"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_charmap_voice">插入特殊符号</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_justifyleft" href="javascript:;" class="mceButton mceButtonEnabled mce_justifyleft" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_justifyleft_voice" title="左对齐" tabindex="-1"><span class="mceIcon mce_justifyleft"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_justifyleft_voice">左对齐</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_justifycenter" href="javascript:;" class="mceButton mceButtonEnabled mce_justifycenter" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_justifycenter_voice" title="居中对齐" tabindex="-1"><span class="mceIcon mce_justifycenter"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_justifycenter_voice">居中对齐</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_justifyright" href="javascript:;" class="mceButton mceButtonEnabled mce_justifyright" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_justifyright_voice" title="右对齐" tabindex="-1"><span class="mceIcon mce_justifyright"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_justifyright_voice">右对齐</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_search" href="javascript:;" class="mceButton mceButtonEnabled mce_search" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_search_voice" title="查找" tabindex="-1"><span class="mceIcon mce_search"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_search_voice">查找</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_replace" href="javascript:;" class="mceButton mceButtonEnabled mce_replace" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_replace_voice" title="查找/替换" tabindex="-1"><span class="mceIcon mce_replace"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_replace_voice">查找/替换</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_insertdate" href="javascript:;" class="mceButton mceButtonEnabled mce_insertdate" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_insertdate_voice" title="插入日期" tabindex="-1"><span class="mceIcon mce_insertdate"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_insertdate_voice">插入日期</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_inserttime" href="javascript:;" class="mceButton mceButtonEnabled mce_inserttime" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_inserttime_voice" title="插入时间" tabindex="-1"><span class="mceIcon mce_inserttime"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_inserttime_voice">插入时间</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_preview" href="javascript:;" class="mceButton mceButtonEnabled mce_preview" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_preview_voice" title="预览" tabindex="-1"><span class="mceIcon mce_preview"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_preview_voice">预览</span></a></td><td class="mceToolbarEnd mceToolbarEndButton mceLast"><span><!-- IE --></span></td></tr></tbody></table><table id="Editor_Edit_EditorBody_toolbar2" class="mceToolbar mceToolbarRow2 Enabled" cellpadding="0" cellspacing="0" align="" role="presentation" tabindex="-1" aria-disabled="false" aria-pressed="false"><tbody><tr><td class="mceToolbarStart mceToolbarStartButton mceFirst"><span><!-- IE --></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_link" href="javascript:;" class="mceButton mce_link mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_link_voice" title="插入/编辑链接" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_link"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_link_voice">插入/编辑链接</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_unlink" href="javascript:;" class="mceButton mce_unlink mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_unlink_voice" title="清除链接" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_unlink"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_unlink_voice">清除链接</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_anchor" href="javascript:;" class="mceButton mceButtonEnabled mce_anchor" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_anchor_voice" title="插入/编辑书签" tabindex="-1"><span class="mceIcon mce_anchor"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_anchor_voice">插入/编辑书签</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_removeformat" href="javascript:;" class="mceButton mceButtonEnabled mce_removeformat" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_removeformat_voice" title="清除格式" tabindex="-1"><span class="mceIcon mce_removeformat"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_removeformat_voice">清除格式</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_cleanup" href="javascript:;" class="mceButton mceButtonEnabled mce_cleanup" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_cleanup_voice" title="清除多余格式" tabindex="-1"><span class="mceIcon mce_cleanup"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_cleanup_voice">清除多余格式</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_image" href="javascript:;" class="mceButton mceButtonEnabled mce_image" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_image_voice" title="插入/编辑图片" tabindex="-1"><span class="mceIcon mce_image"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_image_voice">插入/编辑图片</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_uploadImage" href="javascript:;" class="mceButton mceButtonEnabled mce_uploadImage" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_uploadImage_voice" title="上传图片" tabindex="-1"><span class="mceIcon mce_uploadImage"><img class="mceIcon" src="https://common.cnblogs.com/editor/tiny_mce/plugins/uploadImage/img/img.gif" alt="上传图片"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_uploadImage_voice">上传图片</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_media" href="javascript:;" class="mceButton mceButtonEnabled mce_media" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_media_voice" title="插入/编辑嵌入式媒体" tabindex="-1"><span class="mceIcon mce_media"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_media_voice">插入/编辑嵌入式媒体</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_insertCode" href="javascript:;" class="mceButton mceButtonEnabled mce_insertCode" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_insertCode_voice" title="插入代码（推荐）" tabindex="-1"><span class="mceIcon mce_insertCode"><img class="mceIcon" src="https://common.cnblogs.com/editor/tiny_mce/plugins/insertCode/images/insertCode.gif" alt="插入代码（推荐）"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_insertCode_voice">插入代码（推荐）</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_syntaxHighlighter" href="javascript:;" class="mceButton mceButtonEnabled mce_syntaxHighlighter" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_syntaxHighlighter_voice" title="插入代码" tabindex="-1"><span class="mceIcon mce_syntaxHighlighter"><img class="mceIcon" src="https://common.cnblogs.com/editor/tiny_mce/plugins/syntaxHighlighter/images/code.png" alt="插入代码"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_syntaxHighlighter_voice">插入代码</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_code" href="javascript:;" class="mceButton mceButtonEnabled mce_code" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_code_voice" title="编辑 HTML 源代码" tabindex="-1"><span class="mceIcon mce_code"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_code_voice">编辑 HTML 源代码</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_fullscreen" href="javascript:;" class="mceButton mceButtonEnabled mce_fullscreen" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_fullscreen_voice" title="切换全屏模式" tabindex="-1" aria-pressed="false"><span class="mceIcon mce_fullscreen"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_fullscreen_voice">切换全屏模式</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><span role="listbox" aria-haspopup="true" aria-labelledby="Editor_Edit_EditorBody_formatselect_voiceDesc" aria-describedby="Editor_Edit_EditorBody_formatselect_voiceDesc"><table role="presentation" tabindex="-1" id="Editor_Edit_EditorBody_formatselect" cellpadding="0" cellspacing="0" class="mceListBox mceListBoxEnabled mce_formatselect" aria-valuenow="段落"><tbody><tr><td class="mceFirst"><span id="Editor_Edit_EditorBody_formatselect_voiceDesc" class="voiceLabel" style="display:none;">格式 - 段落</span><a id="Editor_Edit_EditorBody_formatselect_text" tabindex="-1" href="javascript:;" class="mceText" onclick="return false;" onmousedown="return false;">段落</a></td><td class="mceLast"><a id="Editor_Edit_EditorBody_formatselect_open" tabindex="-1" href="javascript:;" class="mceOpen" onclick="return false;" onmousedown="return false;"><span><span style="display:none;" class="mceIconOnly" aria-hidden="true">▼</span></span></a></td></tr></tbody></table></span></td><td style="position: relative"><span role="listbox" aria-haspopup="true" aria-labelledby="Editor_Edit_EditorBody_fontselect_voiceDesc" aria-describedby="Editor_Edit_EditorBody_fontselect_voiceDesc"><table role="presentation" tabindex="-1" id="Editor_Edit_EditorBody_fontselect" cellpadding="0" cellspacing="0" class="mceListBox mceListBoxEnabled mce_fontselect" aria-valuenow="字体"><tbody><tr><td class="mceFirst"><span id="Editor_Edit_EditorBody_fontselect_voiceDesc" class="voiceLabel" style="display:none;">字体</span><a id="Editor_Edit_EditorBody_fontselect_text" tabindex="-1" href="javascript:;" class="mceText mceTitle" onclick="return false;" onmousedown="return false;">字体</a></td><td class="mceLast"><a id="Editor_Edit_EditorBody_fontselect_open" tabindex="-1" href="javascript:;" class="mceOpen" onclick="return false;" onmousedown="return false;"><span><span style="display:none;" class="mceIconOnly" aria-hidden="true">▼</span></span></a></td></tr></tbody></table></span></td><td style="position: relative"><span role="listbox" aria-haspopup="true" aria-labelledby="Editor_Edit_EditorBody_fontsizeselect_voiceDesc" aria-describedby="Editor_Edit_EditorBody_fontsizeselect_voiceDesc"><table role="presentation" tabindex="-1" id="Editor_Edit_EditorBody_fontsizeselect" cellpadding="0" cellspacing="0" class="mceListBox mceListBoxEnabled mce_fontsizeselect" aria-valuenow="字体大小"><tbody><tr><td class="mceFirst"><span id="Editor_Edit_EditorBody_fontsizeselect_voiceDesc" class="voiceLabel" style="display:none;">字体大小</span><a id="Editor_Edit_EditorBody_fontsizeselect_text" tabindex="-1" href="javascript:;" class="mceText mceTitle" onclick="return false;" onmousedown="return false;">字体大小</a></td><td class="mceLast"><a id="Editor_Edit_EditorBody_fontsizeselect_open" tabindex="-1" href="javascript:;" class="mceOpen" onclick="return false;" onmousedown="return false;"><span><span style="display:none;" class="mceIconOnly" aria-hidden="true">▼</span></span></a></td></tr></tbody></table></span></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_undo" href="javascript:;" class="mceButton mce_undo mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_undo_voice" title="撤销 (Ctrl Z)" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_undo"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_undo_voice">撤销 (Ctrl Z)</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_redo" href="javascript:;" class="mceButton mce_redo mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_redo_voice" title="重做 (Ctrl Y)" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_redo"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_redo_voice">重做 (Ctrl Y)</span></a></td><td class="mceToolbarEnd mceToolbarEndButton mceLast"><span><!-- IE --></span></td></tr></tbody></table><table id="Editor_Edit_EditorBody_toolbar3" class="mceToolbar mceToolbarRow3 Enabled" cellpadding="0" cellspacing="0" align="" role="presentation" tabindex="-1" aria-disabled="false" aria-pressed="false"><tbody><tr><td class="mceToolbarStart mceToolbarStartButton mceFirst"><span><!-- IE --></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_table" href="javascript:;" class="mceButton mceButtonEnabled mce_table" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_table_voice" title="插入新表格" tabindex="-1"><span class="mceIcon mce_table"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_table_voice">插入新表格</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_row_props" href="javascript:;" class="mceButton mce_row_props mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_row_props_voice" title="行属性" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_row_props"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_row_props_voice">行属性</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_cell_props" href="javascript:;" class="mceButton mce_cell_props mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_cell_props_voice" title="表格元件属性" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_cell_props"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_cell_props_voice">表格元件属性</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_row_before" href="javascript:;" class="mceButton mce_row_before mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_row_before_voice" title="在行前插入" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_row_before"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_row_before_voice">在行前插入</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_row_after" href="javascript:;" class="mceButton mce_row_after mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_row_after_voice" title="在行后插入" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_row_after"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_row_after_voice">在行后插入</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_delete_row" href="javascript:;" class="mceButton mce_delete_row mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_delete_row_voice" title="删除行" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_delete_row"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_delete_row_voice">删除行</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_col_before" href="javascript:;" class="mceButton mce_col_before mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_col_before_voice" title="在列前插入" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_col_before"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_col_before_voice">在列前插入</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_col_after" href="javascript:;" class="mceButton mce_col_after mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_col_after_voice" title="在列后插入" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_col_after"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_col_after_voice">在列后插入</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_delete_col" href="javascript:;" class="mceButton mce_delete_col mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_delete_col_voice" title="删除列" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_delete_col"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_delete_col_voice">删除列</span></a></td><td style="position: relative"><span class="mceSeparator" role="separator" aria-orientation="vertical" tabindex="-1"></span></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_split_cells" href="javascript:;" class="mceButton mce_split_cells mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_split_cells_voice" title="分割已合并元件" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_split_cells"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_split_cells_voice">分割已合并元件</span></a></td><td style="position: relative"><a role="button" id="Editor_Edit_EditorBody_merge_cells" href="javascript:;" class="mceButton mce_merge_cells mceButtonDisabled" onmousedown="return false;" onclick="return false;" aria-labelledby="Editor_Edit_EditorBody_merge_cells_voice" title="合并表格元件" tabindex="-1" aria-disabled="true"><span class="mceIcon mce_merge_cells"></span><span class="mceVoiceLabel mceIconOnly" style="display: none;" id="Editor_Edit_EditorBody_merge_cells_voice">合并表格元件</span></a></td><td class="mceToolbarEnd mceToolbarEndButton mceLast"><span><!-- IE --></span></td></tr></tbody></table></span></div><a href="#" accesskey="z" title="定位到工具列：Alt Q，定位到编辑框：Alt Z定位到工具列- Alt Q，定位到元素路径：Alt X。" onfocus="tinyMCE.getInstanceById('Editor_Edit_EditorBody').focus();"><!-- IE --></a></td></tr><tr><td class="mceIframeContainer mceFirst mceLast"><iframe id="Editor_Edit_EditorBody_ifr" src='javascript:""' frameborder="0" allowtransparency="true" title="富文本区使用 ALT-F10 启用工具栏. 使用 ALT-0 打开帮助" style="width: 100%; height: 416px; display: block;"></iframe></td></tr><tr class="mceLast"><td class="mceStatusbar mceFirst mceLast"><div id="Editor_Edit_EditorBody_path_row" role="group" aria-labelledby="Editor_Edit_EditorBody_path_voice" tabindex="-1"><span id="Editor_Edit_EditorBody_path_voice">元素路径</span><span>: </span><span id="Editor_Edit_EditorBody_path"><a href="javascript:;" role="button" onmousedown="return false;" class="mcePath_0" id="_mce_item_38" tabindex="-1">p</a></span></div><a id="Editor_Edit_EditorBody_resize" href="javascript:;" onclick="return false;" class="mceResize" tabindex="-1"></a></td></tr></tbody></table></span>
        </div>
        <div id="Editor_Edit_APOptions">
			<div id="Editor_Edit_APOptions_Header" class="CollapsibleTitle">
				<a id="Editor_Edit_APOptions_Link" onclick="ToggleVisible('Editor_Edit_APOptions_Contents','Editor_Edit_APOptions_LinkImage','/resources/toggle_gray_up.gif','/resources/toggle_gray_down.gif'); return false;" href="UserControls/#"><img id="Editor_Edit_APOptions_LinkImage" src="/resources/toggle_gray_down.gif"></a><span id="Editor_Edit_APOptions_headerTitle" class="CollapsibleTitle">常用选项</span>
			</div><div id="Editor_Edit_APOptions_Contents" class="Edit">
				
            <div class="edit_option">
                <div id="Editor_Edit_APOptions_Advancedpanel1">
					<div id="Editor_Edit_APOptions_Advancedpanel1_Header" class="subCollapsibleTitle">
						<a id="Editor_Edit_APOptions_Advancedpanel1_Link" onclick="ToggleVisible('Editor_Edit_APOptions_Advancedpanel1_Contents','Editor_Edit_APOptions_Advancedpanel1_LinkImage','/resources/toggle_gray_up.gif','/resources/toggle_gray_down.gif'); return false;" href="UserControls/#"><img id="Editor_Edit_APOptions_Advancedpanel1_LinkImage" src="/resources/toggle_gray_down.gif"></a><span id="Editor_Edit_APOptions_Advancedpanel1_headerTitle" class="subCollapsibleTitleText">个人分类</span>
					</div><div id="Editor_Edit_APOptions_Advancedpanel1_Contents" class="Edit">
						
                    
                
					</div>
				</div>
                <div id="Editor_Edit_APOptions_APSiteHome">
					<div id="Editor_Edit_APOptions_APSiteHome_Header" class="subCollapsibleTitle">
						<a id="Editor_Edit_APOptions_APSiteHome_Link" onclick="ToggleVisible('Editor_Edit_APOptions_APSiteHome_Contents','Editor_Edit_APOptions_APSiteHome_LinkImage','/resources/toggle_gray_up.gif','/resources/toggle_gray_down.gif'); return false;" href="UserControls/#"><img id="Editor_Edit_APOptions_APSiteHome_LinkImage" src="/resources/toggle_gray_down.gif"></a><span id="Editor_Edit_APOptions_APSiteHome_headerTitle" class="subCollapsibleTitleText">发布选项</span>
					</div><div id="Editor_Edit_APOptions_APSiteHome_Contents" class="Edit">
						                    
                    <div id="Editor_Edit_APOptions_APSiteHome_panelHomeCandidate">
							
                    <input name="Editor$Edit$APOptions$APSiteHome$cbHomeCandidate" type="checkbox" id="Editor_Edit_APOptions_APSiteHome_cbHomeCandidate" onclick="OnHomeCandidateChange(this)">发布至首页候选区                     
                        <br>
                    
						</div>            
                    <span style="color:gray">发布至博客园首页（原创、精品、知识分享）(新注册用户3天之后才能发布至网站首页)</span>
                    <div style="font-size:12px;/*color:#1A64A2;*/padding:5px 5px 5px 5px;">
                    【发文说明】<br> 
                        博客园是面向开发者的知识分享社区，不允许发布任何推广、广告、政治方面的内容。<br>                
                        博客园首页（即网站首页）只能发布原创的、高质量的、能让读者从中学到东西的内容。<br>
                        如果博文质量不符合首页要求，会被工作人员移出首页，望理解。如有疑问，请联系contact@cnblogs.com。			
                    </div>                  
                
					</div>
				</div>
                
                <div id="Editor_Edit_APOptions_APSiteCategory">
					<div id="Editor_Edit_APOptions_APSiteCategory_Header" class="subCollapsibleTitle">
						<a id="Editor_Edit_APOptions_APSiteCategory_Link" onclick="ToggleVisible('Editor_Edit_APOptions_APSiteCategory_Contents','Editor_Edit_APOptions_APSiteCategory_LinkImage','/resources/toggle_gray_up.gif','/resources/toggle_gray_down.gif'); return false;" href="UserControls/#"><img id="Editor_Edit_APOptions_APSiteCategory_LinkImage" src="/resources/toggle_gray_down.gif"></a><span id="Editor_Edit_APOptions_APSiteCategory_headerTitle" class="subCollapsibleTitleText">网站分类</span>
					</div><div id="Editor_Edit_APOptions_APSiteCategory_Contents" class="Edit" style="display:none;">
						
                    注：请为您的随笔选择最合适的分类，请不要发布在不相关的分类中，否则您的帐户会被取消网站分类发布权限。
                    
<div class="site_category">

.NET技术：

    <input type="radio" id="site_categroy_18156" name="name_site_categroy" value="18156">
    <label for="site_categroy_18156">.NET新手区</label>
    
    <input type="radio" id="site_categroy_108699" name="name_site_categroy" value="108699">
    <label for="site_categroy_108699">ASP.NET</label>
    
    <input type="radio" id="site_categroy_108700" name="name_site_categroy" value="108700">
    <label for="site_categroy_108700">C#</label>
    
    <input type="radio" id="site_categroy_108760" name="name_site_categroy" value="108760">
    <label for="site_categroy_108760">.NET Core</label>
    
    <input type="radio" id="site_categroy_108716" name="name_site_categroy" value="108716">
    <label for="site_categroy_108716">WinForm</label>
    
    <input type="radio" id="site_categroy_108717" name="name_site_categroy" value="108717">
    <label for="site_categroy_108717">Silverlight</label>
    
    <input type="radio" id="site_categroy_108718" name="name_site_categroy" value="108718">
    <label for="site_categroy_108718">WCF</label>
    
    <input type="radio" id="site_categroy_108719" name="name_site_categroy" value="108719">
    <label for="site_categroy_108719">CLR</label>
    
    <input type="radio" id="site_categroy_108720" name="name_site_categroy" value="108720">
    <label for="site_categroy_108720">WPF</label>
    
    <input type="radio" id="site_categroy_108728" name="name_site_categroy" value="108728">
    <label for="site_categroy_108728">XNA</label>
    
    <input type="radio" id="site_categroy_108729" name="name_site_categroy" value="108729">
    <label for="site_categroy_108729">Visual Studio</label>
    
    <input type="radio" id="site_categroy_108730" name="name_site_categroy" value="108730">
    <label for="site_categroy_108730">ASP.NET MVC</label>
    
    <input type="radio" id="site_categroy_108738" name="name_site_categroy" value="108738">
    <label for="site_categroy_108738">控件开发</label>
    
    <input type="radio" id="site_categroy_108739" name="name_site_categroy" value="108739">
    <label for="site_categroy_108739">Entity Framework</label>
    
    <input type="radio" id="site_categroy_108758" name="name_site_categroy" value="108758">
    <label for="site_categroy_108758">NHibernate</label>
    
    <input type="radio" id="site_categroy_108745" name="name_site_categroy" value="108745">
    <label for="site_categroy_108745">WinRT/Metro</label>
     
<br>              

编程语言：

    <input type="radio" id="site_categroy_106876" name="name_site_categroy" value="106876">
    <label for="site_categroy_106876">Java</label>
    
    <input type="radio" id="site_categroy_106880" name="name_site_categroy" value="106880">
    <label for="site_categroy_106880">C++</label>
    
    <input type="radio" id="site_categroy_106882" name="name_site_categroy" value="106882">
    <label for="site_categroy_106882">PHP</label>
    
    <input type="radio" id="site_categroy_106877" name="name_site_categroy" value="106877">
    <label for="site_categroy_106877">Delphi</label>
    
    <input type="radio" id="site_categroy_108696" name="name_site_categroy" value="108696">
    <label for="site_categroy_108696">Python</label>
    
    <input type="radio" id="site_categroy_106894" name="name_site_categroy" value="106894">
    <label for="site_categroy_106894">Ruby</label>
    
    <input type="radio" id="site_categroy_108735" name="name_site_categroy" value="108735">
    <label for="site_categroy_108735">C语言</label>
    
    <input type="radio" id="site_categroy_108746" name="name_site_categroy" value="108746">
    <label for="site_categroy_108746">Erlang</label>
    
    <input type="radio" id="site_categroy_108748" name="name_site_categroy" value="108748">
    <label for="site_categroy_108748">Go</label>
    
    <input type="radio" id="site_categroy_108751" name="name_site_categroy" value="108751">
    <label for="site_categroy_108751">Swift</label>
    
    <input type="radio" id="site_categroy_108752" name="name_site_categroy" value="108752">
    <label for="site_categroy_108752">Scala</label>
    
    <input type="radio" id="site_categroy_108753" name="name_site_categroy" value="108753">
    <label for="site_categroy_108753">R语言</label>
    
    <input type="radio" id="site_categroy_108742" name="name_site_categroy" value="108742">
    <label for="site_categroy_108742">Verilog</label>
    
    <input type="radio" id="site_categroy_108754" name="name_site_categroy" value="108754">
    <label for="site_categroy_108754">其它语言</label>
     
<br>              

软件设计：

    <input type="radio" id="site_categroy_106892" name="name_site_categroy" value="106892">
    <label for="site_categroy_106892">架构设计</label>
    
    <input type="radio" id="site_categroy_108702" name="name_site_categroy" value="108702">
    <label for="site_categroy_108702">面向对象</label>
    
    <input type="radio" id="site_categroy_106884" name="name_site_categroy" value="106884">
    <label for="site_categroy_106884">设计模式</label>
    
    <input type="radio" id="site_categroy_108750" name="name_site_categroy" value="108750">
    <label for="site_categroy_108750">领域驱动设计</label>
     
<br>              

Web前端：

    <input type="radio" id="site_categroy_106883" name="name_site_categroy" value="106883">
    <label for="site_categroy_106883">Html/Css</label>
    
    <input type="radio" id="site_categroy_106893" name="name_site_categroy" value="106893">
    <label for="site_categroy_106893">JavaScript</label>
    
    <input type="radio" id="site_categroy_108731" name="name_site_categroy" value="108731">
    <label for="site_categroy_108731">jQuery</label>
    
    <input type="radio" id="site_categroy_108737" name="name_site_categroy" value="108737">
    <label for="site_categroy_108737">HTML5</label>
     
<br>              

企业信息化：

    <input type="radio" id="site_categroy_108761" name="name_site_categroy" value="108761">
    <label for="site_categroy_108761">BPM</label>
    
    <input type="radio" id="site_categroy_78111" name="name_site_categroy" value="78111">
    <label for="site_categroy_78111">SharePoint</label>
    
    <input type="radio" id="site_categroy_50349" name="name_site_categroy" value="50349">
    <label for="site_categroy_50349">GIS技术</label>
    
    <input type="radio" id="site_categroy_106878" name="name_site_categroy" value="106878">
    <label for="site_categroy_106878">SAP</label>
    
    <input type="radio" id="site_categroy_108732" name="name_site_categroy" value="108732">
    <label for="site_categroy_108732">Oracle ERP</label>
    
    <input type="radio" id="site_categroy_108734" name="name_site_categroy" value="108734">
    <label for="site_categroy_108734">Dynamics CRM</label>
    
    <input type="radio" id="site_categroy_108747" name="name_site_categroy" value="108747">
    <label for="site_categroy_108747">K2 BPM</label>
    
    <input type="radio" id="site_categroy_108749" name="name_site_categroy" value="108749">
    <label for="site_categroy_108749">信息安全</label>
    
    <input type="radio" id="site_categroy_3" name="name_site_categroy" value="3">
    <label for="site_categroy_3">企业信息化其他</label>
     
<br>              

手机开发：

    <input type="radio" id="site_categroy_108706" name="name_site_categroy" value="108706">
    <label for="site_categroy_108706">Android开发</label>
    
    <input type="radio" id="site_categroy_108707" name="name_site_categroy" value="108707">
    <label for="site_categroy_108707">iOS开发</label>
    
    <input type="radio" id="site_categroy_108736" name="name_site_categroy" value="108736">
    <label for="site_categroy_108736">Windows Phone</label>
    
    <input type="radio" id="site_categroy_108708" name="name_site_categroy" value="108708">
    <label for="site_categroy_108708">Windows Mobile</label>
    
    <input type="radio" id="site_categroy_106886" name="name_site_categroy" value="106886">
    <label for="site_categroy_106886">其他手机开发</label>
     
<br>              

软件工程：

    <input type="radio" id="site_categroy_108710" name="name_site_categroy" value="108710">
    <label for="site_categroy_108710">敏捷开发</label>
    
    <input type="radio" id="site_categroy_106891" name="name_site_categroy" value="106891">
    <label for="site_categroy_106891">项目与团队管理</label>
    
    <input type="radio" id="site_categroy_106889" name="name_site_categroy" value="106889">
    <label for="site_categroy_106889">软件工程其他</label>
     
<br>              

数据库技术：

    <input type="radio" id="site_categroy_108713" name="name_site_categroy" value="108713">
    <label for="site_categroy_108713">SQL Server</label>
    
    <input type="radio" id="site_categroy_108714" name="name_site_categroy" value="108714">
    <label for="site_categroy_108714">Oracle</label>
    
    <input type="radio" id="site_categroy_108715" name="name_site_categroy" value="108715">
    <label for="site_categroy_108715">MySQL</label>
    
    <input type="radio" id="site_categroy_108743" name="name_site_categroy" value="108743">
    <label for="site_categroy_108743">NoSQL</label>
    
    <input type="radio" id="site_categroy_108756" name="name_site_categroy" value="108756">
    <label for="site_categroy_108756">大数据</label>
    
    <input type="radio" id="site_categroy_106881" name="name_site_categroy" value="106881">
    <label for="site_categroy_106881">其它数据库</label>
     
<br>              

操作系统：

    <input type="radio" id="site_categroy_108721" name="name_site_categroy" value="108721">
    <label for="site_categroy_108721">Windows</label>
    
    <input type="radio" id="site_categroy_108725" name="name_site_categroy" value="108725">
    <label for="site_categroy_108725">Windows Server</label>
    
    <input type="radio" id="site_categroy_108726" name="name_site_categroy" value="108726">
    <label for="site_categroy_108726">Linux</label>
    
    <input type="radio" id="site_categroy_108755" name="name_site_categroy" value="108755">
    <label for="site_categroy_108755">OS X</label>
    
    <input type="radio" id="site_categroy_108757" name="name_site_categroy" value="108757">
    <label for="site_categroy_108757">嵌入式</label>
     
<br>              

其他分类：

    <input type="radio" id="site_categroy_807" name="name_site_categroy" value="807">
    <label for="site_categroy_807">非技术区</label>
    
    <input type="radio" id="site_categroy_106879" name="name_site_categroy" value="106879">
    <label for="site_categroy_106879">软件测试</label>
    
    <input type="radio" id="site_categroy_33909" name="name_site_categroy" value="33909">
    <label for="site_categroy_33909">代码与软件发布</label>
    
    <input type="radio" id="site_categroy_106885" name="name_site_categroy" value="106885">
    <label for="site_categroy_106885">计算机图形学</label>
    
    <input type="radio" id="site_categroy_106895" name="name_site_categroy" value="106895">
    <label for="site_categroy_106895">Google开发</label>
    
    <input type="radio" id="site_categroy_108759" name="name_site_categroy" value="108759">
    <label for="site_categroy_108759">游戏开发</label>
    
    <input type="radio" id="site_categroy_106888" name="name_site_categroy" value="106888">
    <label for="site_categroy_106888">程序人生</label>
    
    <input type="radio" id="site_categroy_106890" name="name_site_categroy" value="106890">
    <label for="site_categroy_106890">求职面试</label>
    
    <input type="radio" id="site_categroy_5079" name="name_site_categroy" value="5079">
    <label for="site_categroy_5079">读书区</label>
    
    <input type="radio" id="site_categroy_4347" name="name_site_categroy" value="4347">
    <label for="site_categroy_4347">转载区</label>
    
    <input type="radio" id="site_categroy_108733" name="name_site_categroy" value="108733">
    <label for="site_categroy_108733">Windows CE</label>
    
    <input type="radio" id="site_categroy_106875" name="name_site_categroy" value="106875">
    <label for="site_categroy_106875">翻译区</label>
    
    <input type="radio" id="site_categroy_108722" name="name_site_categroy" value="108722">
    <label for="site_categroy_108722">开源研究</label>
    
    <input type="radio" id="site_categroy_108723" name="name_site_categroy" value="108723">
    <label for="site_categroy_108723">Flex</label>
    
    <input type="radio" id="site_categroy_108740" name="name_site_categroy" value="108740">
    <label for="site_categroy_108740">云计算</label>
    
    <input type="radio" id="site_categroy_108741" name="name_site_categroy" value="108741">
    <label for="site_categroy_108741">算法与数据结构</label>
    
    <input type="radio" id="site_categroy_7734" name="name_site_categroy" value="7734">
    <label for="site_categroy_7734">其他技术区</label>
     
<br>              

<input type="radio" id="site_categroy_0" name="name_site_categroy" value="0">
<label for="site_categroy_0">取消选择</label>
</div> 
                
					</div>
				</div>
                
            </div>
        
			</div>
		</div>
        <div id="Editor_Edit_Advanced">
			<div id="Editor_Edit_Advanced_Header" class="CollapsibleTitle">
				<a id="Editor_Edit_Advanced_Link" onclick="ToggleVisible('Editor_Edit_Advanced_Contents','Editor_Edit_Advanced_LinkImage','/resources/toggle_gray_up.gif','/resources/toggle_gray_down.gif'); return false;" href="UserControls/#"><img id="Editor_Edit_Advanced_LinkImage" src="/resources/toggle_gray_down.gif"></a><span id="Editor_Edit_Advanced_headerTitle" class="CollapsibleTitle">高级选项</span>
			</div><div id="Editor_Edit_Advanced_Contents" class="Edit">
				
            <div class="edit_option">                
                <ul class="edit_option_ul">
                    <li>
                        <label for="Editor_Edit_Advanced_ckbPublished">发布</label><input id="Editor_Edit_Advanced_ckbPublished" type="checkbox" name="Editor$Edit$Advanced$ckbPublished" checked="checked">
                    </li>
                    <li>
                    <label for="Editor_Edit_Advanced_chkDisplayHomePage">显示在我的博客首页</label><input id="Editor_Edit_Advanced_chkDisplayHomePage" type="checkbox" name="Editor$Edit$Advanced$chkDisplayHomePage" checked="checked">
                    </li>
                    <li>
                        <label for="Editor_Edit_Advanced_chkComments">允许评论</label><input id="Editor_Edit_Advanced_chkComments" type="checkbox" name="Editor$Edit$Advanced$chkComments" checked="checked">
                    </li>
                    <li>
                        
                    </li>
                    <li>
                        <label for="Editor_Edit_Advanced_chkMainSyndication">显示在RSS中</label><input id="Editor_Edit_Advanced_chkMainSyndication" type="checkbox" name="Editor$Edit$Advanced$chkMainSyndication" checked="checked">
                    </li>
                    <li>
                        
                    </li>
                    <li>
                        <label for="Editor_Edit_Advanced_chkPinned">置顶</label><input id="Editor_Edit_Advanced_chkPinned" type="checkbox" name="Editor$Edit$Advanced$chkPinned">
                    </li>
                    <li>
                        <label for="Editor_Edit_Advanced_chkIsOnlyForRegisterUser">只允许注册用户访问</label><input id="Editor_Edit_Advanced_chkIsOnlyForRegisterUser" type="checkbox" name="Editor$Edit$Advanced$chkIsOnlyForRegisterUser">
                    </li>
                    <li>
                        
                    </li>
                </ul>
                <div>
                    
                     
                </div>                   
                <div>
                    EntryName(友好地址名，只能使用字母、数字、-连字符、_下划线，不超过150个字符)<br>
                    <input name="Editor$Edit$Advanced$txbEntryName" type="text" maxlength="150" id="Editor_Edit_Advanced_txbEntryName" onblur="checkEntryName()" style="width: 470px"><br>
                    <span id="entryname_tip"></span>
                </div>
                <div>
                    摘要:&nbsp;&nbsp;<a href="#" onclick="return insertDescImg()">插入摘要右侧图片</a><br>
                    <textarea name="Editor$Edit$Advanced$txbExcerpt" rows="4" cols="20" id="Editor_Edit_Advanced_txbExcerpt" style="width:98%;"></textarea><br>

                </div>
                <div id="Editor_Edit_Advanced_divTrackBack">
                    <div class="itemspace">
                        Tag标签:
                        <input name="Editor$Edit$Advanced$txbTag" type="text" id="Editor_Edit_Advanced_txbTag" style="width: 500px">&nbsp;<a onclick="leftVal = (screen.width - 300) / 2;topVal = (screen.height - 500) / 2;window.open('/tags/list?id=20160213','_blank','width=300,height=500,toolbars=yes,resizable=yes,scrollbars=yes,left='+leftVal+',top='+topVal);return false;" href="javascript:void(0);">插入已有标签</a>&nbsp;(多个关键字之间用“,”分隔，最多不超过10个)</div>
                    
                </div>

                <div class="itemspace">
                    密码保护:&nbsp;<input name="Editor$Edit$Advanced$tbEnryPassword" type="text" id="Editor_Edit_Advanced_tbEnryPassword" style="width: 200px">
                </div>
            </div>
        
			</div>
		</div>

        <div class="post_block">
            <input type="submit" name="Editor$Edit$lkbPost" value="发布" onclick="return CheckInput();" id="Editor_Edit_lkbPost" class="Button">
            <input type="submit" name="Editor$Edit$lkbDraft" value="存为草稿" onclick="return CheckInput();" id="Editor_Edit_lkbDraft" class="Button">
            
            <input type="submit" name="Editor$Edit$lkbCancel" value="取消" onclick="return CancelPost();" id="Editor_Edit_lkbCancel" class="Button">            
        </div>         
        <div style="clear:both;"></div>      
        <span id="tip_posging" style="padding-left:20px;color:red; vertical-align: middle;"></span> 
        <div style="padding-bottom:10px;margin-top:10px;"> 
        
        </div> 
    </div>

	</div>
</div>

<span id="currentPostId" style="display:none;"></span>






<script type="text/javascript">    
    $(function () {
        if (isEdit) {
            document.getElementById('Editor_Edit_txbTitle').focus();
            if (currentUseEditor == 1) {
                var editor1 = document.getElementById(currentEditorId);
                if (editor1.IsReady) CuteEditor_OnInitialized(editor1);
            }
            setInterval(localPreserver.saveDraftBody, 10000);
            localPreserver.showViewTip();            
        }
        
    });
</script>


						</div>
</body>
</html>