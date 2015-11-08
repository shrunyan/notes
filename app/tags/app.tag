require('./notes.tag')
<app>
  <section id="main">
    <menu>
      <button type="button" name="button" onclick="{createNote}">Create Note</button>
    </menu>
    <notes notes="{state.notes}"></notes>
  </section>
  <script type="es6">
    // Get initial state
    this.state = opts.store.getState()
    this.on('mount', () => {
      opts.store.subscribe(() => {
        this.update({
          state: opts.store.getState()
        })
      })
    })
    this.createNote = (e) => {
      console.log('create note', e)
    }
  </script>
</app>
