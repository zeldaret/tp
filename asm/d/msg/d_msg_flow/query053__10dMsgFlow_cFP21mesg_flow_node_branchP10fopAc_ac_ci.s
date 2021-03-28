lbl_8024C3D4:
/* 8024C3D4  38 80 00 00 */	li r4, 0
/* 8024C3D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C3DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C3E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8024C3E4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8024C3E8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8024C3EC  41 82 00 08 */	beq lbl_8024C3F4
/* 8024C3F0  38 80 00 01 */	li r4, 1
lbl_8024C3F4:
/* 8024C3F4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8024C3F8  4E 80 00 20 */	blr 
