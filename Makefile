all:
  docker-compose -f /srcs/docker-compose.yml up --build

clean:
  docker -f /srcs/docker-compose.yml down -v

fclean: clean
  docker system prune -af

re: fclean all

images:
  docker images

networks:
  docker network ls

ps:
  docker compose ps

mariadb_volume:
  docker volume inspect mariadb

wordpress_volume:
  docker volume inspect wordpress

.PHONY all clean fclean re image networks ps mariadb_volume wordpress_volume
