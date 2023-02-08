lbl_80CAAA0C:
/* 80CAAA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAAA10  7C 08 02 A6 */	mflr r0
/* 80CAAA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAAA18  38 00 00 00 */	li r0, 0
/* 80CAAA1C  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80CAAA20  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CAAA24  3C 80 80 CB */	lis r4, l_arcName@ha /* 0x80CAAB6C@ha */
/* 80CAAA28  38 84 AB 6C */	addi r4, r4, l_arcName@l /* 0x80CAAB6C@l */
/* 80CAAA2C  80 84 00 00 */	lwz r4, 0(r4)
/* 80CAAA30  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80CAAA34  4B 38 25 D5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CAAA38  38 60 00 01 */	li r3, 1
/* 80CAAA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAAA40  7C 08 03 A6 */	mtlr r0
/* 80CAAA44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAAA48  4E 80 00 20 */	blr 
