CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_region_orders` AS select `m`.`order_by` AS `order_by`,`m`.`order_id` AS `order_id`,`m`.`date_created` AS `date_created`,`m`.`station_id` AS `station_id`,`ruv`.`region` AS `region`,`mr`.`region_name` AS `region_name` from ((`m_order` `m` left join `region_userbase_view` `ruv` on((`ruv`.`user_id` = `m`.`order_by`))) left join `m_region` `mr` on((`mr`.`id` = `ruv`.`region`))) where (`m`.`station_level` = 2)