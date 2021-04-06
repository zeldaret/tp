lbl_80099130:
/* 80099130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099134  7C 08 02 A6 */	mflr r0
/* 80099138  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009913C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099144  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099148  38 80 00 15 */	li r4, 0x15
/* 8009914C  38 A0 00 80 */	li r5, 0x80
/* 80099150  4B F9 9E 69 */	bl setItem__17dSv_player_item_cFiUc
/* 80099154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099158  7C 08 03 A6 */	mtlr r0
/* 8009915C  38 21 00 10 */	addi r1, r1, 0x10
/* 80099160  4E 80 00 20 */	blr 
