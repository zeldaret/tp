lbl_801A8A84:
/* 801A8A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8A88  7C 08 02 A6 */	mflr r0
/* 801A8A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8A90  DB E1 00 08 */	stfd f31, 8(r1)
/* 801A8A94  FF E0 08 90 */	fmr f31, f1
/* 801A8A98  48 00 00 21 */	bl dKy_set_vrboxsoracol_ratio__Ff
/* 801A8A9C  FC 20 F8 90 */	fmr f1, f31
/* 801A8AA0  48 00 00 29 */	bl dKy_set_vrboxkumocol_ratio__Ff
/* 801A8AA4  CB E1 00 08 */	lfd f31, 8(r1)
/* 801A8AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A8AAC  7C 08 03 A6 */	mtlr r0
/* 801A8AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A8AB4  4E 80 00 20 */	blr 
