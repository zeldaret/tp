lbl_8001EB5C:
/* 8001EB5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EB60  7C 08 02 A6 */	mflr r0
/* 8001EB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EB68  7C 64 1B 78 */	mr r4, r3
/* 8001EB6C  80 63 01 AC */	lwz r3, 0x1ac(r3)
/* 8001EB70  48 00 38 F1 */	bl fpcMtd_Execute__FP20process_method_classPv
/* 8001EB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EB78  7C 08 03 A6 */	mtlr r0
/* 8001EB7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EB80  4E 80 00 20 */	blr 
