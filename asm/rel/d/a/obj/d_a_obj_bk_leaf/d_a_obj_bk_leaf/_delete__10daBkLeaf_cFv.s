lbl_80BB6654:
/* 80BB6654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6658  7C 08 02 A6 */	mflr r0
/* 80BB665C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6660  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BB6758@ha */
/* 80BB6664  38 84 67 58 */	addi r4, r4, l_arcName@l /* 0x80BB6758@l */
/* 80BB6668  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB666C  38 63 05 68 */	addi r3, r3, 0x568
/* 80BB6670  4B 47 69 99 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BB6674  38 60 00 01 */	li r3, 1
/* 80BB6678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB667C  7C 08 03 A6 */	mtlr r0
/* 80BB6680  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6684  4E 80 00 20 */	blr 
