## Install Minikube

To install Minikube, run the following commands:

```html
<pre id="bash-code">
<code>
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
</code>
</pre>

<button onclick="copyBashCode()">Copy Code</button>

<script>
function copyBashCode() {
    var codeBlock = document.getElementById('bash-code');
    var range = document.createRange();
    range.selectNode(codeBlock);
    window.getSelection().removeAllRanges();  // clear current selection
    window.getSelection().addRange(range);    // to select text
    document.execCommand('copy');
    window.getSelection().removeAllRanges();  // to deselect
    alert('Code copied to clipboard!');
}
</script>
