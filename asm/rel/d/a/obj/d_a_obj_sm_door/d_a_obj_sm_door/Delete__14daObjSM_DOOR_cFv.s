lbl_80CD9544:
/* 80CD9544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9548  7C 08 02 A6 */	mflr r0
/* 80CD954C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD9550  3C 80 80 CE */	lis r4, l_arcName@ha
/* 80CD9554  38 84 96 8C */	addi r4, r4, l_arcName@l
/* 80CD9558  80 84 00 00 */	lwz r4, 0(r4)
/* 80CD955C  38 63 05 D4 */	addi r3, r3, 0x5d4
/* 80CD9560  4B 35 3A A8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CD9564  38 60 00 01 */	li r3, 1
/* 80CD9568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD956C  7C 08 03 A6 */	mtlr r0
/* 80CD9570  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9574  4E 80 00 20 */	blr 
