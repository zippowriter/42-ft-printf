# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hkono <hkono@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/05 19:42:50 by hkono             #+#    #+#              #
#    Updated: 2021/04/19 14:42:54 by hkono            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a

SRCS		=	ft_printf.c					\
				src/update_format_info.c	\
				src/print_format.c			\
				src/format_char.c			\
				src/format_string.c			\
				src/format_address.c		\
				src/format_integer.c		\
				src/format_unsigned.c		\
				src/format_hexa.c			\
				src/format_percent.c		\
				src/is_minus_print.c		\
				src/is_minus_print_int.c	\
				src/not_minus_print.c		\
				src/not_minus_print_int.c	\
				src/hexa_converter.c		\
				src/ft_printf_utils.c		\
				src/ft_utoa.c


GENOBJS		=	ft_printf.o				\
				update_format_info.o	\
				print_format.o			\
				format_char.o			\
				format_string.o			\
				format_address.o		\
				format_integer.o		\
				format_unsigned.o		\
				format_hexa.o			\
				format_percent.o		\
				is_minus_print.o		\
				is_minus_print_int.o	\
				not_minus_print.o		\
				not_minus_print_int.o	\
				hexa_converter.o		\
				ft_printf_utils.o		\
				ft_utoa.o

CC			= gcc
FLAGS		= -c -Wall -Wextra -Werror
INCLUDES	= -I./includes
OBJS		= $(SRCS:.c=.o)

$(NAME): $(OBJS)
	$(MAKE) bonus -C ./libft
	cp libft/libft.a $(NAME)
	$(CC) $(FLAGS) $(INCLUDES) $(SRCS)
	ar -rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	$(MAKE) clean -C ./libft
	-rm -rf $(OBJS)
	-rm -rf $(GENOBJS)

fclean: clean
	$(MAKE) fclean -C ./libft
	-rm -rf $(NAME)

re: fclean all

.PHONEY = all clean fclean re
