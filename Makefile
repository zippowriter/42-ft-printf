# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkono <hkono@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/05 19:42:50 by hkono             #+#    #+#              #
#    Updated: 2021/11/23 16:06:28 by hkono            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

OBJS = src/ft_printf.o \
	src/update_format_info.o \
	src/print_format.o \
	src/format_char.o \
	src/format_string.o \
	src/format_address.o \
	src/format_integer.o \
	src/format_unsigned.o \
	src/format_hexa.o \
	src/format_percent.o \
	src/is_minus_print.o \
	src/is_minus_print_int.o \
	src/not_minus_print.o \
	src/not_minus_print_int.o \
	src/hexa_converter.o \
	src/ft_printf_utils.o \
	src/ft_utoa.o

CC = gcc
CFLAGS = -Wall -Wextra -Werror

LIBFT = libft/libft.a
LIBSRC = src/libsrc.a

$(NAME): $(LIBFT) $(LIBSRC)
	libtool -o $@ $^

$(LIBFT):
	$(MAKE) bonus -C libft

$(LIBSRC):
	$(MAKE) all -C src

all: $(NAME)

clean:
	$(MAKE) clean -C libft
	$(MAKE) clean -C src

fclean:
	$(MAKE) fclean -C libft
	$(MAKE) fclean -C src
	$(RM) $(NAME)

re: fclean all

.PHONEY = all clean fclean re
