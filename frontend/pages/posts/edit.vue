<template>
  <div id="top">
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
    layout: 'default',
    data: () => ({
    }),
  }
</script>