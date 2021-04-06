lbl_80C1D91C:
/* 80C1D91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1D920  7C 08 02 A6 */	mflr r0
/* 80C1D924  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1D928  3C 80 80 C2 */	lis r4, d_a_obj_heavySw__stringBase0@ha /* 0x80C1DAE0@ha */
/* 80C1D92C  38 84 DA E0 */	addi r4, r4, d_a_obj_heavySw__stringBase0@l /* 0x80C1DAE0@l */
/* 80C1D930  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C1D934  4B 40 F6 D5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C1D938  38 60 00 01 */	li r3, 1
/* 80C1D93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1D940  7C 08 03 A6 */	mtlr r0
/* 80C1D944  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1D948  4E 80 00 20 */	blr 
