lbl_802EE8CC:
/* 802EE8CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EE8D0  7C 08 02 A6 */	mflr r0
/* 802EE8D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EE8D8  39 61 00 20 */	addi r11, r1, 0x20
/* 802EE8DC  48 07 38 F5 */	bl _savegpr_26
/* 802EE8E0  7C 7A 1B 78 */	mr r26, r3
/* 802EE8E4  7C 9B 23 78 */	mr r27, r4
/* 802EE8E8  7C BC 2B 78 */	mr r28, r5
/* 802EE8EC  28 1B 00 04 */	cmplwi r27, 4
/* 802EE8F0  41 80 00 0C */	blt lbl_802EE8FC
/* 802EE8F4  38 60 00 00 */	li r3, 0
/* 802EE8F8  48 00 00 94 */	b lbl_802EE98C
lbl_802EE8FC:
/* 802EE8FC  28 1C 00 00 */	cmplwi r28, 0
/* 802EE900  41 82 00 70 */	beq lbl_802EE970
/* 802EE904  57 7D 10 3A */	slwi r29, r27, 2
/* 802EE908  7F DA EA 14 */	add r30, r26, r29
/* 802EE90C  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 802EE910  28 03 00 00 */	cmplwi r3, 0
/* 802EE914  40 82 00 38 */	bne lbl_802EE94C
/* 802EE918  38 60 00 18 */	li r3, 0x18
/* 802EE91C  4B FE 03 31 */	bl __nw__FUl
/* 802EE920  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EE924  41 82 00 10 */	beq lbl_802EE934
/* 802EE928  7F 64 DB 78 */	mr r4, r27
/* 802EE92C  7F 85 E3 78 */	mr r5, r28
/* 802EE930  4B FE FF 61 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802EE934:
/* 802EE934  93 FE 00 9C */	stw r31, 0x9c(r30)
/* 802EE938  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 802EE93C  28 00 00 00 */	cmplwi r0, 0
/* 802EE940  40 82 00 14 */	bne lbl_802EE954
/* 802EE944  38 60 00 00 */	li r3, 0
/* 802EE948  48 00 00 44 */	b lbl_802EE98C
lbl_802EE94C:
/* 802EE94C  38 80 00 00 */	li r4, 0
/* 802EE950  4B FE FF 41 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802EE954:
/* 802EE954  7C 7A EA 14 */	add r3, r26, r29
/* 802EE958  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 802EE95C  28 03 00 00 */	cmplwi r3, 0
/* 802EE960  41 82 00 28 */	beq lbl_802EE988
/* 802EE964  80 9E 00 9C */	lwz r4, 0x9c(r30)
/* 802EE968  4B FE FC 49 */	bl attachPalette__10JUTTextureFP10JUTPalette
/* 802EE96C  48 00 00 1C */	b lbl_802EE988
lbl_802EE970:
/* 802EE970  57 60 10 3A */	slwi r0, r27, 2
/* 802EE974  7F BA 02 14 */	add r29, r26, r0
/* 802EE978  80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 802EE97C  4B FE 03 C1 */	bl __dl__FPv
/* 802EE980  38 00 00 00 */	li r0, 0
/* 802EE984  90 1D 00 9C */	stw r0, 0x9c(r29)
lbl_802EE988:
/* 802EE988  38 60 00 01 */	li r3, 1
lbl_802EE98C:
/* 802EE98C  39 61 00 20 */	addi r11, r1, 0x20
/* 802EE990  48 07 38 8D */	bl _restgpr_26
/* 802EE994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EE998  7C 08 03 A6 */	mtlr r0
/* 802EE99C  38 21 00 20 */	addi r1, r1, 0x20
/* 802EE9A0  4E 80 00 20 */	blr 
