lbl_806E00A8:
/* 806E00A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E00AC  7C 08 02 A6 */	mflr r0
/* 806E00B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E00B4  3C 80 80 6E */	lis r4, d_a_e_hb_leaf__stringBase0@ha /* 0x806E0294@ha */
/* 806E00B8  38 84 02 94 */	addi r4, r4, d_a_e_hb_leaf__stringBase0@l /* 0x806E0294@l */
/* 806E00BC  38 63 05 AC */	addi r3, r3, 0x5ac
/* 806E00C0  4B 94 CF 49 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806E00C4  38 60 00 01 */	li r3, 1
/* 806E00C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E00CC  7C 08 03 A6 */	mtlr r0
/* 806E00D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806E00D4  4E 80 00 20 */	blr 
