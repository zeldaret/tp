lbl_8003D818:
/* 8003D818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003D81C  7C 08 02 A6 */	mflr r0
/* 8003D820  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003D824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003D828  7C 7F 1B 78 */	mr r31, r3
/* 8003D82C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8003D830  80 83 00 08 */	lwz r4, 8(r3)
/* 8003D834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003D838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003D83C  88 84 00 02 */	lbz r4, 2(r4)
/* 8003D840  4B FF 78 69 */	bl getSave2__10dSv_save_cFi
/* 8003D844  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 8003D848  4B FF 72 A5 */	bl isVisitedRoom__13dSv_memory2_cFi
/* 8003D84C  30 03 FF FF */	addic r0, r3, -1
/* 8003D850  7C 60 19 10 */	subfe r3, r0, r3
/* 8003D854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003D858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D85C  7C 08 03 A6 */	mtlr r0
/* 8003D860  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D864  4E 80 00 20 */	blr 
