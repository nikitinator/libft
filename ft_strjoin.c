/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: snikitin <snikitin@student.unit.ua>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/30 13:37:05 by snikitin          #+#    #+#             */
/*   Updated: 2017/11/08 14:19:06 by snikitin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*strconcat;
	char	*retstrconcat;

	if (s1 == NULL || s2 == NULL)
		return (NULL);
	if (!(strconcat = malloc(sizeof(char) * (ft_strlen(s1) + ft_strlen(s2) + 1))))
		return (NULL);
	retstrconcat = strconcat;
	while (*s1)
		*strconcat++ = *s1++;
	while (*s2)
		*strconcat++ = *s2++;
	*strconcat = '\0';
	return (retstrconcat);
}
