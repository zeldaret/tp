lbl_80C34A98:
/* 80C34A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C34A9C  7C 08 02 A6 */	mflr r0
/* 80C34AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C34AA4  3C 80 80 C3 */	lis r4, l_arcName@ha /* 0x80C34FC0@ha */
/* 80C34AA8  38 84 4F C0 */	addi r4, r4, l_arcName@l /* 0x80C34FC0@l */
/* 80C34AAC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C34AB0  38 63 05 B4 */	addi r3, r3, 0x5b4
/* 80C34AB4  4B 3F 85 55 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C34AB8  38 60 00 01 */	li r3, 1
/* 80C34ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C34AC0  7C 08 03 A6 */	mtlr r0
/* 80C34AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34AC8  4E 80 00 20 */	blr 
