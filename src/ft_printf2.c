/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf2.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nsalles <nsalles@student.42perpignan.fr    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/15 19:43:48 by nsalles           #+#    #+#             */
/*   Updated: 2024/02/12 14:30:46 by nsalles          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

/*
 *	Format and print unsigned int into stdout.
*/
int	ft_putunbr(unsigned int n)
{
	int	i;

	i = 0;
	if (n > 9)
	{
		i += ft_putunbr(n / 10);
		i += ft_putunbr(n % 10);
	}
	else
		return (ft_putchar(n + '0'));
	return (i);
}

/*
 *	Convert unsigned int into hexa lowercase and print it into stdout.
*/
int	ft_putlohexa(unsigned int n)
{
	int		i;

	i = 0;
	if (n > 15)
	{
		i += ft_putlohexa(n / 16);
		i += ft_putlohexa(n % 16);
	}
	else
	{
		if (n < 10)
			return (ft_putchar(n + '0'));
		else
			return (ft_putchar(n - 10 + 'a'));
	}
	return (i);
}

/*
 *	Convert unsigned int into hexa lowercase and print it into stdout.
*/
int	ft_putuphexa(unsigned int n)
{
	int		i;

	i = 0;
	if (n > 15)
	{
		i += ft_putuphexa(n / 16);
		i += ft_putuphexa(n % 16);
	}
	else
	{
		if (n < 10)
			return (ft_putchar(n + '0'));
		else
			return (ft_putchar(n - 10 + 'A'));
	}
	return (i);
}

static int	ft_putptr2(unsigned long long n)
{
	int		i;

	i = 0;
	if (n > 15)
	{
		i += ft_putptr2(n / 16);
		i += ft_putptr2(n % 16);
	}
	else
	{
		if (n < 10)
			return (ft_putchar(n + '0'));
		else
			return (ft_putchar(n - 10 + 'a'));
	}
	return (i);
}
/*
 *	Format and print pointer into stdout.
*/
int	ft_putptr(unsigned long long n)
{
	int	len;

	if (!n)
		return (ft_putstr("(nil)"));
	len = ft_putstr("0x");
	return (len + ft_putptr2(n));
}
