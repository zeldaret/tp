lbl_802EFD68:
/* 802EFD68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EFD6C  7C 08 02 A6 */	mflr r0
/* 802EFD70  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EFD74  39 61 00 20 */	addi r11, r1, 0x20
/* 802EFD78  48 07 24 59 */	bl _savegpr_26
/* 802EFD7C  7C 7A 1B 78 */	mr r26, r3
/* 802EFD80  7C 9B 23 78 */	mr r27, r4
/* 802EFD84  7C BC 2B 78 */	mr r28, r5
/* 802EFD88  28 1B 00 08 */	cmplwi r27, 8
/* 802EFD8C  41 80 00 0C */	blt lbl_802EFD98
/* 802EFD90  38 60 00 00 */	li r3, 0
/* 802EFD94  48 00 00 94 */	b lbl_802EFE28
lbl_802EFD98:
/* 802EFD98  28 1C 00 00 */	cmplwi r28, 0
/* 802EFD9C  41 82 00 70 */	beq lbl_802EFE0C
/* 802EFDA0  57 7D 10 3A */	slwi r29, r27, 2
/* 802EFDA4  7F DA EA 14 */	add r30, r26, r29
/* 802EFDA8  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 802EFDAC  28 03 00 00 */	cmplwi r3, 0
/* 802EFDB0  40 82 00 38 */	bne lbl_802EFDE8
/* 802EFDB4  38 60 00 18 */	li r3, 0x18
/* 802EFDB8  4B FD EE 95 */	bl __nw__FUl
/* 802EFDBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EFDC0  41 82 00 10 */	beq lbl_802EFDD0
/* 802EFDC4  7F 64 DB 78 */	mr r4, r27
/* 802EFDC8  7F 85 E3 78 */	mr r5, r28
/* 802EFDCC  4B FE EA C5 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802EFDD0:
/* 802EFDD0  93 FE 00 FC */	stw r31, 0xfc(r30)
/* 802EFDD4  80 1E 00 FC */	lwz r0, 0xfc(r30)
/* 802EFDD8  28 00 00 00 */	cmplwi r0, 0
/* 802EFDDC  40 82 00 14 */	bne lbl_802EFDF0
/* 802EFDE0  38 60 00 00 */	li r3, 0
/* 802EFDE4  48 00 00 44 */	b lbl_802EFE28
lbl_802EFDE8:
/* 802EFDE8  38 80 00 00 */	li r4, 0
/* 802EFDEC  4B FE EA A5 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802EFDF0:
/* 802EFDF0  7C 7A EA 14 */	add r3, r26, r29
/* 802EFDF4  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 802EFDF8  28 03 00 00 */	cmplwi r3, 0
/* 802EFDFC  41 82 00 28 */	beq lbl_802EFE24
/* 802EFE00  80 9E 00 FC */	lwz r4, 0xfc(r30)
/* 802EFE04  4B FE E7 AD */	bl attachPalette__10JUTTextureFP10JUTPalette
/* 802EFE08  48 00 00 1C */	b lbl_802EFE24
lbl_802EFE0C:
/* 802EFE0C  57 60 10 3A */	slwi r0, r27, 2
/* 802EFE10  7F BA 02 14 */	add r29, r26, r0
/* 802EFE14  80 7D 00 FC */	lwz r3, 0xfc(r29)
/* 802EFE18  4B FD EF 25 */	bl __dl__FPv
/* 802EFE1C  38 00 00 00 */	li r0, 0
/* 802EFE20  90 1D 00 FC */	stw r0, 0xfc(r29)
lbl_802EFE24:
/* 802EFE24  38 60 00 01 */	li r3, 1
lbl_802EFE28:
/* 802EFE28  39 61 00 20 */	addi r11, r1, 0x20
/* 802EFE2C  48 07 23 F1 */	bl _restgpr_26
/* 802EFE30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EFE34  7C 08 03 A6 */	mtlr r0
/* 802EFE38  38 21 00 20 */	addi r1, r1, 0x20
/* 802EFE3C  4E 80 00 20 */	blr 
