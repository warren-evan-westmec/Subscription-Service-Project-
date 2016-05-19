CREATE TABLE `users` (
       `id` int(10) AUTO_INCREMENT,
       `username` varchar(50),
       `password` varchar(32),
       PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET utf8;

    INSERT INTO `users` (`id`, `username`, `password`) VALUES
    ('1', 'admin', '5ebe2294ecd0e0f08eab7690d2a6ee69');


CREATE TABLE `newsletters` (
   `id` int(10) AUTO_INCREMENT,
   `name` varchar(50),
   `description` varchar(255),
   `visible` varchar(10),
   PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET utf8;

CREATE TABLE `templates` (
   `id` int(10) AUTO_INCREMENT,
   `name` varchar(50),
   `columns` tinyint(5),
   `body` text,
   PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET utf8;

CREATE TABLE `subscribers` (
       `id` tinyint(10) AUTO_INCREMENT,
       `name` varchar(50),
       `email` varchar(50),
       PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET utf8;

CREATE TABLE `subscriptions` (
       `id` tinyint(10) AUTO_INCREMENT,
       `subscriber_id` tinyint(10),
       `newsletter_id` tinyint(10),
       PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET utf8;

CREATE TABLE `messages` (
       `id` tinyint(10) AUTO_INCREMENT,
       `subject` varchar(255),
       `leftcol` text,
       `rightcol` text,
       `template_id` tinyint(10),
       PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET utf8;