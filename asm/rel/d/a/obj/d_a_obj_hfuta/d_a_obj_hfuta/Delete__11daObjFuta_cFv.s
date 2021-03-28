lbl_80C1ED68:
/* 80C1ED68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1ED6C  7C 08 02 A6 */	mflr r0
/* 80C1ED70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1ED74  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C1ED78  38 84 EE C4 */	addi r4, r4, l_arcName@l
/* 80C1ED7C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1ED80  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C1ED84  4B 40 E2 84 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C1ED88  38 60 00 01 */	li r3, 1
/* 80C1ED8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1ED90  7C 08 03 A6 */	mtlr r0
/* 80C1ED94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1ED98  4E 80 00 20 */	blr 
