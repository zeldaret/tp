lbl_802FCFF0:
/* 802FCFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FCFF4  7C 08 02 A6 */	mflr r0
/* 802FCFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FCFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD000  48 06 51 D5 */	bl _savegpr_27
/* 802FD004  7C 7B 1B 79 */	or. r27, r3, r3
/* 802FD008  7C 9C 23 78 */	mr r28, r4
/* 802FD00C  41 82 00 70 */	beq lbl_802FD07C
/* 802FD010  3C 60 80 3D */	lis r3, __vt__10J2DPicture@ha /* 0x803CD1D8@ha */
/* 802FD014  38 03 D1 D8 */	addi r0, r3, __vt__10J2DPicture@l /* 0x803CD1D8@l */
/* 802FD018  90 1B 00 00 */	stw r0, 0(r27)
/* 802FD01C  3B A0 00 00 */	li r29, 0
/* 802FD020  3B E0 00 00 */	li r31, 0
/* 802FD024  3B C0 00 01 */	li r30, 1
lbl_802FD028:
/* 802FD028  88 7B 01 09 */	lbz r3, 0x109(r27)
/* 802FD02C  7F C0 E8 30 */	slw r0, r30, r29
/* 802FD030  7C 60 00 39 */	and. r0, r3, r0
/* 802FD034  41 82 00 14 */	beq lbl_802FD048
/* 802FD038  38 1F 01 00 */	addi r0, r31, 0x100
/* 802FD03C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 802FD040  38 80 00 01 */	li r4, 1
/* 802FD044  4B FE 11 F1 */	bl __dt__10JUTTextureFv
lbl_802FD048:
/* 802FD048  3B BD 00 01 */	addi r29, r29, 1
/* 802FD04C  2C 1D 00 02 */	cmpwi r29, 2
/* 802FD050  3B FF 00 04 */	addi r31, r31, 4
/* 802FD054  41 80 FF D4 */	blt lbl_802FD028
/* 802FD058  80 7B 01 2C */	lwz r3, 0x12c(r27)
/* 802FD05C  4B FD 1C E1 */	bl __dl__FPv
/* 802FD060  7F 63 DB 78 */	mr r3, r27
/* 802FD064  38 80 00 00 */	li r4, 0
/* 802FD068  4B FF 95 25 */	bl __dt__7J2DPaneFv
/* 802FD06C  7F 80 07 35 */	extsh. r0, r28
/* 802FD070  40 81 00 0C */	ble lbl_802FD07C
/* 802FD074  7F 63 DB 78 */	mr r3, r27
/* 802FD078  4B FD 1C C5 */	bl __dl__FPv
lbl_802FD07C:
/* 802FD07C  7F 63 DB 78 */	mr r3, r27
/* 802FD080  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD084  48 06 51 9D */	bl _restgpr_27
/* 802FD088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FD08C  7C 08 03 A6 */	mtlr r0
/* 802FD090  38 21 00 20 */	addi r1, r1, 0x20
/* 802FD094  4E 80 00 20 */	blr 
