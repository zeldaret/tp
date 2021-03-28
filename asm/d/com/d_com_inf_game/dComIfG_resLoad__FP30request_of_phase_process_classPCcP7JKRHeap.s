lbl_8002CFC0:
/* 8002CFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CFC4  7C 08 02 A6 */	mflr r0
/* 8002CFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CFCC  80 03 00 04 */	lwz r0, 4(r3)
/* 8002CFD0  2C 00 00 02 */	cmpwi r0, 2
/* 8002CFD4  40 82 00 0C */	bne lbl_8002CFE0
/* 8002CFD8  38 60 00 04 */	li r3, 4
/* 8002CFDC  48 00 00 1C */	b lbl_8002CFF8
lbl_8002CFE0:
/* 8002CFE0  90 81 00 08 */	stw r4, 8(r1)
/* 8002CFE4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8002CFE8  3C 80 80 3A */	lis r4, l_method_5051@ha
/* 8002CFEC  38 84 71 C4 */	addi r4, r4, l_method_5051@l
/* 8002CFF0  38 A1 00 08 */	addi r5, r1, 8
/* 8002CFF4  48 00 2B 2D */	bl dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv
lbl_8002CFF8:
/* 8002CFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CFFC  7C 08 03 A6 */	mtlr r0
/* 8002D000  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D004  4E 80 00 20 */	blr 
