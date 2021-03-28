lbl_802ED424:
/* 802ED424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED428  7C 08 02 A6 */	mflr r0
/* 802ED42C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED430  39 61 00 20 */	addi r11, r1, 0x20
/* 802ED434  48 07 4D 9D */	bl _savegpr_26
/* 802ED438  7C 7A 1B 78 */	mr r26, r3
/* 802ED43C  7C 9B 23 78 */	mr r27, r4
/* 802ED440  7C BC 2B 78 */	mr r28, r5
/* 802ED444  28 1B 00 02 */	cmplwi r27, 2
/* 802ED448  41 80 00 0C */	blt lbl_802ED454
/* 802ED44C  38 60 00 00 */	li r3, 0
/* 802ED450  48 00 00 94 */	b lbl_802ED4E4
lbl_802ED454:
/* 802ED454  28 1C 00 00 */	cmplwi r28, 0
/* 802ED458  41 82 00 70 */	beq lbl_802ED4C8
/* 802ED45C  57 7D 10 3A */	slwi r29, r27, 2
/* 802ED460  7F DA EA 14 */	add r30, r26, r29
/* 802ED464  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 802ED468  28 03 00 00 */	cmplwi r3, 0
/* 802ED46C  40 82 00 38 */	bne lbl_802ED4A4
/* 802ED470  38 60 00 18 */	li r3, 0x18
/* 802ED474  4B FE 17 D9 */	bl __nw__FUl
/* 802ED478  7C 7F 1B 79 */	or. r31, r3, r3
/* 802ED47C  41 82 00 10 */	beq lbl_802ED48C
/* 802ED480  7F 64 DB 78 */	mr r4, r27
/* 802ED484  7F 85 E3 78 */	mr r5, r28
/* 802ED488  4B FF 14 09 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802ED48C:
/* 802ED48C  93 FE 00 6C */	stw r31, 0x6c(r30)
/* 802ED490  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 802ED494  28 00 00 00 */	cmplwi r0, 0
/* 802ED498  40 82 00 14 */	bne lbl_802ED4AC
/* 802ED49C  38 60 00 00 */	li r3, 0
/* 802ED4A0  48 00 00 44 */	b lbl_802ED4E4
lbl_802ED4A4:
/* 802ED4A4  38 80 00 00 */	li r4, 0
/* 802ED4A8  4B FF 13 E9 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802ED4AC:
/* 802ED4AC  7C 7A EA 14 */	add r3, r26, r29
/* 802ED4B0  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802ED4B4  28 03 00 00 */	cmplwi r3, 0
/* 802ED4B8  41 82 00 28 */	beq lbl_802ED4E0
/* 802ED4BC  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 802ED4C0  4B FF 10 F1 */	bl attachPalette__10JUTTextureFP10JUTPalette
/* 802ED4C4  48 00 00 1C */	b lbl_802ED4E0
lbl_802ED4C8:
/* 802ED4C8  57 60 10 3A */	slwi r0, r27, 2
/* 802ED4CC  7F BA 02 14 */	add r29, r26, r0
/* 802ED4D0  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 802ED4D4  4B FE 18 69 */	bl __dl__FPv
/* 802ED4D8  38 00 00 00 */	li r0, 0
/* 802ED4DC  90 1D 00 6C */	stw r0, 0x6c(r29)
lbl_802ED4E0:
/* 802ED4E0  38 60 00 01 */	li r3, 1
lbl_802ED4E4:
/* 802ED4E4  39 61 00 20 */	addi r11, r1, 0x20
/* 802ED4E8  48 07 4D 35 */	bl _restgpr_26
/* 802ED4EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED4F0  7C 08 03 A6 */	mtlr r0
/* 802ED4F4  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED4F8  4E 80 00 20 */	blr 
