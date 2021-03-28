lbl_80A0AD60:
/* 80A0AD60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0AD64  7C 08 02 A6 */	mflr r0
/* 80A0AD68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0AD6C  4B FF D7 B9 */	bl Delete__12daNpcImpal_cFv
/* 80A0AD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0AD74  7C 08 03 A6 */	mtlr r0
/* 80A0AD78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0AD7C  4E 80 00 20 */	blr 
