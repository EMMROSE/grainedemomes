const formSportSessions = () => {
  const formContainer = document.querySelector('.form-container');

  if (formContainer) {
    const gifts = document.querySelectorAll('.form-container .gift-choices .gift-choice');

    // Add click effect on gifts radio-button
    gifts.forEach((gift) => {
      gift.addEventListener('click', (event) => {
        let previousGift = document.querySelector('.gift-choice.active')
          if (previousGift !== null) {
            previousGift.classList.remove('active');
        }
        event.currentTarget.classList.add('active');
      });
    });


    // Hover effect function for form range element
    // - Array of HTML elements of the range
    // - Name of the dataset

    const hoverEffect = (arr, data) => {
      arr.forEach((element) => {
        element.addEventListener('mouseover', (event) => {
          const currentElement = (event.currentTarget.dataset[`${data}`]);
          arr.slice(0, currentElement).forEach((element) => {
            element.classList.add('hover');
          });
        });

        element.addEventListener('mouseleave', (event) => {
          arr.forEach((element) => {
            element.classList.remove('hover');
          })
        });
      });
    };


    // Click effect function for form range element, takes 3 arguments:
    // - Array of HTML elements of the range
    // - Name of the dataset
    // - Name of icon (if needed)

    const clickEffect = (arr, data, icon = null) => {
      arr.forEach((element) => {
        element.addEventListener('click', (event) => {
          // arr.forEach((element) => {
          //   element.style.color = 'transparent';
          // })
          // element.style.color = 'white';
          const currentElement = (event.currentTarget.dataset[`${data}`]);
          arr.slice(0, currentElement).forEach((element) => {
            element.classList.add('active');
            element.classList.remove('non-active');
            if (icon !== null) element.innerHTML = `<i class="fas fa-${icon}"></i>`;
          });

          arr.slice(currentElement, arr.length).forEach((element) => {
            element.classList.remove('active');
            element.classList.add('non-active');
            if (icon !== null) element.innerHTML = `<i class="far fa-${icon}"></i>`;
          });
        });
      });
    };
  };
};

export { formSportSessions }

