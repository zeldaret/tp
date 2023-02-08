lbl_806E4600:
/* 806E4600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E4604  7C 08 02 A6 */	mflr r0
/* 806E4608  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E460C  4B FF FE E5 */	bl Delete__8daE_HM_cFv
/* 806E4610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E4614  7C 08 03 A6 */	mtlr r0
/* 806E4618  38 21 00 10 */	addi r1, r1, 0x10
/* 806E461C  4E 80 00 20 */	blr 
