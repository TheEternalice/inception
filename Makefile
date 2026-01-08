all:
	sudo mkdir -p /home/ade-rese/data /home/ade-rese/data/wordpress /home/ade-rese/data/mariadb /home/ade-rese/data/grafana
	sudo chmod 755 /home/ade-rese/data /home/ade-rese/data/wordpress /home/ade-rese/data/mariadb /home/ade-rese/data/grafana
	docker-compose -f ./srcs/docker-compose.yml up --build -d

clean:
	docker-compose -f ./srcs/docker-compose.yml down -v

fclean: clean
	docker system prune -af
	sudo rm -rf /home/ade-rese/data /home/ade-rese/data/wordpress /home/ade-rese/data/mariadb /home/ade-rese/data/grafana

re: fclean all

images:
	docker images

networks:
	docker network ls

ps:
	docker ps

.PHONY: all clean fclean re image networks ps
