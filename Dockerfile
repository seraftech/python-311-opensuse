FROM opensuse/leap:15.5

RUN zypper --non-interactive si -d python311 python311-pip \
    && zypper --non-interactive in python311 \
    && python3.11 -m ensurepip