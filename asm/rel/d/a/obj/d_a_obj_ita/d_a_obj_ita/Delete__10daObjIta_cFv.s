lbl_80C29150:
/* 80C29150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29154  7C 08 02 A6 */	mflr r0
/* 80C29158  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2915C  3C 80 80 C3 */	lis r4, l_arcName@ha /* 0x80C29318@ha */
/* 80C29160  38 84 93 18 */	addi r4, r4, l_arcName@l /* 0x80C29318@l */
/* 80C29164  80 84 00 00 */	lwz r4, 0(r4)
/* 80C29168  38 63 06 B8 */	addi r3, r3, 0x6b8
/* 80C2916C  4B 40 3E 9D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C29170  38 60 00 01 */	li r3, 1
/* 80C29174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29178  7C 08 03 A6 */	mtlr r0
/* 80C2917C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29180  4E 80 00 20 */	blr 
