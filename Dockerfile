FROM opensuse/leap:15.6

RUN zypper --non-interactive si -d python311 python311-pip \
    && zypper --non-interactive in python311 \
      fontconfig noto-fonts gnu-free-fonts ubuntu-fonts \
    && python3.11 -m ensurepip \
    && fc-cache -f \
    && fc-list | sort
