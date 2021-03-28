lbl_80021AA8:
/* 80021AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021AAC  7C 08 02 A6 */	mflr r0
/* 80021AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021AB4  7C 64 1B 78 */	mr r4, r3
/* 80021AB8  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 80021ABC  48 00 09 C9 */	bl fpcMtd_IsDelete__FP20process_method_classPv
/* 80021AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021AC4  7C 08 03 A6 */	mtlr r0
/* 80021AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80021ACC  4E 80 00 20 */	blr 
