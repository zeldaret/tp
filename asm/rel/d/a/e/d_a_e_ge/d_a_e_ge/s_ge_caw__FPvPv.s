lbl_806C7F44:
/* 806C7F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C7F48  7C 08 02 A6 */	mflr r0
/* 806C7F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C7F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C7F54  93 C1 00 08 */	stw r30, 8(r1)
/* 806C7F58  7C 7E 1B 78 */	mr r30, r3
/* 806C7F5C  7C 9F 23 78 */	mr r31, r4
/* 806C7F60  4B 95 0D 81 */	bl fopAc_IsActor__FPv
/* 806C7F64  2C 03 00 00 */	cmpwi r3, 0
/* 806C7F68  41 82 00 60 */	beq lbl_806C7FC8
/* 806C7F6C  28 1E 00 00 */	cmplwi r30, 0
/* 806C7F70  41 82 00 0C */	beq lbl_806C7F7C
/* 806C7F74  80 7E 00 04 */	lwz r3, 4(r30)
/* 806C7F78  48 00 00 08 */	b lbl_806C7F80
lbl_806C7F7C:
/* 806C7F7C  38 60 FF FF */	li r3, -1
lbl_806C7F80:
/* 806C7F80  4B 95 A1 B9 */	bl fpcM_IsCreating__FUi
/* 806C7F84  2C 03 00 00 */	cmpwi r3, 0
/* 806C7F88  40 82 00 40 */	bne lbl_806C7FC8
/* 806C7F8C  A8 1E 00 08 */	lha r0, 8(r30)
/* 806C7F90  2C 00 01 F2 */	cmpwi r0, 0x1f2
/* 806C7F94  40 82 00 34 */	bne lbl_806C7FC8
/* 806C7F98  7C 1E F8 40 */	cmplw r30, r31
/* 806C7F9C  41 82 00 2C */	beq lbl_806C7FC8
/* 806C7FA0  7F C3 F3 78 */	mr r3, r30
/* 806C7FA4  7F E4 FB 78 */	mr r4, r31
/* 806C7FA8  4B 95 28 39 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806C7FAC  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806CD368@ha */
/* 806C7FB0  38 63 D3 68 */	addi r3, r3, l_HIO@l /* 0x806CD368@l */
/* 806C7FB4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806C7FB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C7FBC  40 80 00 0C */	bge lbl_806C7FC8
/* 806C7FC0  7F C3 F3 78 */	mr r3, r30
/* 806C7FC4  48 00 32 BD */	bl setCaw__8daE_GE_cFv
lbl_806C7FC8:
/* 806C7FC8  38 60 00 00 */	li r3, 0
/* 806C7FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C7FD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806C7FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C7FD8  7C 08 03 A6 */	mtlr r0
/* 806C7FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 806C7FE0  4E 80 00 20 */	blr 
