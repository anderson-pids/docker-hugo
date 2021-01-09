FROM klakegg/hugo:0.79.1-ubuntu

ARG USER_ID=1001
ARG GROUP_ID=1001
ARG USERNAME=app

RUN groupadd -g ${GROUP_ID} ${USERNAME} && \
    useradd -ms /bin/bash -u ${USER_ID} -g ${GROUP_ID} ${USERNAME} && \
    usermod -aG root ${USERNAME}

USER ${USERNAME}