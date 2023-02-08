lbl_80A0AD80:
/* 80A0AD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0AD84  7C 08 02 A6 */	mflr r0
/* 80A0AD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0AD8C  4B FF D7 CD */	bl Execute__12daNpcImpal_cFv
/* 80A0AD90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0AD94  7C 08 03 A6 */	mtlr r0
/* 80A0AD98  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0AD9C  4E 80 00 20 */	blr 
