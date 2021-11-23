# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkono <hkono@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/22 23:11:58 by hkono             #+#    #+#              #
#    Updated: 2021/11/23 11:59:29 by hkono            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

OBJS = ft_memset.o \
	ft_bzero.o \
	ft_memcpy.o \
	ft_memccpy.o \
	ft_memmove.o \
	ft_memchr.o \
	ft_memcmp.o \
	ft_strlen.o \
	ft_strlcpy.o \
	ft_strlcat.o \
	ft_strchr.o \
	ft_strrchr.o \
	ft_strnstr.o \
	ft_strncmp.o \
	ft_atoi.o \
	ft_isalpha.o \
	ft_isdigit.o \
	ft_isalnum.o \
	ft_isascii.o \
	ft_isprint.o \
	ft_toupper.o \
	ft_tolower.o \
	ft_calloc.o \
	ft_strdup.o \
	ft_substr.o \
	ft_strjoin.o \
	ft_strtrim.o \
	ft_split.o \
	ft_itoa.o \
	ft_strmapi.o \
	ft_putchar_fd.o \
	ft_putstr_fd.o \
	ft_putendl_fd.o \
	ft_putnbr_fd.o

BOBJS = ft_lstnew.o \
	ft_lstadd_front.o \
	ft_lstsize.o \
	ft_lstlast.o \
	ft_lstadd_back.o \
	ft_lstdelone.o \
	ft_lstclear.o \
	ft_lstiter.o \
	ft_lstmap.o

CC = gcc
FLAGS = -Wall -Wextra -Werror
INCLUDES = -I../includes

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

.SUFFIXES: .c .o

.c.o:
	$(CC) $(FLAGS) -c $< $(INCLUDES)

all: $(NAME)

clean:
	rm -f $(OBJS) $(BOBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

bonus: $(OBJS) $(BOBJS)
	ar rcs $(NAME) $(OBJS) $(BOBJS)

.PHONEY = all clean fclean re bonus
