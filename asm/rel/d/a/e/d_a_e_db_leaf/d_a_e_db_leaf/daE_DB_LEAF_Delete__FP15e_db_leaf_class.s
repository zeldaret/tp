lbl_806A1F2C:
/* 806A1F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1F30  7C 08 02 A6 */	mflr r0
/* 806A1F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A1F38  3C 80 80 6A */	lis r4, d_a_e_db_leaf__stringBase0@ha /* 0x806A2118@ha */
/* 806A1F3C  38 84 21 18 */	addi r4, r4, d_a_e_db_leaf__stringBase0@l /* 0x806A2118@l */
/* 806A1F40  38 63 05 AC */	addi r3, r3, 0x5ac
/* 806A1F44  4B 98 B0 C5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806A1F48  38 60 00 01 */	li r3, 1
/* 806A1F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1F50  7C 08 03 A6 */	mtlr r0
/* 806A1F54  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1F58  4E 80 00 20 */	blr 
