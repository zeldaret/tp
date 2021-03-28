lbl_80C00A44:
/* 80C00A44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C00A48  7C 08 02 A6 */	mflr r0
/* 80C00A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C00A50  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80C00A54  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80C00A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C00A5C  7C 7F 1B 78 */	mr r31, r3
/* 80C00A60  3C 60 80 C1 */	lis r3, lit_4409@ha
/* 80C00A64  C3 E3 FB A0 */	lfs f31, lit_4409@l(r3)
/* 80C00A68  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80C00A6C  28 00 00 03 */	cmplwi r0, 3
/* 80C00A70  40 82 00 0C */	bne lbl_80C00A7C
/* 80C00A74  3C 60 80 C1 */	lis r3, lit_4410@ha
/* 80C00A78  C3 E3 FB A4 */	lfs f31, lit_4410@l(r3)
lbl_80C00A7C:
/* 80C00A7C  88 1F 08 44 */	lbz r0, 0x844(r31)
/* 80C00A80  28 00 00 00 */	cmplwi r0, 0
/* 80C00A84  41 82 00 10 */	beq lbl_80C00A94
/* 80C00A88  4B 42 EF CC */	b dComIfGs_wolfeye_effect_check__Fv
/* 80C00A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80C00A90  41 82 00 1C */	beq lbl_80C00AAC
lbl_80C00A94:
/* 80C00A94  7F E3 FB 78 */	mr r3, r31
/* 80C00A98  FC 20 F8 90 */	fmr f1, f31
/* 80C00A9C  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80C00AA0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C00AA4  7D 89 03 A6 */	mtctr r12
/* 80C00AA8  4E 80 04 21 */	bctrl 
lbl_80C00AAC:
/* 80C00AAC  38 60 00 01 */	li r3, 1
/* 80C00AB0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80C00AB4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80C00AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C00ABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C00AC0  7C 08 03 A6 */	mtlr r0
/* 80C00AC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C00AC8  4E 80 00 20 */	blr 
