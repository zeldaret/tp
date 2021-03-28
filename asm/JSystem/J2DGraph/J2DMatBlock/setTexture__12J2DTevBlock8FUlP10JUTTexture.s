lbl_802EFA98:
/* 802EFA98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EFA9C  7C 08 02 A6 */	mflr r0
/* 802EFAA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EFAA4  39 61 00 20 */	addi r11, r1, 0x20
/* 802EFAA8  48 07 27 2D */	bl _savegpr_27
/* 802EFAAC  7C 7B 1B 78 */	mr r27, r3
/* 802EFAB0  7C 9C 23 78 */	mr r28, r4
/* 802EFAB4  7C BD 2B 78 */	mr r29, r5
/* 802EFAB8  28 1C 00 08 */	cmplwi r28, 8
/* 802EFABC  41 80 00 0C */	blt lbl_802EFAC8
/* 802EFAC0  38 60 00 00 */	li r3, 0
/* 802EFAC4  48 00 00 6C */	b lbl_802EFB30
lbl_802EFAC8:
/* 802EFAC8  88 7B 01 20 */	lbz r3, 0x120(r27)
/* 802EFACC  38 00 00 01 */	li r0, 1
/* 802EFAD0  7C 1E E0 30 */	slw r30, r0, r28
/* 802EFAD4  7C 60 F0 39 */	and. r0, r3, r30
/* 802EFAD8  41 82 00 18 */	beq lbl_802EFAF0
/* 802EFADC  57 80 10 3A */	slwi r0, r28, 2
/* 802EFAE0  7C 7B 02 14 */	add r3, r27, r0
/* 802EFAE4  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 802EFAE8  38 80 00 01 */	li r4, 1
/* 802EFAEC  4B FE E7 49 */	bl __dt__10JUTTextureFv
lbl_802EFAF0:
/* 802EFAF0  57 80 10 3A */	slwi r0, r28, 2
/* 802EFAF4  7F FB 02 14 */	add r31, r27, r0
/* 802EFAF8  93 BF 00 DC */	stw r29, 0xdc(r31)
/* 802EFAFC  88 1B 01 20 */	lbz r0, 0x120(r27)
/* 802EFB00  7C 00 F0 78 */	andc r0, r0, r30
/* 802EFB04  98 1B 01 20 */	stb r0, 0x120(r27)
/* 802EFB08  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 802EFB0C  4B FD F2 31 */	bl __dl__FPv
/* 802EFB10  38 00 00 00 */	li r0, 0
/* 802EFB14  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 802EFB18  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EFB1C  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EFB20  57 80 08 3C */	slwi r0, r28, 1
/* 802EFB24  7C 7B 02 14 */	add r3, r27, r0
/* 802EFB28  B0 83 00 04 */	sth r4, 4(r3)
/* 802EFB2C  38 60 00 01 */	li r3, 1
lbl_802EFB30:
/* 802EFB30  39 61 00 20 */	addi r11, r1, 0x20
/* 802EFB34  48 07 26 ED */	bl _restgpr_27
/* 802EFB38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EFB3C  7C 08 03 A6 */	mtlr r0
/* 802EFB40  38 21 00 20 */	addi r1, r1, 0x20
/* 802EFB44  4E 80 00 20 */	blr 
