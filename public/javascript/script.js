document.addEventListener('DOMContentLoaded', function() {
  var toggleTriggers = document.querySelectorAll('.toggle-trigger');
  
  // イベント発火確認用のコードを追加
  toggleTriggers.forEach(function(trigger) {
    trigger.addEventListener('click', function() {
      console.log('イベントが発火しました');
    });
  });
});