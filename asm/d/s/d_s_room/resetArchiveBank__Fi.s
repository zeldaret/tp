lbl_8025AF24:
/* 8025AF24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025AF28  7C 08 02 A6 */	mflr r0
/* 8025AF2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025AF30  38 81 00 08 */	addi r4, r1, 8
/* 8025AF34  4B FF FE F1 */	bl getResetArchiveBank__FiPPCUc
/* 8025AF38  4B DC 9A 1D */	bl resetArchiveBank__20dStage_roomControl_cFi
/* 8025AF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025AF40  7C 08 03 A6 */	mtlr r0
/* 8025AF44  38 21 00 10 */	addi r1, r1, 0x10
/* 8025AF48  4E 80 00 20 */	blr 
