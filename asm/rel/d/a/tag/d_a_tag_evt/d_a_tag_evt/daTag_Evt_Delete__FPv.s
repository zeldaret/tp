lbl_8048C29C:
/* 8048C29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C2A0  7C 08 02 A6 */	mflr r0
/* 8048C2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C2A8  4B FF F7 31 */	bl destroy__11daTag_Evt_cFv
/* 8048C2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C2B0  7C 08 03 A6 */	mtlr r0
/* 8048C2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C2B8  4E 80 00 20 */	blr 
