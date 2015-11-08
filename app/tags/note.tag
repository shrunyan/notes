<note>
  <textarea class="note" onchange="{editNote}" data-id="{id}">{msg}</textarea>
  <script type="es6">
    // console.log('note', this)
    this.editNote = (e) => {
      console.log('edit note', e)
      this.msg = e.target.value
      this.opts.store.dispatch({
        type: 'EDIT',
        payload: this.item
      })
    }
  </script>
</note>
