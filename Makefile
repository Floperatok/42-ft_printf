# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nsalles <nsalles@student.42perpignan.fr    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/15 18:55:17 by nsalles           #+#    #+#              #
#    Updated: 2024/02/12 01:54:03 by nsalles          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC			=	cc
CFLAGS		=	-Wall -Werror -Wextra
NAME		=	ft_printf.a

SRC_PATH	=	src/
SRC			=	ft_printf.c \
				ft_printf2.c

OBJ_PATH	=	objs/
OBJ			=	$(addprefix $(OBJ_PATH), $(SRC:.c=.o))

INCS		=	./include/


all:	$(NAME)

$(NAME):	$(OBJ)
	ar rcs $(NAME) $(OBJ)

$(OBJ_PATH)%.o:	$(SRC_PATH)%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -I $(INCS) -c $< -o $@

clean:
	rm -rf $(OBJ_PATH)

fclean:
	rm -rf $(OBJ_PATH)
	rm -f $(NAME)

re: fclean all
