lbl_80259200:
/* 80259200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80259204  7C 08 02 A6 */	mflr r0
/* 80259208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025920C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80259214  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80259218  4B DF 2E 3D */	bl cleanup__13dPa_control_cFv
/* 8025921C  38 60 00 01 */	li r3, 1
/* 80259220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80259224  7C 08 03 A6 */	mtlr r0
/* 80259228  38 21 00 10 */	addi r1, r1, 0x10
/* 8025922C  4E 80 00 20 */	blr 
