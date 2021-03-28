lbl_80144724:
/* 80144724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80144728  7C 08 02 A6 */	mflr r0
/* 8014472C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80144730  38 63 05 6C */	addi r3, r3, 0x56c
/* 80144734  4B EE 88 D5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80144738  38 60 00 01 */	li r3, 1
/* 8014473C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80144740  7C 08 03 A6 */	mtlr r0
/* 80144744  38 21 00 10 */	addi r1, r1, 0x10
/* 80144748  4E 80 00 20 */	blr 
