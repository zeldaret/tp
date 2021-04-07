lbl_80C1641C:
/* 80C1641C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16420  7C 08 02 A6 */	mflr r0
/* 80C16424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16428  3C 80 80 C1 */	lis r4, l_arcName@ha /* 0x80C16540@ha */
/* 80C1642C  38 84 65 40 */	addi r4, r4, l_arcName@l /* 0x80C16540@l */
/* 80C16430  80 84 00 00 */	lwz r4, 0(r4)
/* 80C16434  38 63 06 30 */	addi r3, r3, 0x630
/* 80C16438  4B 41 6B D1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C1643C  38 60 00 01 */	li r3, 1
/* 80C16440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16444  7C 08 03 A6 */	mtlr r0
/* 80C16448  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1644C  4E 80 00 20 */	blr 
