document.addEventListener('DOMContentLoaded', function() {
  var toggleTriggers = document.querySelectorAll('.toggle-trigger');

  toggleTriggers.forEach(function(trigger) {
    trigger.addEventListener('click', function() {
      // トグル対象の要素を取得
      var toggleContent = this.nextElementSibling;

      // collapsed クラスの追加・削除
      toggleContent.classList.toggle('collapsed');
    });
  });
});

