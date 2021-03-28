lbl_805CFA54:
/* 805CFA54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CFA58  7C 08 02 A6 */	mflr r0
/* 805CFA5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CFA60  7C 6C 1B 78 */	mr r12, r3
/* 805CFA64  7C 8B 23 78 */	mr r11, r4
/* 805CFA68  7C A8 2B 78 */	mr r8, r5
/* 805CFA6C  7C C9 33 78 */	mr r9, r6
/* 805CFA70  7C EA 3B 78 */	mr r10, r7
/* 805CFA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CFA78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CFA7C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805CFA80  38 00 00 FF */	li r0, 0xff
/* 805CFA84  90 01 00 08 */	stw r0, 8(r1)
/* 805CFA88  38 80 00 00 */	li r4, 0
/* 805CFA8C  90 81 00 0C */	stw r4, 0xc(r1)
/* 805CFA90  38 00 FF FF */	li r0, -1
/* 805CFA94  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CFA98  90 81 00 14 */	stw r4, 0x14(r1)
/* 805CFA9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805CFAA0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805CFAA4  7D 84 63 78 */	mr r4, r12
/* 805CFAA8  38 A0 00 00 */	li r5, 0
/* 805CFAAC  7D 66 5B 78 */	mr r6, r11
/* 805CFAB0  7D 07 43 78 */	mr r7, r8
/* 805CFAB4  39 00 00 00 */	li r8, 0
/* 805CFAB8  3D 60 80 5E */	lis r11, lit_3934@ha
/* 805CFABC  C0 2B CA 5C */	lfs f1, lit_3934@l(r11)
/* 805CFAC0  4B A7 DA 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805CFAC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CFAC8  7C 08 03 A6 */	mtlr r0
/* 805CFACC  38 21 00 20 */	addi r1, r1, 0x20
/* 805CFAD0  4E 80 00 20 */	blr 
