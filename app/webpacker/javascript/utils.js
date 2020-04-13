export function copyToClipboard(text) {
  let successful = false;
  let textArea = document.createElement('textarea');

  textArea.value = text;
  document.body.appendChild(textArea);
  textArea.select();

  let range = document.createRange();
  range.selectNodeContents(textArea);

  let s = window.getSelection();
  s.removeAllRanges();
  s.addRange(range);

  textArea.setSelectionRange(0, 999999); // A big number, to cover anything that could be inside the element.

  try {
    successful = document.execCommand('copy');
  } catch (err) {
    successful = false;
  }

  document.body.removeChild(textArea);

  return successful;
}
