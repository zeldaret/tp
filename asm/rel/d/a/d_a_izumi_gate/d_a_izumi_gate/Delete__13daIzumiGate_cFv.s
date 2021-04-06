lbl_808493CC:
/* 808493CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808493D0  7C 08 02 A6 */	mflr r0
/* 808493D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808493D8  3C 80 80 85 */	lis r4, l_arcName@ha /* 0x80849438@ha */
/* 808493DC  38 84 94 38 */	addi r4, r4, l_arcName@l /* 0x80849438@l */
/* 808493E0  80 84 00 00 */	lwz r4, 0(r4)
/* 808493E4  38 63 05 A4 */	addi r3, r3, 0x5a4
/* 808493E8  4B 7E 3C 21 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 808493EC  38 60 00 01 */	li r3, 1
/* 808493F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808493F4  7C 08 03 A6 */	mtlr r0
/* 808493F8  38 21 00 10 */	addi r1, r1, 0x10
/* 808493FC  4E 80 00 20 */	blr 
