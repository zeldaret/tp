lbl_8023CC88:
/* 8023CC88  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8023CC8C  7C 08 02 A6 */	mflr r0
/* 8023CC90  90 01 00 94 */	stw r0, 0x94(r1)
/* 8023CC94  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8023CC98  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8023CC9C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8023CCA0  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8023CCA4  39 61 00 70 */	addi r11, r1, 0x70
/* 8023CCA8  48 12 55 21 */	bl _savegpr_24
/* 8023CCAC  7C 7F 1B 78 */	mr r31, r3
/* 8023CCB0  7C 9E 23 78 */	mr r30, r4
/* 8023CCB4  7C BB 2B 78 */	mr r27, r5
/* 8023CCB8  7C DD 33 78 */	mr r29, r6
/* 8023CCBC  3C 60 80 3C */	lis r3, __vt__17dMsgScrnExplain_c@ha
/* 8023CCC0  38 03 0F 6C */	addi r0, r3, __vt__17dMsgScrnExplain_c@l
/* 8023CCC4  90 1F 00 00 */	stw r0, 0(r31)
/* 8023CCC8  93 DF 00 44 */	stw r30, 0x44(r31)
/* 8023CCCC  38 60 00 00 */	li r3, 0
/* 8023CCD0  90 7F 00 54 */	stw r3, 0x54(r31)
/* 8023CCD4  B0 7F 00 5C */	sth r3, 0x5c(r31)
/* 8023CCD8  98 7F 00 64 */	stb r3, 0x64(r31)
/* 8023CCDC  98 7F 00 61 */	stb r3, 0x61(r31)
/* 8023CCE0  38 00 00 FF */	li r0, 0xff
/* 8023CCE4  98 1F 00 62 */	stb r0, 0x62(r31)
/* 8023CCE8  98 7F 00 63 */	stb r3, 0x63(r31)
/* 8023CCEC  98 7F 00 60 */	stb r3, 0x60(r31)
/* 8023CCF0  B0 7F 00 5A */	sth r3, 0x5a(r31)
/* 8023CCF4  98 7F 00 65 */	stb r3, 0x65(r31)
/* 8023CCF8  38 00 00 01 */	li r0, 1
/* 8023CCFC  98 1F 00 58 */	stb r0, 0x58(r31)
/* 8023CD00  9B 7F 00 66 */	stb r27, 0x66(r31)
/* 8023CD04  B0 7F 00 5E */	sth r3, 0x5e(r31)
/* 8023CD08  98 FF 00 67 */	stb r7, 0x67(r31)
/* 8023CD0C  38 60 00 2C */	li r3, 0x2c
/* 8023CD10  48 09 1F 3D */	bl __nw__FUl
/* 8023CD14  7C 60 1B 79 */	or. r0, r3, r3
/* 8023CD18  41 82 00 0C */	beq lbl_8023CD24
/* 8023CD1C  48 00 CF 05 */	bl __ct__12dMsgString_cFv
/* 8023CD20  7C 60 1B 78 */	mr r0, r3
lbl_8023CD24:
/* 8023CD24  90 1F 00 04 */	stw r0, 4(r31)
/* 8023CD28  38 60 02 44 */	li r3, 0x244
/* 8023CD2C  48 09 1F 21 */	bl __nw__FUl
/* 8023CD30  7C 60 1B 79 */	or. r0, r3, r3
/* 8023CD34  41 82 00 10 */	beq lbl_8023CD44
/* 8023CD38  38 80 00 00 */	li r4, 0
/* 8023CD3C  4B FE 8F 59 */	bl __ct__10COutFont_cFUc
/* 8023CD40  7C 60 1B 78 */	mr r0, r3
lbl_8023CD44:
/* 8023CD44  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8023CD48  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8023CD4C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CD50  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8023CD54  7D 89 03 A6 */	mtctr r12
/* 8023CD58  4E 80 04 21 */	bctrl 
/* 8023CD5C  38 60 01 18 */	li r3, 0x118
/* 8023CD60  48 09 1E ED */	bl __nw__FUl
/* 8023CD64  7C 60 1B 79 */	or. r0, r3, r3
/* 8023CD68  41 82 00 0C */	beq lbl_8023CD74
/* 8023CD6C  48 0B B7 2D */	bl __ct__9J2DScreenFv
/* 8023CD70  7C 60 1B 78 */	mr r0, r3
lbl_8023CD74:
/* 8023CD74  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8023CD78  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8023CD7C  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_explain__stringBase0@ha
/* 8023CD80  38 84 99 10 */	addi r4, r4, msg_scrn_d_msg_scrn_explain__stringBase0@l
/* 8023CD84  3C A0 00 02 */	lis r5, 2
/* 8023CD88  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 8023CD8C  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 8023CD90  80 C6 5C 70 */	lwz r6, 0x5c70(r6)
/* 8023CD94  48 0B B8 B5 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8023CD98  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8023CD9C  48 01 83 4D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8023CDA0  38 60 01 18 */	li r3, 0x118
/* 8023CDA4  48 09 1E A9 */	bl __nw__FUl
/* 8023CDA8  7C 60 1B 79 */	or. r0, r3, r3
/* 8023CDAC  41 82 00 0C */	beq lbl_8023CDB8
/* 8023CDB0  48 0B B6 E9 */	bl __ct__9J2DScreenFv
/* 8023CDB4  7C 60 1B 78 */	mr r0, r3
lbl_8023CDB8:
/* 8023CDB8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8023CDBC  C0 02 B1 B8 */	lfs f0, lit_3978(r2)
/* 8023CDC0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8023CDC4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8023CDC8  28 00 00 01 */	cmplwi r0, 1
/* 8023CDCC  41 82 00 0C */	beq lbl_8023CDD8
/* 8023CDD0  28 00 00 03 */	cmplwi r0, 3
/* 8023CDD4  40 82 01 40 */	bne lbl_8023CF14
lbl_8023CDD8:
/* 8023CDD8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023CDDC  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_explain__stringBase0@ha
/* 8023CDE0  38 84 99 10 */	addi r4, r4, msg_scrn_d_msg_scrn_explain__stringBase0@l
/* 8023CDE4  38 84 00 1D */	addi r4, r4, 0x1d
/* 8023CDE8  3C A0 00 02 */	lis r5, 2
/* 8023CDEC  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 8023CDF0  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 8023CDF4  80 C6 5C E4 */	lwz r6, 0x5ce4(r6)
/* 8023CDF8  48 0B B8 51 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8023CDFC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023CE00  48 01 82 E9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8023CE04  38 60 00 6C */	li r3, 0x6c
/* 8023CE08  48 09 1E 45 */	bl __nw__FUl
/* 8023CE0C  7C 60 1B 79 */	or. r0, r3, r3
/* 8023CE10  41 82 00 28 */	beq lbl_8023CE38
/* 8023CE14  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8023CE18  3C A0 6C 69 */	lis r5, 0x6C69 /* 0x6C696E65@ha */
/* 8023CE1C  38 C5 6E 65 */	addi r6, r5, 0x6E65 /* 0x6C696E65@l */
/* 8023CE20  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F33@ha */
/* 8023CE24  38 A5 5F 33 */	addi r5, r5, 0x5F33 /* 0x6D675F33@l */
/* 8023CE28  38 E0 00 00 */	li r7, 0
/* 8023CE2C  39 00 00 00 */	li r8, 0
/* 8023CE30  48 01 6B 55 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023CE34  7C 60 1B 78 */	mr r0, r3
lbl_8023CE38:
/* 8023CE38  90 1F 00 08 */	stw r0, 8(r31)
/* 8023CE3C  38 60 00 6C */	li r3, 0x6c
/* 8023CE40  48 09 1E 0D */	bl __nw__FUl
/* 8023CE44  7C 60 1B 79 */	or. r0, r3, r3
/* 8023CE48  41 82 00 24 */	beq lbl_8023CE6C
/* 8023CE4C  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8023CE50  3C A0 74 33 */	lis r5, 0x7433 /* 0x74335F73@ha */
/* 8023CE54  38 C5 5F 73 */	addi r6, r5, 0x5F73 /* 0x74335F73@l */
/* 8023CE58  38 A0 00 00 */	li r5, 0
/* 8023CE5C  38 E0 00 00 */	li r7, 0
/* 8023CE60  39 00 00 00 */	li r8, 0
/* 8023CE64  48 01 6B 21 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023CE68  7C 60 1B 78 */	mr r0, r3
lbl_8023CE6C:
/* 8023CE6C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8023CE70  38 00 00 00 */	li r0, 0
/* 8023CE74  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8023CE78  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8023CE7C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023CE80  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023CE84  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023CE88  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 8023CE8C  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 8023CE90  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CE94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023CE98  7D 89 03 A6 */	mtctr r12
/* 8023CE9C  4E 80 04 21 */	bctrl 
/* 8023CEA0  38 00 00 01 */	li r0, 1
/* 8023CEA4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023CEA8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023CEAC  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023CEB0  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023CEB4  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3366@ha */
/* 8023CEB8  38 A4 33 66 */	addi r5, r4, 0x3366 /* 0x6E5F3366@l */
/* 8023CEBC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CEC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023CEC4  7D 89 03 A6 */	mtctr r12
/* 8023CEC8  4E 80 04 21 */	bctrl 
/* 8023CECC  38 00 00 00 */	li r0, 0
/* 8023CED0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023CED4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023CED8  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023CEDC  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023CEE0  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F6534@ha */
/* 8023CEE4  38 A4 65 34 */	addi r5, r4, 0x6534 /* 0x6E5F6534@l */
/* 8023CEE8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CEEC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023CEF0  7D 89 03 A6 */	mtctr r12
/* 8023CEF4  4E 80 04 21 */	bctrl 
/* 8023CEF8  38 00 00 00 */	li r0, 0
/* 8023CEFC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023CF00  C0 02 B1 BC */	lfs f0, lit_3979(r2)
/* 8023CF04  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8023CF08  C0 02 B1 C0 */	lfs f0, lit_3980(r2)
/* 8023CF0C  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8023CF10  48 00 01 A4 */	b lbl_8023D0B4
lbl_8023CF14:
/* 8023CF14  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023CF18  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_explain__stringBase0@ha
/* 8023CF1C  38 84 99 10 */	addi r4, r4, msg_scrn_d_msg_scrn_explain__stringBase0@l
/* 8023CF20  38 84 00 45 */	addi r4, r4, 0x45
/* 8023CF24  3C A0 00 02 */	lis r5, 2
/* 8023CF28  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 8023CF2C  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 8023CF30  80 C6 5C E4 */	lwz r6, 0x5ce4(r6)
/* 8023CF34  48 0B B7 15 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8023CF38  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023CF3C  48 01 81 AD */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8023CF40  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023CF44  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8023CF48  C3 E3 00 9C */	lfs f31, 0x9c(r3)
/* 8023CF4C  C3 C3 00 70 */	lfs f30, 0x70(r3)
/* 8023CF50  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8023CF54  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 8023CF58  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 8023CF5C  38 A0 00 6E */	li r5, 0x6e
/* 8023CF60  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CF64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023CF68  7D 89 03 A6 */	mtctr r12
/* 8023CF6C  4E 80 04 21 */	bctrl 
/* 8023CF70  D3 C3 00 CC */	stfs f30, 0xcc(r3)
/* 8023CF74  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 8023CF78  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CF7C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023CF80  7D 89 03 A6 */	mtctr r12
/* 8023CF84  4E 80 04 21 */	bctrl 
/* 8023CF88  C0 02 B1 BC */	lfs f0, lit_3979(r2)
/* 8023CF8C  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8023CF90  38 60 00 6C */	li r3, 0x6c
/* 8023CF94  48 09 1C B9 */	bl __nw__FUl
/* 8023CF98  7C 60 1B 79 */	or. r0, r3, r3
/* 8023CF9C  41 82 00 28 */	beq lbl_8023CFC4
/* 8023CFA0  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8023CFA4  3C A0 34 6C */	lis r5, 0x346C /* 0x346C696E@ha */
/* 8023CFA8  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x346C696E@l */
/* 8023CFAC  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F65@ha */
/* 8023CFB0  38 A5 5F 65 */	addi r5, r5, 0x5F65 /* 0x6D675F65@l */
/* 8023CFB4  38 E0 00 00 */	li r7, 0
/* 8023CFB8  39 00 00 00 */	li r8, 0
/* 8023CFBC  48 01 69 C9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023CFC0  7C 60 1B 78 */	mr r0, r3
lbl_8023CFC4:
/* 8023CFC4  90 1F 00 08 */	stw r0, 8(r31)
/* 8023CFC8  38 60 00 6C */	li r3, 0x6c
/* 8023CFCC  48 09 1C 81 */	bl __nw__FUl
/* 8023CFD0  7C 60 1B 79 */	or. r0, r3, r3
/* 8023CFD4  41 82 00 24 */	beq lbl_8023CFF8
/* 8023CFD8  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8023CFDC  3C A0 74 34 */	lis r5, 0x7434 /* 0x74345F73@ha */
/* 8023CFE0  38 C5 5F 73 */	addi r6, r5, 0x5F73 /* 0x74345F73@l */
/* 8023CFE4  38 A0 00 00 */	li r5, 0
/* 8023CFE8  38 E0 00 00 */	li r7, 0
/* 8023CFEC  39 00 00 00 */	li r8, 0
/* 8023CFF0  48 01 69 95 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023CFF4  7C 60 1B 78 */	mr r0, r3
lbl_8023CFF8:
/* 8023CFF8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8023CFFC  38 00 00 00 */	li r0, 0
/* 8023D000  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8023D004  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8023D008  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023D00C  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023D010  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023D014  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 8023D018  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 8023D01C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D020  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023D024  7D 89 03 A6 */	mtctr r12
/* 8023D028  4E 80 04 21 */	bctrl 
/* 8023D02C  38 00 00 00 */	li r0, 0
/* 8023D030  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023D034  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023D038  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023D03C  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023D040  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3366@ha */
/* 8023D044  38 A4 33 66 */	addi r5, r4, 0x3366 /* 0x6E5F3366@l */
/* 8023D048  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D04C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023D050  7D 89 03 A6 */	mtctr r12
/* 8023D054  4E 80 04 21 */	bctrl 
/* 8023D058  38 00 00 00 */	li r0, 0
/* 8023D05C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023D060  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023D064  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023D068  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023D06C  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F6534@ha */
/* 8023D070  38 A4 65 34 */	addi r5, r4, 0x6534 /* 0x6E5F6534@l */
/* 8023D074  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D078  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023D07C  7D 89 03 A6 */	mtctr r12
/* 8023D080  4E 80 04 21 */	bctrl 
/* 8023D084  38 00 00 01 */	li r0, 1
/* 8023D088  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023D08C  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8023D090  28 00 00 02 */	cmplwi r0, 2
/* 8023D094  41 82 00 0C */	beq lbl_8023D0A0
/* 8023D098  28 00 00 04 */	cmplwi r0, 4
/* 8023D09C  40 82 00 10 */	bne lbl_8023D0AC
lbl_8023D0A0:
/* 8023D0A0  C0 02 B1 C0 */	lfs f0, lit_3980(r2)
/* 8023D0A4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8023D0A8  48 00 00 0C */	b lbl_8023D0B4
lbl_8023D0AC:
/* 8023D0AC  C0 02 B1 C4 */	lfs f0, lit_3981(r2)
/* 8023D0B0  D0 1F 00 4C */	stfs f0, 0x4c(r31)
lbl_8023D0B4:
/* 8023D0B4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023D0B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8023D0BC  C3 C3 01 18 */	lfs f30, 0x118(r3)
/* 8023D0C0  3B 60 00 00 */	li r27, 0
/* 8023D0C4  3B 40 00 00 */	li r26, 0
/* 8023D0C8  3C 60 80 3A */	lis r3, msg_scrn_d_msg_scrn_explain__stringBase0@ha
/* 8023D0CC  3B 23 99 10 */	addi r25, r3, msg_scrn_d_msg_scrn_explain__stringBase0@l
lbl_8023D0D0:
/* 8023D0D0  7F 9F D2 14 */	add r28, r31, r26
/* 8023D0D4  80 7C 00 08 */	lwz r3, 8(r28)
/* 8023D0D8  83 03 00 04 */	lwz r24, 4(r3)
/* 8023D0DC  4B DD 79 15 */	bl mDoExt_getMesgFont__Fv
/* 8023D0E0  7C 64 1B 78 */	mr r4, r3
/* 8023D0E4  7F 03 C3 78 */	mr r3, r24
/* 8023D0E8  81 98 00 00 */	lwz r12, 0(r24)
/* 8023D0EC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8023D0F0  7D 89 03 A6 */	mtctr r12
/* 8023D0F4  4E 80 04 21 */	bctrl 
/* 8023D0F8  80 7C 00 08 */	lwz r3, 8(r28)
/* 8023D0FC  80 63 00 04 */	lwz r3, 4(r3)
/* 8023D100  38 80 02 00 */	li r4, 0x200
/* 8023D104  38 B9 00 63 */	addi r5, r25, 0x63
/* 8023D108  4C C6 31 82 */	crclr 6
/* 8023D10C  48 0C 36 41 */	bl setString__10J2DTextBoxFsPCce
/* 8023D110  80 7C 00 08 */	lwz r3, 8(r28)
/* 8023D114  80 63 00 04 */	lwz r3, 4(r3)
/* 8023D118  D3 C3 01 18 */	stfs f30, 0x118(r3)
/* 8023D11C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8023D120  28 03 00 00 */	cmplwi r3, 0
/* 8023D124  41 82 00 50 */	beq lbl_8023D174
/* 8023D128  83 03 00 04 */	lwz r24, 4(r3)
/* 8023D12C  4B DD 78 C5 */	bl mDoExt_getMesgFont__Fv
/* 8023D130  7C 64 1B 78 */	mr r4, r3
/* 8023D134  7F 03 C3 78 */	mr r3, r24
/* 8023D138  81 98 00 00 */	lwz r12, 0(r24)
/* 8023D13C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8023D140  7D 89 03 A6 */	mtctr r12
/* 8023D144  4E 80 04 21 */	bctrl 
/* 8023D148  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8023D14C  80 63 00 04 */	lwz r3, 4(r3)
/* 8023D150  38 80 02 00 */	li r4, 0x200
/* 8023D154  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_explain__stringBase0@ha
/* 8023D158  38 A5 99 10 */	addi r5, r5, msg_scrn_d_msg_scrn_explain__stringBase0@l
/* 8023D15C  38 A5 00 63 */	addi r5, r5, 0x63
/* 8023D160  4C C6 31 82 */	crclr 6
/* 8023D164  48 0C 35 E9 */	bl setString__10J2DTextBoxFsPCce
/* 8023D168  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8023D16C  80 63 00 04 */	lwz r3, 4(r3)
/* 8023D170  D3 C3 01 18 */	stfs f30, 0x118(r3)
lbl_8023D174:
/* 8023D174  3B 7B 00 01 */	addi r27, r27, 1
/* 8023D178  2C 1B 00 02 */	cmpwi r27, 2
/* 8023D17C  3B 5A 00 04 */	addi r26, r26, 4
/* 8023D180  41 80 FF 50 */	blt lbl_8023D0D0
/* 8023D184  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8023D188  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 8023D18C  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 8023D190  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 8023D194  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 8023D198  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D19C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023D1A0  7D 89 03 A6 */	mtctr r12
/* 8023D1A4  4E 80 04 21 */	bctrl 
/* 8023D1A8  48 0B 9F 59 */	bl getBounds__7J2DPaneFv
/* 8023D1AC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8023D1B0  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023D1B4  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8023D1B8  C0 03 02 CC */	lfs f0, 0x2cc(r3)
/* 8023D1BC  EF C0 08 2A */	fadds f30, f0, f1
/* 8023D1C0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8023D1C4  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 8023D1C8  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 8023D1CC  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 8023D1D0  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 8023D1D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D1D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023D1DC  7D 89 03 A6 */	mtctr r12
/* 8023D1E0  4E 80 04 21 */	bctrl 
/* 8023D1E4  48 0B 9F 1D */	bl getBounds__7J2DPaneFv
/* 8023D1E8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8023D1EC  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023D1F0  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8023D1F4  C0 03 02 C8 */	lfs f0, 0x2c8(r3)
/* 8023D1F8  EF E0 08 2A */	fadds f31, f0, f1
/* 8023D1FC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8023D200  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 8023D204  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 8023D208  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 8023D20C  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 8023D210  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D214  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023D218  7D 89 03 A6 */	mtctr r12
/* 8023D21C  4E 80 04 21 */	bctrl 
/* 8023D220  FC 20 F8 90 */	fmr f1, f31
/* 8023D224  FC 40 F0 90 */	fmr f2, f30
/* 8023D228  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D22C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8023D230  7D 89 03 A6 */	mtctr r12
/* 8023D234  4E 80 04 21 */	bctrl 
/* 8023D238  38 60 00 6C */	li r3, 0x6c
/* 8023D23C  48 09 1A 11 */	bl __nw__FUl
/* 8023D240  7C 60 1B 79 */	or. r0, r3, r3
/* 8023D244  41 82 00 28 */	beq lbl_8023D26C
/* 8023D248  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8023D24C  3C A0 79 61 */	lis r5, 0x7961 /* 0x79615F6E@ha */
/* 8023D250  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x79615F6E@l */
/* 8023D254  3C A0 73 65 */	lis r5, 0x7365 /* 0x7365745F@ha */
/* 8023D258  38 A5 74 5F */	addi r5, r5, 0x745F /* 0x7365745F@l */
/* 8023D25C  38 E0 00 00 */	li r7, 0
/* 8023D260  39 00 00 00 */	li r8, 0
/* 8023D264  48 01 67 21 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023D268  7C 60 1B 78 */	mr r0, r3
lbl_8023D26C:
/* 8023D26C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8023D270  38 60 00 6C */	li r3, 0x6c
/* 8023D274  48 09 19 D9 */	bl __nw__FUl
/* 8023D278  7C 60 1B 79 */	or. r0, r3, r3
/* 8023D27C  41 82 00 28 */	beq lbl_8023D2A4
/* 8023D280  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8023D284  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 8023D288  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 8023D28C  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 8023D290  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 8023D294  38 E0 00 00 */	li r7, 0
/* 8023D298  39 00 00 00 */	li r8, 0
/* 8023D29C  48 01 66 E9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023D2A0  7C 60 1B 78 */	mr r0, r3
lbl_8023D2A4:
/* 8023D2A4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8023D2A8  38 60 00 6C */	li r3, 0x6c
/* 8023D2AC  48 09 19 A1 */	bl __nw__FUl
/* 8023D2B0  7C 60 1B 79 */	or. r0, r3, r3
/* 8023D2B4  41 82 00 28 */	beq lbl_8023D2DC
/* 8023D2B8  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8023D2BC  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 8023D2C0  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 8023D2C4  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 8023D2C8  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 8023D2CC  38 E0 00 00 */	li r7, 0
/* 8023D2D0  39 00 00 00 */	li r8, 0
/* 8023D2D4  48 01 66 B1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023D2D8  7C 60 1B 78 */	mr r0, r3
lbl_8023D2DC:
/* 8023D2DC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8023D2E0  38 60 00 6C */	li r3, 0x6c
/* 8023D2E4  48 09 19 69 */	bl __nw__FUl
/* 8023D2E8  7C 60 1B 79 */	or. r0, r3, r3
/* 8023D2EC  41 82 00 24 */	beq lbl_8023D310
/* 8023D2F0  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8023D2F4  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 8023D2F8  38 C5 4F 54 */	addi r6, r5, 0x4F54 /* 0x524F4F54@l */
/* 8023D2FC  38 A0 00 00 */	li r5, 0
/* 8023D300  38 E0 00 02 */	li r7, 2
/* 8023D304  39 00 00 00 */	li r8, 0
/* 8023D308  48 01 66 7D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023D30C  7C 60 1B 78 */	mr r0, r3
lbl_8023D310:
/* 8023D310  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8023D314  38 60 00 6C */	li r3, 0x6c
/* 8023D318  48 09 19 35 */	bl __nw__FUl
/* 8023D31C  7C 60 1B 79 */	or. r0, r3, r3
/* 8023D320  41 82 00 24 */	beq lbl_8023D344
/* 8023D324  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8023D328  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 8023D32C  38 C5 4F 54 */	addi r6, r5, 0x4F54 /* 0x524F4F54@l */
/* 8023D330  38 A0 00 00 */	li r5, 0
/* 8023D334  38 E0 00 02 */	li r7, 2
/* 8023D338  39 00 00 00 */	li r8, 0
/* 8023D33C  48 01 66 49 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023D340  7C 60 1B 78 */	mr r0, r3
lbl_8023D344:
/* 8023D344  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8023D348  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8023D34C  28 00 00 01 */	cmplwi r0, 1
/* 8023D350  40 82 00 C8 */	bne lbl_8023D418
/* 8023D354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8023D358  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023D35C  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 8023D360  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8023D364  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8023D368  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_explain__stringBase0@ha
/* 8023D36C  38 A5 99 10 */	addi r5, r5, msg_scrn_d_msg_scrn_explain__stringBase0@l
/* 8023D370  38 A5 00 64 */	addi r5, r5, 0x64
/* 8023D374  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D378  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023D37C  7D 89 03 A6 */	mtctr r12
/* 8023D380  4E 80 04 21 */	bctrl 
/* 8023D384  7C 78 1B 78 */	mr r24, r3
/* 8023D388  38 60 01 50 */	li r3, 0x150
/* 8023D38C  48 09 18 C1 */	bl __nw__FUl
/* 8023D390  7C 60 1B 79 */	or. r0, r3, r3
/* 8023D394  41 82 00 10 */	beq lbl_8023D3A4
/* 8023D398  7F 04 C3 78 */	mr r4, r24
/* 8023D39C  48 0B F3 6D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 8023D3A0  7C 60 1B 78 */	mr r0, r3
lbl_8023D3A4:
/* 8023D3A4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8023D3A8  38 60 00 00 */	li r3, 0
/* 8023D3AC  98 61 00 08 */	stb r3, 8(r1)
/* 8023D3B0  98 61 00 09 */	stb r3, 9(r1)
/* 8023D3B4  98 61 00 0A */	stb r3, 0xa(r1)
/* 8023D3B8  38 00 00 FF */	li r0, 0xff
/* 8023D3BC  98 01 00 0B */	stb r0, 0xb(r1)
/* 8023D3C0  80 01 00 08 */	lwz r0, 8(r1)
/* 8023D3C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023D3C8  98 61 00 10 */	stb r3, 0x10(r1)
/* 8023D3CC  98 61 00 11 */	stb r3, 0x11(r1)
/* 8023D3D0  98 61 00 12 */	stb r3, 0x12(r1)
/* 8023D3D4  98 61 00 13 */	stb r3, 0x13(r1)
/* 8023D3D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8023D3DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023D3E0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8023D3E4  38 81 00 14 */	addi r4, r1, 0x14
/* 8023D3E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8023D3EC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D3F0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8023D3F4  7D 89 03 A6 */	mtctr r12
/* 8023D3F8  4E 80 04 21 */	bctrl 
/* 8023D3FC  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8023D400  38 80 00 00 */	li r4, 0
/* 8023D404  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D408  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8023D40C  7D 89 03 A6 */	mtctr r12
/* 8023D410  4E 80 04 21 */	bctrl 
/* 8023D414  48 00 00 0C */	b lbl_8023D420
lbl_8023D418:
/* 8023D418  38 00 00 00 */	li r0, 0
/* 8023D41C  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_8023D420:
/* 8023D420  38 60 00 24 */	li r3, 0x24
/* 8023D424  48 09 18 29 */	bl __nw__FUl
/* 8023D428  7C 60 1B 79 */	or. r0, r3, r3
/* 8023D42C  41 82 00 0C */	beq lbl_8023D438
/* 8023D430  4B FF E5 85 */	bl __ct__15dMsgScrnArrow_cFv
/* 8023D434  7C 60 1B 78 */	mr r0, r3
lbl_8023D438:
/* 8023D438  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8023D43C  28 1E 00 00 */	cmplwi r30, 0
/* 8023D440  41 82 00 24 */	beq lbl_8023D464
/* 8023D444  38 60 01 18 */	li r3, 0x118
/* 8023D448  48 09 18 05 */	bl __nw__FUl
/* 8023D44C  7C 60 1B 79 */	or. r0, r3, r3
/* 8023D450  41 82 00 0C */	beq lbl_8023D45C
/* 8023D454  4B FF BC 61 */	bl __ct__17dMsgScrn3Select_cFv
/* 8023D458  7C 60 1B 78 */	mr r0, r3
lbl_8023D45C:
/* 8023D45C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8023D460  48 00 00 0C */	b lbl_8023D46C
lbl_8023D464:
/* 8023D464  38 00 00 00 */	li r0, 0
/* 8023D468  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_8023D46C:
/* 8023D46C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8023D470  38 61 00 24 */	addi r3, r1, 0x24
/* 8023D474  80 A4 00 04 */	lwz r5, 4(r4)
/* 8023D478  38 C0 00 00 */	li r6, 0
/* 8023D47C  38 E0 00 00 */	li r7, 0
/* 8023D480  48 01 7A 3D */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8023D484  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8023D488  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8023D48C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8023D490  90 01 00 40 */	stw r0, 0x40(r1)
/* 8023D494  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8023D498  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023D49C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8023D4A0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8023D4A4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8023D4A8  4B FF E9 51 */	bl setPos__15dMsgScrnArrow_cFff
/* 8023D4AC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8023D4B0  38 61 00 18 */	addi r3, r1, 0x18
/* 8023D4B4  80 A4 00 04 */	lwz r5, 4(r4)
/* 8023D4B8  38 C0 00 00 */	li r6, 0
/* 8023D4BC  38 E0 00 00 */	li r7, 0
/* 8023D4C0  48 01 79 FD */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8023D4C4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8023D4C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8023D4CC  90 61 00 30 */	stw r3, 0x30(r1)
/* 8023D4D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8023D4D4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8023D4D8  90 01 00 38 */	stw r0, 0x38(r1)
/* 8023D4DC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8023D4E0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023D4E4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8023D4E8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8023D4EC  EC 01 00 2A */	fadds f0, f1, f0
/* 8023D4F0  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8023D4F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8023D4F8  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 8023D4FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D500  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023D504  7D 89 03 A6 */	mtctr r12
/* 8023D508  4E 80 04 21 */	bctrl 
/* 8023D50C  7F E3 FB 78 */	mr r3, r31
/* 8023D510  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8023D514  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8023D518  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8023D51C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8023D520  39 61 00 70 */	addi r11, r1, 0x70
/* 8023D524  48 12 4C F1 */	bl _restgpr_24
/* 8023D528  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8023D52C  7C 08 03 A6 */	mtlr r0
/* 8023D530  38 21 00 90 */	addi r1, r1, 0x90
/* 8023D534  4E 80 00 20 */	blr 
