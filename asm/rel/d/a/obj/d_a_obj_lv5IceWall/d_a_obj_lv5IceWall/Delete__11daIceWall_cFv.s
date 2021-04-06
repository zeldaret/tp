lbl_80C6C44C:
/* 80C6C44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C450  7C 08 02 A6 */	mflr r0
/* 80C6C454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C458  3C 80 80 C7 */	lis r4, d_a_obj_lv5IceWall__stringBase0@ha /* 0x80C6C6BC@ha */
/* 80C6C45C  38 84 C6 BC */	addi r4, r4, d_a_obj_lv5IceWall__stringBase0@l /* 0x80C6C6BC@l */
/* 80C6C460  38 63 08 54 */	addi r3, r3, 0x854
/* 80C6C464  4B 3C 0B A5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C6C468  38 60 00 01 */	li r3, 1
/* 80C6C46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C470  7C 08 03 A6 */	mtlr r0
/* 80C6C474  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C478  4E 80 00 20 */	blr 
