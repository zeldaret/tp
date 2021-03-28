lbl_800220F8:
/* 800220F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800220FC  7C 08 02 A6 */	mflr r0
/* 80022100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022104  4B FF F2 C1 */	bl fpcEx_Execute__FP18base_process_class
/* 80022108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002210C  7C 08 03 A6 */	mtlr r0
/* 80022110  38 21 00 10 */	addi r1, r1, 0x10
/* 80022114  4E 80 00 20 */	blr 
