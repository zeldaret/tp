lbl_80C59AA0:
/* 80C59AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C59AA4  7C 08 02 A6 */	mflr r0
/* 80C59AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C59AAC  7C 64 1B 78 */	mr r4, r3
/* 80C59AB0  38 64 05 B8 */	addi r3, r4, 0x5b8
/* 80C59AB4  88 04 05 F9 */	lbz r0, 0x5f9(r4)
/* 80C59AB8  54 00 10 3A */	slwi r0, r0, 2
/* 80C59ABC  3C 80 80 C6 */	lis r4, l_resNameIdx@ha /* 0x80C5A15C@ha */
/* 80C59AC0  38 84 A1 5C */	addi r4, r4, l_resNameIdx@l /* 0x80C5A15C@l */
/* 80C59AC4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C59AC8  4B 3D 35 41 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C59ACC  38 60 00 01 */	li r3, 1
/* 80C59AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C59AD4  7C 08 03 A6 */	mtlr r0
/* 80C59AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C59ADC  4E 80 00 20 */	blr 
