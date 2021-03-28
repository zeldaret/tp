lbl_802723AC:
/* 802723AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802723B0  7C 08 02 A6 */	mflr r0
/* 802723B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802723B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802723BC  83 ED 8F D0 */	lwz r31, sManager__6JUTXfb(r13)
/* 802723C0  A8 1F 00 14 */	lha r0, 0x14(r31)
/* 802723C4  7C 00 07 35 */	extsh. r0, r0
/* 802723C8  41 80 00 18 */	blt lbl_802723E0
/* 802723CC  4B FF FE ED */	bl prepareCopyDisp__10JFWDisplayFv
/* 802723D0  48 00 0F D9 */	bl JFWDrawDoneAlarm__Fv
/* 802723D4  48 0E 9A F9 */	bl GXFlush
/* 802723D8  A8 1F 00 14 */	lha r0, 0x14(r31)
/* 802723DC  B0 1F 00 16 */	sth r0, 0x16(r31)
lbl_802723E0:
/* 802723E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802723E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802723E8  7C 08 03 A6 */	mtlr r0
/* 802723EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802723F0  4E 80 00 20 */	blr 
