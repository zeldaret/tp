lbl_801AFEA4:
/* 801AFEA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AFEA8  7C 08 02 A6 */	mflr r0
/* 801AFEAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AFEB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AFEB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801AFEB8  7C 7F 1B 78 */	mr r31, r3
/* 801AFEBC  80 63 00 04 */	lwz r3, 4(r3)
/* 801AFEC0  48 11 E8 C5 */	bl getTotalFreeSize__7JKRHeapFv
/* 801AFEC4  38 60 01 18 */	li r3, 0x118
/* 801AFEC8  48 11 ED 85 */	bl __nw__FUl
/* 801AFECC  7C 60 1B 79 */	or. r0, r3, r3
/* 801AFED0  41 82 00 0C */	beq lbl_801AFEDC
/* 801AFED4  48 14 85 C5 */	bl __ct__9J2DScreenFv
/* 801AFED8  7C 60 1B 78 */	mr r0, r3
lbl_801AFEDC:
/* 801AFEDC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801AFEE0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801AFEE4  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801AFEE8  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801AFEEC  3C A0 01 02 */	lis r5, 0x102
/* 801AFEF0  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 801AFEF4  3B C6 61 C0 */	addi r30, r6, g_dComIfG_gameInfo@l
/* 801AFEF8  80 DE 5C B8 */	lwz r6, 0x5cb8(r30)
/* 801AFEFC  48 14 87 4D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801AFF00  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801AFF04  48 0A 51 E5 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801AFF08  38 60 01 18 */	li r3, 0x118
/* 801AFF0C  48 11 ED 41 */	bl __nw__FUl
/* 801AFF10  7C 60 1B 79 */	or. r0, r3, r3
/* 801AFF14  41 82 00 0C */	beq lbl_801AFF20
/* 801AFF18  48 14 85 81 */	bl __ct__9J2DScreenFv
/* 801AFF1C  7C 60 1B 78 */	mr r0, r3
lbl_801AFF20:
/* 801AFF20  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801AFF24  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801AFF28  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801AFF2C  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801AFF30  38 84 00 1F */	addi r4, r4, 0x1f
/* 801AFF34  3C A0 00 02 */	lis r5, 2
/* 801AFF38  80 DE 5C B8 */	lwz r6, 0x5cb8(r30)
/* 801AFF3C  48 14 87 0D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801AFF40  38 60 00 00 */	li r3, 0
/* 801AFF44  7C 65 1B 78 */	mr r5, r3
/* 801AFF48  7C 64 1B 78 */	mr r4, r3
/* 801AFF4C  38 00 00 02 */	li r0, 2
/* 801AFF50  7C 09 03 A6 */	mtctr r0
lbl_801AFF54:
/* 801AFF54  7C DF 1A 14 */	add r6, r31, r3
/* 801AFF58  90 A6 01 6C */	stw r5, 0x16c(r6)
/* 801AFF5C  90 86 01 74 */	stw r4, 0x174(r6)
/* 801AFF60  38 63 00 04 */	addi r3, r3, 4
/* 801AFF64  42 00 FF F0 */	bdnz lbl_801AFF54
/* 801AFF68  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801AFF6C  48 0A 51 7D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801AFF70  38 60 00 08 */	li r3, 8
/* 801AFF74  48 11 EC D9 */	bl __nw__FUl
/* 801AFF78  28 03 00 00 */	cmplwi r3, 0
/* 801AFF7C  41 82 00 20 */	beq lbl_801AFF9C
/* 801AFF80  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 801AFF84  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 801AFF88  90 03 00 00 */	stw r0, 0(r3)
/* 801AFF8C  3C 80 80 3C */	lis r4, __vt__20dMenu_Collect2DTop_c@ha
/* 801AFF90  38 04 C7 68 */	addi r0, r4, __vt__20dMenu_Collect2DTop_c@l
/* 801AFF94  90 03 00 00 */	stw r0, 0(r3)
/* 801AFF98  93 E3 00 04 */	stw r31, 4(r3)
lbl_801AFF9C:
/* 801AFF9C  90 7F 00 88 */	stw r3, 0x88(r31)
/* 801AFFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AFFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AFFA8  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 801AFFAC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801AFFB0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801AFFB4  3C A0 80 39 */	lis r5, d_menu_d_menu_collect__stringBase0@ha
/* 801AFFB8  38 A5 53 30 */	addi r5, r5, d_menu_d_menu_collect__stringBase0@l
/* 801AFFBC  38 A5 00 45 */	addi r5, r5, 0x45
/* 801AFFC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801AFFC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801AFFC8  7D 89 03 A6 */	mtctr r12
/* 801AFFCC  4E 80 04 21 */	bctrl 
/* 801AFFD0  7C 7E 1B 78 */	mr r30, r3
/* 801AFFD4  38 60 01 50 */	li r3, 0x150
/* 801AFFD8  48 11 EC 75 */	bl __nw__FUl
/* 801AFFDC  7C 60 1B 79 */	or. r0, r3, r3
/* 801AFFE0  41 82 00 10 */	beq lbl_801AFFF0
/* 801AFFE4  7F C4 F3 78 */	mr r4, r30
/* 801AFFE8  48 14 C7 21 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801AFFEC  7C 60 1B 78 */	mr r0, r3
lbl_801AFFF0:
/* 801AFFF0  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 801AFFF4  38 60 00 00 */	li r3, 0
/* 801AFFF8  98 61 00 08 */	stb r3, 8(r1)
/* 801AFFFC  98 61 00 09 */	stb r3, 9(r1)
/* 801B0000  98 61 00 0A */	stb r3, 0xa(r1)
/* 801B0004  38 00 00 FF */	li r0, 0xff
/* 801B0008  98 01 00 0B */	stb r0, 0xb(r1)
/* 801B000C  80 01 00 08 */	lwz r0, 8(r1)
/* 801B0010  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B0014  98 61 00 10 */	stb r3, 0x10(r1)
/* 801B0018  98 61 00 11 */	stb r3, 0x11(r1)
/* 801B001C  98 61 00 12 */	stb r3, 0x12(r1)
/* 801B0020  98 61 00 13 */	stb r3, 0x13(r1)
/* 801B0024  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801B0028  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B002C  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 801B0030  38 81 00 14 */	addi r4, r1, 0x14
/* 801B0034  38 A1 00 0C */	addi r5, r1, 0xc
/* 801B0038  81 83 00 00 */	lwz r12, 0(r3)
/* 801B003C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B0040  7D 89 03 A6 */	mtctr r12
/* 801B0044  4E 80 04 21 */	bctrl 
/* 801B0048  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 801B004C  38 80 00 00 */	li r4, 0
/* 801B0050  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0054  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801B0058  7D 89 03 A6 */	mtctr r12
/* 801B005C  4E 80 04 21 */	bctrl 
/* 801B0060  38 60 00 B8 */	li r3, 0xb8
/* 801B0064  48 11 EB E9 */	bl __nw__FUl
/* 801B0068  7C 60 1B 79 */	or. r0, r3, r3
/* 801B006C  41 82 00 18 */	beq lbl_801B0084
/* 801B0070  38 80 00 02 */	li r4, 2
/* 801B0074  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B0078  38 A0 00 00 */	li r5, 0
/* 801B007C  4B FE 41 A5 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801B0080  7C 60 1B 78 */	mr r0, r3
lbl_801B0084:
/* 801B0084  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801B0088  38 60 00 2C */	li r3, 0x2c
/* 801B008C  48 11 EB C1 */	bl __nw__FUl
/* 801B0090  7C 60 1B 79 */	or. r0, r3, r3
/* 801B0094  41 82 00 0C */	beq lbl_801B00A0
/* 801B0098  48 09 9B 89 */	bl __ct__12dMsgString_cFv
/* 801B009C  7C 60 1B 78 */	mr r0, r3
lbl_801B00A0:
/* 801B00A0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801B00A4  38 00 00 00 */	li r0, 0
/* 801B00A8  90 1F 00 90 */	stw r0, 0x90(r31)
/* 801B00AC  90 1F 00 94 */	stw r0, 0x94(r31)
/* 801B00B0  90 1F 00 98 */	stw r0, 0x98(r31)
/* 801B00B4  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 801B00B8  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 801B00BC  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 801B00C0  98 1F 02 2C */	stb r0, 0x22c(r31)
/* 801B00C4  7F E3 FB 78 */	mr r3, r31
/* 801B00C8  48 00 1B 75 */	bl animationSet__17dMenu_Collect2D_cFv
/* 801B00CC  7F E3 FB 78 */	mr r3, r31
/* 801B00D0  48 00 06 7D */	bl screenSet__17dMenu_Collect2D_cFv
/* 801B00D4  7F E3 FB 78 */	mr r3, r31
/* 801B00D8  48 00 04 99 */	bl initialize__17dMenu_Collect2D_cFv
/* 801B00DC  7F E3 FB 78 */	mr r3, r31
/* 801B00E0  38 80 00 01 */	li r4, 1
/* 801B00E4  48 00 41 F5 */	bl setHIO__17dMenu_Collect2D_cFb
/* 801B00E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B00EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B00F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B00F4  7C 08 03 A6 */	mtlr r0
/* 801B00F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801B00FC  4E 80 00 20 */	blr 
