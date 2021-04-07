lbl_80678AEC:
/* 80678AEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80678AF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80678AF4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80678AF8  80 04 05 70 */	lwz r0, 0x570(r4)
/* 80678AFC  60 00 08 00 */	ori r0, r0, 0x800
/* 80678B00  90 04 05 70 */	stw r0, 0x570(r4)
/* 80678B04  38 00 00 00 */	li r0, 0
/* 80678B08  98 03 06 49 */	stb r0, 0x649(r3)
/* 80678B0C  4E 80 00 20 */	blr 
