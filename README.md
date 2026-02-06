# basketball-team-management-db
The Basketball Team Management project models the organizational, competitive, and financial structure of a professional basketball ecosystem, inspired by leagues such as the NBA and FIBA. Its objective is to provide a comprehensive relational database that represents the key entities and interactions within professional basketball, enabling both sports-oriented and business-oriented analyses.

At the highest level, the database contains multiple leagues, each composed of several teams. Every team is defined by attributes such as its name, home city, arena, and league affiliation. Teams employ coaching staff, including one head coach and several assistant coaches, each specializing in areas such as offense, defense, shooting, or tactical preparation. This structure reflects the real-world organization of modern professional basketball franchises.

Player management is a central part of the system. The Players entity stores detailed personal and performance-related information, including age, position, height, wingspan, and per-game statistics such as points, rebounds, assists, steals, and blocks. Historical in-game performance is captured through the PlayerStats entity, which records individual player statistics for every match played. This enables advanced analytical tasks such as tracking improvement, comparing player roles, or evaluating match impact.

The Matches entity documents all official games between teams, storing home and away teams, final scores, and the match winner. The database structure supports analysis of team performance, competitive balance, and season results.

Financial aspects are represented through Contracts and Sponsorships. Contracts define salary, duration, and team affiliation for each player, ensuring that only one active contract exists per player at a given time. Sponsorships store agreements between teams and commercial partners, including sponsor names and financial contributions.

Thanks to this structure, users can explore important analytical questions such as:

"Show the number of players in each team."

Overall, this project provides a solid foundation for future Business Intelligence (BI) applications by connecting athletic performance with organizational and financial dimensions of professional basketball.

## Author
This project was created by Igor Belyakov as an academic semester project  
(Faculty of Economics and Management, CZU Prague).

