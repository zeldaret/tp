lbl_80AD3980:
/* 80AD3980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3984  7C 08 02 A6 */	mflr r0
/* 80AD3988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD398C  4B FF DB 7D */	bl Delete__14daNpc_Seira2_cFv
/* 80AD3990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3994  7C 08 03 A6 */	mtlr r0
/* 80AD3998  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD399C  4E 80 00 20 */	blr 
