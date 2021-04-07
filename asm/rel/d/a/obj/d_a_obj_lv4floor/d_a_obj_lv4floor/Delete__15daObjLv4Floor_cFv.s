lbl_80C67C78:
/* 80C67C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67C7C  7C 08 02 A6 */	mflr r0
/* 80C67C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67C84  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C67DBC@ha */
/* 80C67C88  38 84 7D BC */	addi r4, r4, l_arcName@l /* 0x80C67DBC@l */
/* 80C67C8C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C67C90  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C67C94  4B 3C 53 75 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C67C98  38 60 00 01 */	li r3, 1
/* 80C67C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67CA0  7C 08 03 A6 */	mtlr r0
/* 80C67CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67CA8  4E 80 00 20 */	blr 
