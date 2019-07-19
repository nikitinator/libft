#**************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snikitin <snikitin@student.unit.ua>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/29 20:52:13 by snikitin          #+#    #+#              #
#    Updated: 2018/04/03 17:47:46 by snikitin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_DIR = .

SRC = ft_memset.c ft_bzero.c ft_memcpy.c \
	   ft_isalpha.c ft_isdigit.c ft_isalnum.c \
	   ft_isascii.c ft_isprint.c ft_toupper.c \
	   ft_tolower.c ft_memccpy.c ft_memmove.c \
	   ft_memchr.c ft_memcmp.c ft_strlen.c\
	   ft_strdup.c ft_strcpy.c ft_strncpy.c \
	   ft_strcat.c ft_strncat.c ft_strlcat.c \
	   ft_strcmp.c ft_strncmp.c ft_atoi.c\
	   ft_strchr.c ft_strrchr.c ft_strstr.c\
	   ft_strnstr.c ft_putchar.c ft_putstr.c\
	   ft_putendl.c ft_putnbr.c ft_putchar_fd.c\
	   ft_putstr_fd.c ft_putendl_fd.c\
	   ft_putnbr_fd.c ft_memdel.c ft_strnew.c\
	   ft_strdel.c ft_strclr.c\
	   ft_striter.c ft_striteri.c ft_strmap.c\
	   ft_strmapi.c ft_strequ.c\
	   ft_strnequ.c ft_strsub.c ft_strjoin.c\
	   ft_strtrim.c ft_strsplit.c\
	   ft_itoa.c ft_lstnew.c ft_lstdelone.c\
	   ft_lstdel.c ft_lstadd.c ft_lstiter.c\
	   ft_lstmap.c ft_list_push_back.c\
	   ft_list_push_front.c ft_list_at.c\
	   ft_list_find.c ft_list_last.c\
	   ft_cntwrd.c ft_cntchr.c ft_iswhsp.c\
	   ft_strjoin_free.c ft_atoi_base.c\
	   ft_list_count.c ft_swap_int.c\
	   get_next_line.c ft_words_destroy.c

OBJ = $(SRC:.c=.o)

CC = clang

CFLAGS = -Wall -Wextra -Werror -O3

NAME = libft.a

INCLUDES = ./libft.h

all: $(NAME)
	
$(NAME) : $(OBJ) $(INCLUDES)
	ar rc $(NAME) $(OBJ)

clean:
	/bin/rm -r -f $(OBJ)

fclean: clean
	/bin/rm -r -f $(NAME)

re:	fclean all
