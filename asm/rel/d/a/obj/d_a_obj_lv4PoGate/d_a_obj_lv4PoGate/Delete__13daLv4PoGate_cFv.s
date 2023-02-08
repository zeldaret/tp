lbl_80C6069C:
/* 80C6069C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C606A0  7C 08 02 A6 */	mflr r0
/* 80C606A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C606A8  3C 80 80 C6 */	lis r4, d_a_obj_lv4PoGate__stringBase0@ha /* 0x80C60848@ha */
/* 80C606AC  38 84 08 48 */	addi r4, r4, d_a_obj_lv4PoGate__stringBase0@l /* 0x80C60848@l */
/* 80C606B0  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C606B4  4B 3C C9 55 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C606B8  38 60 00 01 */	li r3, 1
/* 80C606BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C606C0  7C 08 03 A6 */	mtlr r0
/* 80C606C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C606C8  4E 80 00 20 */	blr 
