lbl_8025AB94:
/* 8025AB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025AB98  7C 08 02 A6 */	mflr r0
/* 8025AB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025ABA0  7C 65 1B 78 */	mr r5, r3
/* 8025ABA4  38 65 01 C4 */	addi r3, r5, 0x1c4
/* 8025ABA8  3C 80 80 3C */	lis r4, l_method@ha /* 0x803C3194@ha */
/* 8025ABAC  38 84 31 94 */	addi r4, r4, l_method@l /* 0x803C3194@l */
/* 8025ABB0  4B DD 4F 71 */	bl dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv
/* 8025ABB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025ABB8  7C 08 03 A6 */	mtlr r0
/* 8025ABBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025ABC0  4E 80 00 20 */	blr 
