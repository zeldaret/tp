lbl_80D64FE4:
/* 80D64FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64FE8  7C 08 02 A6 */	mflr r0
/* 80D64FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64FF0  4B FF FE C9 */	bl create__13daTagWljump_cFv
/* 80D64FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64FF8  7C 08 03 A6 */	mtlr r0
/* 80D64FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D65000  4E 80 00 20 */	blr 
