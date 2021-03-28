lbl_80258878:
/* 80258878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025887C  7C 08 02 A6 */	mflr r0
/* 80258880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80258884  7C 85 23 78 */	mr r5, r4
/* 80258888  38 8D 81 D8 */	la r4, l_method(r13) /* 80450758-_SDA_BASE_ */
/* 8025888C  4B DD 72 95 */	bl dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv
/* 80258890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258894  7C 08 03 A6 */	mtlr r0
/* 80258898  38 21 00 10 */	addi r1, r1, 0x10
/* 8025889C  4E 80 00 20 */	blr 
