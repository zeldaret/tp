lbl_802C1B90:
/* 802C1B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C1B94  7C 08 02 A6 */	mflr r0
/* 802C1B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C1B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C1BA0  7C 7F 1B 78 */	mr r31, r3
/* 802C1BA4  28 04 00 00 */	cmplwi r4, 0
/* 802C1BA8  40 82 00 10 */	bne lbl_802C1BB8
/* 802C1BAC  38 00 FF FF */	li r0, -1
/* 802C1BB0  98 1F 00 A1 */	stb r0, 0xa1(r31)
/* 802C1BB4  48 00 00 20 */	b lbl_802C1BD4
lbl_802C1BB8:
/* 802C1BB8  7F E5 FB 78 */	mr r5, r31
/* 802C1BBC  28 1F 00 00 */	cmplwi r31, 0
/* 802C1BC0  41 82 00 08 */	beq lbl_802C1BC8
/* 802C1BC4  38 A5 00 90 */	addi r5, r5, 0x90
lbl_802C1BC8:
/* 802C1BC8  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802C1BCC  4B FF E4 A9 */	bl func_802C0074
/* 802C1BD0  98 7F 00 A0 */	stb r3, 0xa0(r31)
lbl_802C1BD4:
/* 802C1BD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C1BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C1BDC  7C 08 03 A6 */	mtlr r0
/* 802C1BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802C1BE4  4E 80 00 20 */	blr 
