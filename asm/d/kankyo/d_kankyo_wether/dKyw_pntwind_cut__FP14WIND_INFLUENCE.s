lbl_8005AE58:
/* 8005AE58  28 03 00 00 */	cmplwi r3, 0
/* 8005AE5C  4D 82 00 20 */	beqlr 
/* 8005AE60  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8005AE64  2C 00 00 00 */	cmpwi r0, 0
/* 8005AE68  4D 80 00 20 */	bltlr 
/* 8005AE6C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8005AE70  4C 80 00 20 */	bgelr 
/* 8005AE74  38 80 00 00 */	li r4, 0
/* 8005AE78  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005AE7C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005AE80  54 00 10 3A */	slwi r0, r0, 2
/* 8005AE84  7C 63 02 14 */	add r3, r3, r0
/* 8005AE88  90 83 07 D0 */	stw r4, 0x7d0(r3)
/* 8005AE8C  4E 80 00 20 */	blr 
