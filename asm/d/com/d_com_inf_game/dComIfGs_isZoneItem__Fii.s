lbl_8002DBD0:
/* 8002DBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DBD4  7C 08 02 A6 */	mflr r0
/* 8002DBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DBE0  7C 7F 1B 78 */	mr r31, r3
/* 8002DBE4  2C 04 00 00 */	cmpwi r4, 0
/* 8002DBE8  41 80 00 08 */	blt lbl_8002DBF0
/* 8002DBEC  48 00 00 18 */	b lbl_8002DC04
lbl_8002DBF0:
/* 8002DBF0  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 8002DBF4  7C 84 07 75 */	extsb. r4, r4
/* 8002DBF8  40 80 00 0C */	bge lbl_8002DC04
/* 8002DBFC  38 60 00 00 */	li r3, 0
/* 8002DC00  48 00 00 28 */	b lbl_8002DC28
lbl_8002DC04:
/* 8002DC04  7C 83 23 78 */	mr r3, r4
/* 8002DC08  4B FF FD A9 */	bl getZoneNo__20dStage_roomControl_cFi
/* 8002DC0C  54 64 28 34 */	slwi r4, r3, 5
/* 8002DC10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002DC14  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 8002DC18  7C 60 22 14 */	add r3, r0, r4
/* 8002DC1C  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8002DC20  7F E4 FB 78 */	mr r4, r31
/* 8002DC24  48 00 72 2D */	bl isItem__13dSv_zoneBit_cCFi
lbl_8002DC28:
/* 8002DC28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DC30  7C 08 03 A6 */	mtlr r0
/* 8002DC34  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DC38  4E 80 00 20 */	blr 
