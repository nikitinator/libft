#include "libft.h"
#include <stdlib.h>

void                ft_free_words(char **words)
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
