require('./note.tag')
<notes>
  <ul class="notes">
    <li each="{opts.notes}">
      <note></note>
    </li>
  </ul>
  <script type="es6">
    console.log('notes', this)
  </script>
</notes>
