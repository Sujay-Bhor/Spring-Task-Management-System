document.addEventListener('DOMContentLoaded', () => {
    const urlParams = new URLSearchParams(window.location.search);
    const index = urlParams.get('index');
    const status = urlParams.get('status');

    if (index !== null) {
        document.getElementById('task-index').textContent = index;

        let progressBar = document.getElementById('progress-bar');

        if (status === 'inprogress') {
            progressBar.style.width = '50%';
        } else if (status === 'completed') {
            progressBar.style.width = '100%';
        }
    }
});
