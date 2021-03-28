lbl_802EBCC0:
/* 802EBCC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EBCC4  7C 08 02 A6 */	mflr r0
/* 802EBCC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EBCCC  39 61 00 20 */	addi r11, r1, 0x20
/* 802EBCD0  48 07 65 09 */	bl _savegpr_28
/* 802EBCD4  7C 7C 1B 78 */	mr r28, r3
/* 802EBCD8  7C BD 2B 78 */	mr r29, r5
/* 802EBCDC  7C DE 33 78 */	mr r30, r6
/* 802EBCE0  28 04 00 00 */	cmplwi r4, 0
/* 802EBCE4  40 82 00 0C */	bne lbl_802EBCF0
/* 802EBCE8  28 1D 00 00 */	cmplwi r29, 0
/* 802EBCEC  40 82 00 0C */	bne lbl_802EBCF8
lbl_802EBCF0:
/* 802EBCF0  38 60 00 00 */	li r3, 0
/* 802EBCF4  48 00 00 D8 */	b lbl_802EBDCC
lbl_802EBCF8:
/* 802EBCF8  80 7C 00 50 */	lwz r3, 0x50(r28)
/* 802EBCFC  28 03 00 00 */	cmplwi r3, 0
/* 802EBD00  41 82 00 18 */	beq lbl_802EBD18
/* 802EBD04  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EBD08  28 00 00 00 */	cmplwi r0, 0
/* 802EBD0C  41 82 00 0C */	beq lbl_802EBD18
/* 802EBD10  38 60 00 00 */	li r3, 0
/* 802EBD14  48 00 00 B8 */	b lbl_802EBDCC
lbl_802EBD18:
/* 802EBD18  28 03 00 00 */	cmplwi r3, 0
/* 802EBD1C  40 82 00 64 */	bne lbl_802EBD80
/* 802EBD20  38 60 00 40 */	li r3, 0x40
/* 802EBD24  4B FE 2F 29 */	bl __nw__FUl
/* 802EBD28  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EBD2C  41 82 00 24 */	beq lbl_802EBD50
/* 802EBD30  38 00 00 00 */	li r0, 0
/* 802EBD34  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802EBD38  7F A4 EB 78 */	mr r4, r29
/* 802EBD3C  38 A0 00 00 */	li r5, 0
/* 802EBD40  4B FF 25 69 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EBD44  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802EBD48  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EBD4C  98 1F 00 3B */	stb r0, 0x3b(r31)
lbl_802EBD50:
/* 802EBD50  93 FC 00 50 */	stw r31, 0x50(r28)
/* 802EBD54  80 7C 00 50 */	lwz r3, 0x50(r28)
/* 802EBD58  28 03 00 00 */	cmplwi r3, 0
/* 802EBD5C  40 82 00 0C */	bne lbl_802EBD68
/* 802EBD60  38 60 00 00 */	li r3, 0
/* 802EBD64  48 00 00 68 */	b lbl_802EBDCC
lbl_802EBD68:
/* 802EBD68  28 1E 00 00 */	cmplwi r30, 0
/* 802EBD6C  41 82 00 38 */	beq lbl_802EBDA4
/* 802EBD70  7F A4 EB 78 */	mr r4, r29
/* 802EBD74  7F C5 F3 78 */	mr r5, r30
/* 802EBD78  4B FF 26 D5 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
/* 802EBD7C  48 00 00 28 */	b lbl_802EBDA4
lbl_802EBD80:
/* 802EBD80  28 1E 00 00 */	cmplwi r30, 0
/* 802EBD84  40 82 00 14 */	bne lbl_802EBD98
/* 802EBD88  7F A4 EB 78 */	mr r4, r29
/* 802EBD8C  38 A0 00 00 */	li r5, 0
/* 802EBD90  4B FF 25 19 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EBD94  48 00 00 10 */	b lbl_802EBDA4
lbl_802EBD98:
/* 802EBD98  7F A4 EB 78 */	mr r4, r29
/* 802EBD9C  7F C5 F3 78 */	mr r5, r30
/* 802EBDA0  4B FF 26 AD */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802EBDA4:
/* 802EBDA4  88 1C 00 5C */	lbz r0, 0x5c(r28)
/* 802EBDA8  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EBDAC  60 00 00 01 */	ori r0, r0, 1
/* 802EBDB0  98 1C 00 5C */	stb r0, 0x5c(r28)
/* 802EBDB4  38 00 00 00 */	li r0, 0
/* 802EBDB8  90 1C 00 54 */	stw r0, 0x54(r28)
/* 802EBDBC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EBDC0  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EBDC4  B0 1C 00 04 */	sth r0, 4(r28)
/* 802EBDC8  38 60 00 01 */	li r3, 1
lbl_802EBDCC:
/* 802EBDCC  39 61 00 20 */	addi r11, r1, 0x20
/* 802EBDD0  48 07 64 55 */	bl _restgpr_28
/* 802EBDD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EBDD8  7C 08 03 A6 */	mtlr r0
/* 802EBDDC  38 21 00 20 */	addi r1, r1, 0x20
/* 802EBDE0  4E 80 00 20 */	blr 
