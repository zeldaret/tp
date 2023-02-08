lbl_80C62540:
/* 80C62540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62544  7C 08 02 A6 */	mflr r0
/* 80C62548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6254C  3C 80 80 C6 */	lis r4, d_a_obj_lv4SlideWall__stringBase0@ha /* 0x80C626C4@ha */
/* 80C62550  38 84 26 C4 */	addi r4, r4, d_a_obj_lv4SlideWall__stringBase0@l /* 0x80C626C4@l */
/* 80C62554  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C62558  4B 3C AA B1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C6255C  38 60 00 01 */	li r3, 1
/* 80C62560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62564  7C 08 03 A6 */	mtlr r0
/* 80C62568  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6256C  4E 80 00 20 */	blr 
