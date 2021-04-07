lbl_80CF582C:
/* 80CF582C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5830  7C 08 02 A6 */	mflr r0
/* 80CF5834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5838  3C 80 80 CF */	lis r4, l_arcName@ha /* 0x80CF5A40@ha */
/* 80CF583C  38 84 5A 40 */	addi r4, r4, l_arcName@l /* 0x80CF5A40@l */
/* 80CF5840  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF5844  38 63 05 7C */	addi r3, r3, 0x57c
/* 80CF5848  4B 33 77 C1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CF584C  38 60 00 01 */	li r3, 1
/* 80CF5850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5854  7C 08 03 A6 */	mtlr r0
/* 80CF5858  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF585C  4E 80 00 20 */	blr 
