<template>
  <div id="top">
    <h1>Edit</h1>
    <p>Markdownで書いてください。</p>
    <!-- Text Editor -->
    <TuiEditor
      mode="markdown"
      preview-style="vertical"
      height="500px"
    />
    <!-- Markdown Viewer -->
    <TuiEditorViewer
      :value="content"
    />
  </div>
</template>

<script>
  export default {
    layout: 'editorLayout',
    data: () => ({
      content: ' '
    }),
  }
</script>