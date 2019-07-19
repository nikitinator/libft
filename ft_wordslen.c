#include "libft.h"

size_t ft_wordslen(char **words)
{
    size_t len;

    len = 0;
    while (words[len])
    {
        len++;
    }
    return (len);
}
