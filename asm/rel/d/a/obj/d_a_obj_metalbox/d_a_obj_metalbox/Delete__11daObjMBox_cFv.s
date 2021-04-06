lbl_80593394:
/* 80593394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593398  7C 08 02 A6 */	mflr r0
/* 8059339C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805933A0  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x8059347C@ha */
/* 805933A4  38 84 34 7C */	addi r4, r4, l_arcName@l /* 0x8059347C@l */
/* 805933A8  80 84 00 00 */	lwz r4, 0(r4)
/* 805933AC  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 805933B0  4B A9 9C 59 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805933B4  38 60 00 01 */	li r3, 1
/* 805933B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805933BC  7C 08 03 A6 */	mtlr r0
/* 805933C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805933C4  4E 80 00 20 */	blr 
