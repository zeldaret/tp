lbl_800F3DFC:
/* 800F3DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F3E00  7C 08 02 A6 */	mflr r0
/* 800F3E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F3E08  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800F3E0C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800F3E10  7D 89 03 A6 */	mtctr r12
/* 800F3E14  4E 80 04 21 */	bctrl 
/* 800F3E18  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 800F3E1C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 800F3E20  48 25 26 91 */	bl PSMTXCopy
/* 800F3E24  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F3E28  FC 40 08 90 */	fmr f2, f1
/* 800F3E2C  C0 62 92 9C */	lfs f3, lit_5944(r2)
/* 800F3E30  4B F1 8F 6D */	bl transM__14mDoMtx_stack_cFfff
/* 800F3E34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800F3E38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800F3E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F3E40  7C 08 03 A6 */	mtlr r0
/* 800F3E44  38 21 00 10 */	addi r1, r1, 0x10
/* 800F3E48  4E 80 00 20 */	blr 
