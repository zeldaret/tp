lbl_80C44F80:
/* 80C44F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44F84  7C 08 02 A6 */	mflr r0
/* 80C44F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44F90  93 C1 00 08 */	stw r30, 8(r1)
/* 80C44F94  7C 7E 1B 78 */	mr r30, r3
/* 80C44F98  3C 80 80 C4 */	lis r4, lit_3683@ha
/* 80C44F9C  3B E4 51 94 */	addi r31, r4, lit_3683@l
/* 80C44FA0  48 00 00 69 */	bl chkEvent__9daKiPot_cFv
/* 80C44FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80C44FA8  41 82 00 48 */	beq lbl_80C44FF0
/* 80C44FAC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80C44FB0  28 00 00 06 */	cmplwi r0, 6
/* 80C44FB4  41 82 00 3C */	beq lbl_80C44FF0
/* 80C44FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C44FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C44FC0  38 63 5B 54 */	addi r3, r3, 0x5b54
/* 80C44FC4  7F C4 F3 78 */	mr r4, r30
/* 80C44FC8  38 A0 00 6A */	li r5, 0x6a
/* 80C44FCC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C44FD0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C44FD4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80C44FD8  38 C0 20 00 */	li r6, 0x2000
/* 80C44FDC  38 E0 00 01 */	li r7, 1
/* 80C44FE0  4B 42 EA 28 */	b request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
/* 80C44FE4  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80C44FE8  60 00 00 40 */	ori r0, r0, 0x40
/* 80C44FEC  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80C44FF0:
/* 80C44FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C44FF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C44FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44FFC  7C 08 03 A6 */	mtlr r0
/* 80C45000  38 21 00 10 */	addi r1, r1, 0x10
/* 80C45004  4E 80 00 20 */	blr 
