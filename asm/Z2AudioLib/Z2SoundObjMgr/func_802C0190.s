lbl_802C0190:
/* 802C0190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0194  7C 08 02 A6 */	mflr r0
/* 802C0198  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C019C  28 04 00 00 */	cmplwi r4, 0
/* 802C01A0  40 82 00 0C */	bne lbl_802C01AC
/* 802C01A4  38 60 00 00 */	li r3, 0
/* 802C01A8  48 00 00 2C */	b lbl_802C01D4
lbl_802C01AC:
/* 802C01AC  80 A4 00 00 */	lwz r5, 0(r4)
/* 802C01B0  88 05 00 A3 */	lbz r0, 0xa3(r5)
/* 802C01B4  28 00 00 00 */	cmplwi r0, 0
/* 802C01B8  41 82 00 18 */	beq lbl_802C01D0
/* 802C01BC  88 A3 00 18 */	lbz r5, 0x18(r3)
/* 802C01C0  28 05 00 00 */	cmplwi r5, 0
/* 802C01C4  41 82 00 0C */	beq lbl_802C01D0
/* 802C01C8  38 05 FF FF */	addi r0, r5, -1
/* 802C01CC  98 03 00 18 */	stb r0, 0x18(r3)
lbl_802C01D0:
/* 802C01D0  48 01 BF 8D */	bl remove__10JSUPtrListFP10JSUPtrLink
lbl_802C01D4:
/* 802C01D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C01D8  7C 08 03 A6 */	mtlr r0
/* 802C01DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C01E0  4E 80 00 20 */	blr 
