lbl_80257AB4:
/* 80257AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257AB8  7C 08 02 A6 */	mflr r0
/* 80257ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257AC0  7C 85 23 78 */	mr r5, r4
/* 80257AC4  3C 80 80 3C */	lis r4, l_method@ha /* 0x803C2FC4@ha */
/* 80257AC8  38 84 2F C4 */	addi r4, r4, l_method@l /* 0x803C2FC4@l */
/* 80257ACC  4B DD 80 55 */	bl dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv
/* 80257AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257AD4  7C 08 03 A6 */	mtlr r0
/* 80257AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80257ADC  4E 80 00 20 */	blr 
