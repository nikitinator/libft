#include "libft.h"
#include <stdlib.h>

void *ft_emalloc(size_t size)
{
    void *mem;

    mem = malloc(size);
    if (mem == NULL)
    {
        //message?
        exit (1);
    }
    return (mem);
}

char    **ft_wordsdup(char **words)
{
    size_t  i;
    size_t  wordslen;
    char    **new_words;

    i = 0;
    wordslen = ft_wordslen(words);
    new_words = ft_emalloc((wordslen + 1) * sizeof(*words));
    while (i < wordslen)
    {
        new_words[i] = ft_strdup(words[i]);
        i++;
    }
    new_words[i] = 0;
    return (new_words);
}
