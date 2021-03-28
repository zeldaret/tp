lbl_8001F1F8:
/* 8001F1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F1FC  7C 08 02 A6 */	mflr r0
/* 8001F200  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F204  7C 64 1B 78 */	mr r4, r3
/* 8001F208  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 8001F20C  48 00 32 79 */	bl fpcMtd_IsDelete__FP20process_method_classPv
/* 8001F210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F214  7C 08 03 A6 */	mtlr r0
/* 8001F218  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F21C  4E 80 00 20 */	blr 
