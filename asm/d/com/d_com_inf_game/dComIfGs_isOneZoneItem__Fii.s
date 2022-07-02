lbl_8002DC3C:
/* 8002DC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DC40  7C 08 02 A6 */	mflr r0
/* 8002DC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DC4C  7C 7F 1B 78 */	mr r31, r3
/* 8002DC50  2C 04 00 00 */	cmpwi r4, 0
/* 8002DC54  41 80 00 08 */	blt lbl_8002DC5C
/* 8002DC58  48 00 00 18 */	b lbl_8002DC70
lbl_8002DC5C:
/* 8002DC5C  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8002DC60  7C 84 07 75 */	extsb. r4, r4
/* 8002DC64  40 80 00 0C */	bge lbl_8002DC70
/* 8002DC68  38 60 00 00 */	li r3, 0
/* 8002DC6C  48 00 00 28 */	b lbl_8002DC94
lbl_8002DC70:
/* 8002DC70  7C 83 23 78 */	mr r3, r4
/* 8002DC74  4B FF FD 3D */	bl getZoneNo__20dStage_roomControl_cFi
/* 8002DC78  54 64 28 34 */	slwi r4, r3, 5
/* 8002DC7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002DC80  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002DC84  7C 60 22 14 */	add r3, r0, r4
/* 8002DC88  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8002DC8C  7F E4 FB 78 */	mr r4, r31
/* 8002DC90  48 00 72 09 */	bl isOneItem__13dSv_zoneBit_cCFi
lbl_8002DC94:
/* 8002DC94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DC9C  7C 08 03 A6 */	mtlr r0
/* 8002DCA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DCA4  4E 80 00 20 */	blr 
