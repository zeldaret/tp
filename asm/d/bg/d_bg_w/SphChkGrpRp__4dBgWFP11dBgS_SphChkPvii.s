lbl_8007DDE0:
/* 8007DDE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007DDE4  7C 08 02 A6 */	mflr r0
/* 8007DDE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007DDEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007DDF0  48 2E 43 E1 */	bl _savegpr_26
/* 8007DDF4  7C 7C 1B 78 */	mr r28, r3
/* 8007DDF8  7C 9D 23 78 */	mr r29, r4
/* 8007DDFC  7C BE 2B 78 */	mr r30, r5
/* 8007DE00  7C DA 33 78 */	mr r26, r6
/* 8007DE04  7C FF 3B 78 */	mr r31, r7
/* 8007DE08  80 03 00 A8 */	lwz r0, 0xa8(r3)
/* 8007DE0C  54 C3 28 34 */	slwi r3, r6, 5
/* 8007DE10  38 63 00 04 */	addi r3, r3, 4
/* 8007DE14  7C 60 1A 14 */	add r3, r0, r3
/* 8007DE18  48 1E AD 9D */	bl cM3d_Cross_AabSph__FPC8cM3dGAabPC8cM3dGSph
/* 8007DE1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007DE20  40 82 00 0C */	bne lbl_8007DE2C
/* 8007DE24  38 60 00 00 */	li r3, 0
/* 8007DE28  48 00 00 C0 */	b lbl_8007DEE8
lbl_8007DE2C:
/* 8007DE2C  7F 83 E3 78 */	mr r3, r28
/* 8007DE30  7F 44 D3 78 */	mr r4, r26
/* 8007DE34  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 8007DE38  7F E6 FB 78 */	mr r6, r31
/* 8007DE3C  81 9C 00 04 */	lwz r12, 4(r28)
/* 8007DE40  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8007DE44  7D 89 03 A6 */	mtctr r12
/* 8007DE48  4E 80 04 21 */	bctrl 
/* 8007DE4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007DE50  41 82 00 0C */	beq lbl_8007DE5C
/* 8007DE54  38 60 00 00 */	li r3, 0
/* 8007DE58  48 00 00 90 */	b lbl_8007DEE8
lbl_8007DE5C:
/* 8007DE5C  3B 60 00 00 */	li r27, 0
/* 8007DE60  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007DE64  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8007DE68  1C 1A 00 34 */	mulli r0, r26, 0x34
/* 8007DE6C  7F 43 02 14 */	add r26, r3, r0
/* 8007DE70  A0 DA 00 2E */	lhz r6, 0x2e(r26)
/* 8007DE74  28 06 FF FF */	cmplwi r6, 0xffff
/* 8007DE78  41 82 00 20 */	beq lbl_8007DE98
/* 8007DE7C  7F 83 E3 78 */	mr r3, r28
/* 8007DE80  7F A4 EB 78 */	mr r4, r29
/* 8007DE84  7F C5 F3 78 */	mr r5, r30
/* 8007DE88  4B FF FD E9 */	bl SphChkRp__4dBgWFP11dBgS_SphChkPvi
/* 8007DE8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007DE90  41 82 00 08 */	beq lbl_8007DE98
/* 8007DE94  3B 60 00 01 */	li r27, 1
lbl_8007DE98:
/* 8007DE98  A3 5A 00 28 */	lhz r26, 0x28(r26)
lbl_8007DE9C:
/* 8007DE9C  3C 1A 00 00 */	addis r0, r26, 0
/* 8007DEA0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007DEA4  41 82 00 40 */	beq lbl_8007DEE4
/* 8007DEA8  7F 83 E3 78 */	mr r3, r28
/* 8007DEAC  7F A4 EB 78 */	mr r4, r29
/* 8007DEB0  7F C5 F3 78 */	mr r5, r30
/* 8007DEB4  7F 46 D3 78 */	mr r6, r26
/* 8007DEB8  38 FF 00 01 */	addi r7, r31, 1
/* 8007DEBC  4B FF FF 25 */	bl SphChkGrpRp__4dBgWFP11dBgS_SphChkPvii
/* 8007DEC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007DEC4  41 82 00 08 */	beq lbl_8007DECC
/* 8007DEC8  3B 60 00 01 */	li r27, 1
lbl_8007DECC:
/* 8007DECC  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007DED0  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007DED4  1C 7A 00 34 */	mulli r3, r26, 0x34
/* 8007DED8  38 03 00 26 */	addi r0, r3, 0x26
/* 8007DEDC  7F 44 02 2E */	lhzx r26, r4, r0
/* 8007DEE0  4B FF FF BC */	b lbl_8007DE9C
lbl_8007DEE4:
/* 8007DEE4  7F 63 DB 78 */	mr r3, r27
lbl_8007DEE8:
/* 8007DEE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8007DEEC  48 2E 43 31 */	bl _restgpr_26
/* 8007DEF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007DEF4  7C 08 03 A6 */	mtlr r0
/* 8007DEF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8007DEFC  4E 80 00 20 */	blr 
