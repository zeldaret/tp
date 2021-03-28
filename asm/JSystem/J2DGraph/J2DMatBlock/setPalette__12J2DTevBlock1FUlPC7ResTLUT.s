lbl_802EC258:
/* 802EC258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EC25C  7C 08 02 A6 */	mflr r0
/* 802EC260  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EC264  39 61 00 20 */	addi r11, r1, 0x20
/* 802EC268  48 07 5F 75 */	bl _savegpr_29
/* 802EC26C  7C 7D 1B 78 */	mr r29, r3
/* 802EC270  7C BE 2B 78 */	mr r30, r5
/* 802EC274  28 04 00 00 */	cmplwi r4, 0
/* 802EC278  41 82 00 0C */	beq lbl_802EC284
/* 802EC27C  38 60 00 00 */	li r3, 0
/* 802EC280  48 00 00 80 */	b lbl_802EC300
lbl_802EC284:
/* 802EC284  28 1E 00 00 */	cmplwi r30, 0
/* 802EC288  41 82 00 64 */	beq lbl_802EC2EC
/* 802EC28C  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 802EC290  28 03 00 00 */	cmplwi r3, 0
/* 802EC294  40 82 00 38 */	bne lbl_802EC2CC
/* 802EC298  38 60 00 18 */	li r3, 0x18
/* 802EC29C  4B FE 29 B1 */	bl __nw__FUl
/* 802EC2A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EC2A4  41 82 00 10 */	beq lbl_802EC2B4
/* 802EC2A8  38 80 00 00 */	li r4, 0
/* 802EC2AC  7F C5 F3 78 */	mr r5, r30
/* 802EC2B0  4B FF 25 E1 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802EC2B4:
/* 802EC2B4  93 FD 00 54 */	stw r31, 0x54(r29)
/* 802EC2B8  80 1D 00 54 */	lwz r0, 0x54(r29)
/* 802EC2BC  28 00 00 00 */	cmplwi r0, 0
/* 802EC2C0  40 82 00 14 */	bne lbl_802EC2D4
/* 802EC2C4  38 60 00 00 */	li r3, 0
/* 802EC2C8  48 00 00 38 */	b lbl_802EC300
lbl_802EC2CC:
/* 802EC2CC  38 80 00 00 */	li r4, 0
/* 802EC2D0  4B FF 25 C1 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802EC2D4:
/* 802EC2D4  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 802EC2D8  28 03 00 00 */	cmplwi r3, 0
/* 802EC2DC  41 82 00 20 */	beq lbl_802EC2FC
/* 802EC2E0  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 802EC2E4  4B FF 22 CD */	bl attachPalette__10JUTTextureFP10JUTPalette
/* 802EC2E8  48 00 00 14 */	b lbl_802EC2FC
lbl_802EC2EC:
/* 802EC2EC  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 802EC2F0  4B FE 2A 4D */	bl __dl__FPv
/* 802EC2F4  38 00 00 00 */	li r0, 0
/* 802EC2F8  90 1D 00 54 */	stw r0, 0x54(r29)
lbl_802EC2FC:
/* 802EC2FC  38 60 00 01 */	li r3, 1
lbl_802EC300:
/* 802EC300  39 61 00 20 */	addi r11, r1, 0x20
/* 802EC304  48 07 5F 25 */	bl _restgpr_29
/* 802EC308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EC30C  7C 08 03 A6 */	mtlr r0
/* 802EC310  38 21 00 20 */	addi r1, r1, 0x20
/* 802EC314  4E 80 00 20 */	blr 
