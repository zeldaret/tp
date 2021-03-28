lbl_80BDD2B8:
/* 80BDD2B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD2BC  7C 08 02 A6 */	mflr r0
/* 80BDD2C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD2C4  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BDD2C8  38 84 D7 08 */	addi r4, r4, l_arcName@l
/* 80BDD2CC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDD2D0  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BDD2D4  4B 44 FD 34 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BDD2D8  38 60 00 01 */	li r3, 1
/* 80BDD2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD2E0  7C 08 03 A6 */	mtlr r0
/* 80BDD2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD2E8  4E 80 00 20 */	blr 
