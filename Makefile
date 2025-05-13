NAME = libftprintf.a
SOURCES = ft_printf.c ft_putnbr.c ft_putstr.c ft_putchar.c ft_putunsnbr.c ft_printhex.c \
		  ft_hexlower.c ft_hexupper.c

OBJECTS = $(SOURCES:.c=.o)
CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rcs $@ $(OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(BOBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
