lbl_8002269C:
/* 8002269C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800226A0  7C 08 02 A6 */	mflr r0
/* 800226A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800226A8  7C 64 1B 78 */	mr r4, r3
/* 800226AC  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 800226B0  4B FF FD D5 */	bl fpcMtd_IsDelete__FP20process_method_classPv
/* 800226B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800226B8  7C 08 03 A6 */	mtlr r0
/* 800226BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800226C0  4E 80 00 20 */	blr 
