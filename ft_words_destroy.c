#include "libft.h"
#include <stdlib.h>

void                ft_words_destroy(char **words)
{
    size_t  i;

	i = 0;
	while (words[i])
	{
		free(words[i]);
		i++;
	}
	free(words);
}
