lbl_80C671A8:
/* 80C671A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C671AC  7C 08 02 A6 */	mflr r0
/* 80C671B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C671B4  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C6760C@ha */
/* 80C671B8  38 84 76 0C */	addi r4, r4, l_arcName@l /* 0x80C6760C@l */
/* 80C671BC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C671C0  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C671C4  4B 3C 5E 45 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C671C8  38 60 00 01 */	li r3, 1
/* 80C671CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C671D0  7C 08 03 A6 */	mtlr r0
/* 80C671D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C671D8  4E 80 00 20 */	blr 
