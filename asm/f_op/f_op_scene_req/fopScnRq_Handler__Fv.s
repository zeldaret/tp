lbl_8001F11C:
/* 8001F11C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F120  7C 08 02 A6 */	mflr r0
/* 8001F124  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F128  48 00 39 D5 */	bl fpcNdRq_Handler__Fv
/* 8001F12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F130  7C 08 03 A6 */	mtlr r0
/* 8001F134  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F138  4E 80 00 20 */	blr 
