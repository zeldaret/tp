lbl_80BB9548:
/* 80BB9548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB954C  7C 08 02 A6 */	mflr r0
/* 80BB9550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9554  3C 80 80 BC */	lis r4, d_a_obj_bmWindow__stringBase0@ha /* 0x80BB9800@ha */
/* 80BB9558  38 84 98 00 */	addi r4, r4, d_a_obj_bmWindow__stringBase0@l /* 0x80BB9800@l */
/* 80BB955C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BB9560  4B 47 3A A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BB9564  38 60 00 01 */	li r3, 1
/* 80BB9568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB956C  7C 08 03 A6 */	mtlr r0
/* 80BB9570  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9574  4E 80 00 20 */	blr 
