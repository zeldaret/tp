lbl_8045D1E4:
/* 8045D1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D1E8  7C 08 02 A6 */	mflr r0
/* 8045D1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D1F0  4B FF FF B1 */	bl execute__10daDmidna_cFv
/* 8045D1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D1F8  7C 08 03 A6 */	mtlr r0
/* 8045D1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D200  4E 80 00 20 */	blr 
