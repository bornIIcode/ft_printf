CC = cc
CFLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a

RM = rm -rf
SRC = ft_putchar.c  ft_putstr.c  ft_putnbr.c  ft_puthex.c ft_putunbr.c  ft_check_spec.c  ft_putptr.c ft_printf.c\

OBJ = $(SRC:.c=.o)


all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.c 
	$(CC) $(CFLAGS) -c $< -o $@ 

clean:
	$(RM) $(OBJ)

fclean:clean
	$(RM) $(NAME)

re:fclean all
.PHONY: clean fclean re