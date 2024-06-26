/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jveirman <jveirman@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/13 17:21:43 by jveirman          #+#    #+#             */
/*   Updated: 2024/06/14 14:32:19 by jveirman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/philo.h"

void	state_msg(char *str, t_philo *philo)
{
	long	time;
	
	pthread_mutex_lock(philo->m_msg);
	time = what_time_is_it() - philo->start_time;
	printf("[%ld] %d %s\n", time, philo->current, str);
	pthread_mutex_unlock(philo->m_msg);
}

long	what_time_is_it()
{
	struct timeval tv;

	if (gettimeofday(&tv, NULL) == -1)
		return (0); // wip: error to get the time
	return (tv.tv_sec * 1000 + tv.tv_usec / 1000);
}
