lbl_80676B64:
/* 80676B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676B68  7C 08 02 A6 */	mflr r0
/* 80676B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676B74  93 C1 00 08 */	stw r30, 8(r1)
/* 80676B78  7C 7E 1B 78 */	mr r30, r3
/* 80676B7C  4B 9C 36 25 */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80676B80  7C 7F 1B 78 */	mr r31, r3
/* 80676B84  7F C3 F3 78 */	mr r3, r30
/* 80676B88  4B 9C 36 49 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80676B8C  7C 64 1B 78 */	mr r4, r3
/* 80676B90  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80676B94  28 00 00 02 */	cmplwi r0, 2
/* 80676B98  40 82 00 2C */	bne lbl_80676BC4
/* 80676B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676BA4  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80676BA8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80676BAC  7C 05 07 74 */	extsb r5, r0
/* 80676BB0  4B 9B E7 B1 */	bl isSwitch__10dSv_info_cCFii
/* 80676BB4  2C 03 00 00 */	cmpwi r3, 0
/* 80676BB8  40 82 00 0C */	bne lbl_80676BC4
/* 80676BBC  38 60 00 01 */	li r3, 1
/* 80676BC0  48 00 00 08 */	b lbl_80676BC8
lbl_80676BC4:
/* 80676BC4  38 60 00 00 */	li r3, 0
lbl_80676BC8:
/* 80676BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80676BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80676BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676BD4  7C 08 03 A6 */	mtlr r0
/* 80676BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80676BDC  4E 80 00 20 */	blr 
