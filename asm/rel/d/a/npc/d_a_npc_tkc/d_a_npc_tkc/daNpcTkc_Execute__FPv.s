lbl_80B0F9E4:
/* 80B0F9E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0F9E8  7C 08 02 A6 */	mflr r0
/* 80B0F9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0F9F0  4B FF D7 C5 */	bl Execute__10daNpcTkc_cFv
/* 80B0F9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0F9F8  7C 08 03 A6 */	mtlr r0
/* 80B0F9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0FA00  4E 80 00 20 */	blr 
