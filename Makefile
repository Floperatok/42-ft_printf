# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nsalles <nsalles@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/15 18:55:17 by nsalles           #+#    #+#              #
#    Updated: 2023/10/16 09:03:56 by nsalles          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC		=	cc

CFLAGS	=	-Wall -Wextra -Werror

NAME	=	libftprintf.a

SRCS	=	ft_printf.c ft_printf2.c

OBJECTS	=	$(SRCS:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJECTS)
			ar rcs $(NAME) $(OBJECTS)
%.o:	%.c
		$(CC) $(CFLAGS) -c $< -o $@
clean:
		rm -f $(OBJECTS)

fclean: clean
		rm -f $(NAME)

re:		fclean all 

.PHONY: clean fclean re all