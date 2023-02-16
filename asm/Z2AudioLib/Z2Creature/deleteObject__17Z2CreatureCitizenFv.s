lbl_802C0D04:
/* 802C0D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0D08  7C 08 02 A6 */	mflr r0
/* 802C0D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0D14  7C 7F 1B 78 */	mr r31, r3
/* 802C0D18  88 03 00 A2 */	lbz r0, 0xa2(r3)
/* 802C0D1C  28 00 00 00 */	cmplwi r0, 0
/* 802C0D20  40 82 00 0C */	bne lbl_802C0D2C
/* 802C0D24  80 6D 86 08 */	lwz r3, __OSReport_disable-0x10(r13)
/* 802C0D28  4B FE AC 39 */	bl decrCrowdSize__7Z2SeMgrFv
lbl_802C0D2C:
/* 802C0D2C  7F E3 FB 78 */	mr r3, r31
/* 802C0D30  4B FF F7 B9 */	bl deleteObject__10Z2CreatureFv
/* 802C0D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0D3C  7C 08 03 A6 */	mtlr r0
/* 802C0D40  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0D44  4E 80 00 20 */	blr 
