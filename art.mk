# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    art.mk                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jveirman <jveirman@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/11 16:56:12 by jveirman          #+#    #+#              #
#    Updated: 2024/06/11 16:56:14 by jveirman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

E		=	\033[0;31m
M		=	\033[0;91m
I		=	\033[0;37m
N		=	\033[0m
T		=	\033[0;37m
G		=	\033[2m
B		=	\033[100m


# GIT_DATE := $(shell git log -1 --pretty=format:%cd --date=short)

# GIT_TOTAL:= $(shell git rev-list --count HEAD)

# GIT_LOG = $(shell git log -1 --pretty=format:%s)

# FORMATTED_LOG := $(shell \
#     message="$(GIT_LOG)"; \
#     total_length=58; \
#     message_length=$$(echo "$$message" | wc -c); \
#     padding_length=$$((total_length - message_length)); \
#     if [ $$message_length -gt $$total_length ]; then \
#         message=$$(echo "$$message" | cut -c1-54)"..."; \
#         padding_length=0; \
#     fi; \
#     padding=$$(printf '%*s' $$padding_length ''); \
#     printf '%s%s' "$$message" "$$padding" \
# )

ART_AFTER_COMPILE := "\n\
--PHILOSOPHERS--"
