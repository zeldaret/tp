lbl_80182454:
/* 80182454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80182458  7C 08 02 A6 */	mflr r0
/* 8018245C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80182460  7C 65 1B 78 */	mr r5, r3
/* 80182464  38 65 02 40 */	addi r3, r5, 0x240
/* 80182468  3C 80 80 3C */	lis r4, l_method@ha
/* 8018246C  38 84 A6 D8 */	addi r4, r4, l_method@l
/* 80182470  4B EA D6 B1 */	bl dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv
/* 80182474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80182478  7C 08 03 A6 */	mtlr r0
/* 8018247C  38 21 00 10 */	addi r1, r1, 0x10
/* 80182480  4E 80 00 20 */	blr 
