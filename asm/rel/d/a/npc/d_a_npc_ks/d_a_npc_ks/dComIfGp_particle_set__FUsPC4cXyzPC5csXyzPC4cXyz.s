lbl_80A5DBD4:
/* 80A5DBD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A5DBD8  7C 08 02 A6 */	mflr r0
/* 80A5DBDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A5DBE0  7C 6A 1B 78 */	mr r10, r3
/* 80A5DBE4  7C 87 23 78 */	mr r7, r4
/* 80A5DBE8  7C A8 2B 78 */	mr r8, r5
/* 80A5DBEC  7C C9 33 78 */	mr r9, r6
/* 80A5DBF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5DBF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5DBF8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80A5DBFC  38 80 00 00 */	li r4, 0
/* 80A5DC00  90 81 00 08 */	stw r4, 8(r1)
/* 80A5DC04  38 00 FF FF */	li r0, -1
/* 80A5DC08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A5DC0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80A5DC10  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A5DC14  90 81 00 18 */	stw r4, 0x18(r1)
/* 80A5DC18  38 80 00 00 */	li r4, 0
/* 80A5DC1C  7D 45 53 78 */	mr r5, r10
/* 80A5DC20  7C E6 3B 78 */	mr r6, r7
/* 80A5DC24  38 E0 00 00 */	li r7, 0
/* 80A5DC28  39 40 00 FF */	li r10, 0xff
/* 80A5DC2C  3D 60 80 A6 */	lis r11, lit_4146@ha
/* 80A5DC30  C0 2B DF 24 */	lfs f1, lit_4146@l(r11)
/* 80A5DC34  4B 5E EE 5C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80A5DC38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A5DC3C  7C 08 03 A6 */	mtlr r0
/* 80A5DC40  38 21 00 20 */	addi r1, r1, 0x20
/* 80A5DC44  4E 80 00 20 */	blr 
