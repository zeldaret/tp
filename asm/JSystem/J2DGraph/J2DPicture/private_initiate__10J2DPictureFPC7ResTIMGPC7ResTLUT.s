lbl_802FCD70:
/* 802FCD70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FCD74  7C 08 02 A6 */	mflr r0
/* 802FCD78  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FCD7C  39 61 00 20 */	addi r11, r1, 0x20
/* 802FCD80  48 06 54 59 */	bl _savegpr_28
/* 802FCD84  7C 7E 1B 78 */	mr r30, r3
/* 802FCD88  7C 9C 23 78 */	mr r28, r4
/* 802FCD8C  7C BF 2B 78 */	mr r31, r5
/* 802FCD90  88 03 01 08 */	lbz r0, 0x108(r3)
/* 802FCD94  28 00 00 00 */	cmplwi r0, 0
/* 802FCD98  40 82 00 EC */	bne lbl_802FCE84
/* 802FCD9C  28 1C 00 00 */	cmplwi r28, 0
/* 802FCDA0  41 82 00 94 */	beq lbl_802FCE34
/* 802FCDA4  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 802FCDA8  28 03 00 00 */	cmplwi r3, 0
/* 802FCDAC  40 82 00 64 */	bne lbl_802FCE10
/* 802FCDB0  38 60 00 40 */	li r3, 0x40
/* 802FCDB4  4B FD 1E 99 */	bl __nw__FUl
/* 802FCDB8  7C 7D 1B 79 */	or. r29, r3, r3
/* 802FCDBC  41 82 00 24 */	beq lbl_802FCDE0
/* 802FCDC0  38 00 00 00 */	li r0, 0
/* 802FCDC4  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802FCDC8  7F 84 E3 78 */	mr r4, r28
/* 802FCDCC  38 A0 00 00 */	li r5, 0
/* 802FCDD0  4B FE 14 D9 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FCDD4  88 1D 00 3B */	lbz r0, 0x3b(r29)
/* 802FCDD8  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FCDDC  98 1D 00 3B */	stb r0, 0x3b(r29)
lbl_802FCDE0:
/* 802FCDE0  93 BE 01 00 */	stw r29, 0x100(r30)
/* 802FCDE4  80 1E 01 00 */	lwz r0, 0x100(r30)
/* 802FCDE8  28 00 00 00 */	cmplwi r0, 0
/* 802FCDEC  41 82 00 48 */	beq lbl_802FCE34
/* 802FCDF0  88 7E 01 08 */	lbz r3, 0x108(r30)
/* 802FCDF4  38 03 00 01 */	addi r0, r3, 1
/* 802FCDF8  98 1E 01 08 */	stb r0, 0x108(r30)
/* 802FCDFC  88 1E 01 09 */	lbz r0, 0x109(r30)
/* 802FCE00  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FCE04  60 00 00 01 */	ori r0, r0, 1
/* 802FCE08  98 1E 01 09 */	stb r0, 0x109(r30)
/* 802FCE0C  48 00 00 28 */	b lbl_802FCE34
lbl_802FCE10:
/* 802FCE10  38 A0 00 00 */	li r5, 0
/* 802FCE14  4B FE 14 95 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FCE18  88 7E 01 08 */	lbz r3, 0x108(r30)
/* 802FCE1C  38 03 00 01 */	addi r0, r3, 1
/* 802FCE20  98 1E 01 08 */	stb r0, 0x108(r30)
/* 802FCE24  88 1E 01 09 */	lbz r0, 0x109(r30)
/* 802FCE28  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FCE2C  60 00 00 01 */	ori r0, r0, 1
/* 802FCE30  98 1E 01 09 */	stb r0, 0x109(r30)
lbl_802FCE34:
/* 802FCE34  38 00 00 00 */	li r0, 0
/* 802FCE38  90 1E 01 2C */	stw r0, 0x12c(r30)
/* 802FCE3C  28 1F 00 00 */	cmplwi r31, 0
/* 802FCE40  41 82 00 44 */	beq lbl_802FCE84
/* 802FCE44  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 802FCE48  28 00 00 00 */	cmplwi r0, 0
/* 802FCE4C  40 82 00 38 */	bne lbl_802FCE84
/* 802FCE50  38 60 00 18 */	li r3, 0x18
/* 802FCE54  4B FD 1D F9 */	bl __nw__FUl
/* 802FCE58  7C 7D 1B 79 */	or. r29, r3, r3
/* 802FCE5C  41 82 00 10 */	beq lbl_802FCE6C
/* 802FCE60  38 80 00 00 */	li r4, 0
/* 802FCE64  7F E5 FB 78 */	mr r5, r31
/* 802FCE68  4B FE 1A 29 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802FCE6C:
/* 802FCE6C  93 BE 01 2C */	stw r29, 0x12c(r30)
/* 802FCE70  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 802FCE74  28 03 00 00 */	cmplwi r3, 0
/* 802FCE78  41 82 00 0C */	beq lbl_802FCE84
/* 802FCE7C  80 9E 01 2C */	lwz r4, 0x12c(r30)
/* 802FCE80  4B FE 17 31 */	bl attachPalette__10JUTTextureFP10JUTPalette
lbl_802FCE84:
/* 802FCE84  39 61 00 20 */	addi r11, r1, 0x20
/* 802FCE88  48 06 53 9D */	bl _restgpr_28
/* 802FCE8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FCE90  7C 08 03 A6 */	mtlr r0
/* 802FCE94  38 21 00 20 */	addi r1, r1, 0x20
/* 802FCE98  4E 80 00 20 */	blr 
