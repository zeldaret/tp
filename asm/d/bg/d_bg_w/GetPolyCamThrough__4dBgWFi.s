lbl_8007B504:
/* 8007B504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B508  7C 08 02 A6 */	mflr r0
/* 8007B50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B510  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 8007B514  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 8007B518  4B FF FE 49 */	bl GetMaskPolyInf0_NoShift__4cBgWCFiUl
/* 8007B51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B520  7C 08 03 A6 */	mtlr r0
/* 8007B524  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B528  4E 80 00 20 */	blr 
