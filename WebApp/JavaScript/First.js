document.addEventListener('DOMContentLoaded', () => {
    const taskLinks = document.querySelectorAll('.task-link');

    taskLinks.forEach(link => {
        const index = link.getAttribute('data-index');
        const savedStatus = localStorage.getItem(`task-status-${index}`);

        if (savedStatus) {
            link.textContent = savedStatus === 'inprogress' ? 'In Progress' : 'Completed';
            link.setAttribute('data-status', savedStatus);
        }

        link.addEventListener('click', (event) => {
            event.preventDefault();
            let status = link.getAttribute('data-status');
            if (status === 'Accept') {
                status = 'inprogress';
                localStorage.setItem(`task-status-${index}`, status);
                link.textContent = 'In Progress';
            } else if (status === 'Complete') {
                status = 'completed';
                localStorage.setItem(`task-status-${index}`, status);
                link.textContent = 'Completed';
            }
            link.setAttribute('data-status', status);

            window.location.href = `page2.html?index=${index}&status=${status}`;
        });
    });
});
