lbl_80CA4868:
/* 80CA4868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA486C  7C 08 02 A6 */	mflr r0
/* 80CA4870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4874  4B FF FD 81 */	bl Draw__13daObj_Nougu_cFv
/* 80CA4878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA487C  7C 08 03 A6 */	mtlr r0
/* 80CA4880  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4884  4E 80 00 20 */	blr 
