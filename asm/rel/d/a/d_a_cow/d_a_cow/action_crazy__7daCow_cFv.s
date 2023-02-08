lbl_8065FE50:
/* 8065FE50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065FE54  7C 08 02 A6 */	mflr r0
/* 8065FE58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065FE5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8065FE60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8065FE64  7C 7F 1B 78 */	mr r31, r3
/* 8065FE68  A0 03 0C 5C */	lhz r0, 0xc5c(r3)
/* 8065FE6C  2C 00 00 02 */	cmpwi r0, 2
/* 8065FE70  41 82 02 84 */	beq lbl_806600F4
/* 8065FE74  40 80 00 14 */	bge lbl_8065FE88
/* 8065FE78  2C 00 00 00 */	cmpwi r0, 0
/* 8065FE7C  41 82 00 18 */	beq lbl_8065FE94
/* 8065FE80  40 80 00 CC */	bge lbl_8065FF4C
/* 8065FE84  48 00 02 70 */	b lbl_806600F4
lbl_8065FE88:
/* 8065FE88  2C 00 00 04 */	cmpwi r0, 4
/* 8065FE8C  40 80 02 68 */	bge lbl_806600F4
/* 8065FE90  48 00 02 3C */	b lbl_806600CC
lbl_8065FE94:
/* 8065FE94  38 00 00 00 */	li r0, 0
/* 8065FE98  98 1F 0C B4 */	stb r0, 0xcb4(r31)
/* 8065FE9C  98 1F 0C 10 */	stb r0, 0xc10(r31)
/* 8065FEA0  80 7F 0C 0C */	lwz r3, 0xc0c(r31)
/* 8065FEA4  88 9F 0C 10 */	lbz r4, 0xc10(r31)
/* 8065FEA8  7C 84 07 74 */	extsb r4, r4
/* 8065FEAC  4B 9F 19 05 */	bl dPath_GetPnt__FPC5dPathi
/* 8065FEB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065FEB4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8065FEB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8065FEBC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8065FEC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8065FEC4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8065FEC8  88 7F 0C 10 */	lbz r3, 0xc10(r31)
/* 8065FECC  38 03 00 01 */	addi r0, r3, 1
/* 8065FED0  98 1F 0C 10 */	stb r0, 0xc10(r31)
/* 8065FED4  80 7F 0C 0C */	lwz r3, 0xc0c(r31)
/* 8065FED8  88 9F 0C 10 */	lbz r4, 0xc10(r31)
/* 8065FEDC  7C 84 07 74 */	extsb r4, r4
/* 8065FEE0  4B 9F 18 D1 */	bl dPath_GetPnt__FPC5dPathi
/* 8065FEE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065FEE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8065FEEC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8065FEF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8065FEF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8065FEF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8065FEFC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8065FF00  38 81 00 08 */	addi r4, r1, 8
/* 8065FF04  4B C1 0D 01 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065FF08  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8065FF0C  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8065FF10  B0 7F 0C 34 */	sth r3, 0xc34(r31)
/* 8065FF14  38 00 00 00 */	li r0, 0
/* 8065FF18  98 1F 0C 9F */	stb r0, 0xc9f(r31)
/* 8065FF1C  3C 60 80 66 */	lis r3, lit_3998@ha /* 0x80662DC8@ha */
/* 8065FF20  C0 03 2D C8 */	lfs f0, lit_3998@l(r3)  /* 0x80662DC8@l */
/* 8065FF24  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8065FF28  38 00 00 01 */	li r0, 1
/* 8065FF2C  98 1F 0C A6 */	stb r0, 0xca6(r31)
/* 8065FF30  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha /* 0x80450618@ha */
/* 8065FF34  93 E3 06 18 */	stw r31, g_dComIfGoat_gameInfo@l(r3)  /* 0x80450618@l */
/* 8065FF38  B0 1F 0C 5C */	sth r0, 0xc5c(r31)
/* 8065FF3C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8065FF40  60 00 01 00 */	ori r0, r0, 0x100
/* 8065FF44  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8065FF48  48 00 01 AC */	b lbl_806600F4
lbl_8065FF4C:
/* 8065FF4C  80 7F 0C 94 */	lwz r3, 0xc94(r31)
/* 8065FF50  2C 03 00 00 */	cmpwi r3, 0
/* 8065FF54  41 82 00 0C */	beq lbl_8065FF60
/* 8065FF58  38 03 FF FF */	addi r0, r3, -1
/* 8065FF5C  90 1F 0C 94 */	stw r0, 0xc94(r31)
lbl_8065FF60:
/* 8065FF60  80 7F 0C 90 */	lwz r3, 0xc90(r31)
/* 8065FF64  2C 03 00 00 */	cmpwi r3, 0
/* 8065FF68  41 82 00 0C */	beq lbl_8065FF74
/* 8065FF6C  38 03 FF FF */	addi r0, r3, -1
/* 8065FF70  90 1F 0C 90 */	stw r0, 0xc90(r31)
lbl_8065FF74:
/* 8065FF74  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8065FF78  60 00 40 00 */	ori r0, r0, 0x4000
/* 8065FF7C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8065FF80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065FF84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065FF88  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8065FF8C  28 00 00 00 */	cmplwi r0, 0
/* 8065FF90  41 82 00 74 */	beq lbl_80660004
/* 8065FF94  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8065FF98  7F C3 F3 78 */	mr r3, r30
/* 8065FF9C  4B 9E 84 4D */	bl getRunEventName__16dEvent_manager_cFv
/* 8065FFA0  3C 80 80 66 */	lis r4, d_a_cow__stringBase0@ha /* 0x80662F18@ha */
/* 8065FFA4  38 84 2F 18 */	addi r4, r4, d_a_cow__stringBase0@l /* 0x80662F18@l */
/* 8065FFA8  38 84 00 0B */	addi r4, r4, 0xb
/* 8065FFAC  4B D0 89 E9 */	bl strcmp
/* 8065FFB0  2C 03 00 00 */	cmpwi r3, 0
/* 8065FFB4  41 82 00 50 */	beq lbl_80660004
/* 8065FFB8  7F C3 F3 78 */	mr r3, r30
/* 8065FFBC  4B 9E 84 2D */	bl getRunEventName__16dEvent_manager_cFv
/* 8065FFC0  3C 80 80 66 */	lis r4, d_a_cow__stringBase0@ha /* 0x80662F18@ha */
/* 8065FFC4  38 84 2F 18 */	addi r4, r4, d_a_cow__stringBase0@l /* 0x80662F18@l */
/* 8065FFC8  38 84 00 14 */	addi r4, r4, 0x14
/* 8065FFCC  4B D0 89 C9 */	bl strcmp
/* 8065FFD0  2C 03 00 00 */	cmpwi r3, 0
/* 8065FFD4  41 82 00 30 */	beq lbl_80660004
/* 8065FFD8  7F C3 F3 78 */	mr r3, r30
/* 8065FFDC  4B 9E 84 0D */	bl getRunEventName__16dEvent_manager_cFv
/* 8065FFE0  3C 80 80 66 */	lis r4, d_a_cow__stringBase0@ha /* 0x80662F18@ha */
/* 8065FFE4  38 84 2F 18 */	addi r4, r4, d_a_cow__stringBase0@l /* 0x80662F18@l */
/* 8065FFE8  38 84 00 25 */	addi r4, r4, 0x25
/* 8065FFEC  4B D0 89 A9 */	bl strcmp
/* 8065FFF0  2C 03 00 00 */	cmpwi r3, 0
/* 8065FFF4  41 82 00 10 */	beq lbl_80660004
/* 8065FFF8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8065FFFC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80660000  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80660004:
/* 80660004  88 1F 0C 9F */	lbz r0, 0xc9f(r31)
/* 80660008  28 00 00 08 */	cmplwi r0, 8
/* 8066000C  41 81 00 8C */	bgt lbl_80660098
/* 80660010  3C 60 80 66 */	lis r3, lit_7039@ha /* 0x80663270@ha */
/* 80660014  38 63 32 70 */	addi r3, r3, lit_7039@l /* 0x80663270@l */
/* 80660018  54 00 10 3A */	slwi r0, r0, 2
/* 8066001C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80660020  7C 09 03 A6 */	mtctr r0
/* 80660024  4E 80 04 20 */	bctr 
lbl_80660028:
/* 80660028  7F E3 FB 78 */	mr r3, r31
/* 8066002C  4B FF DE 45 */	bl executeCrazyWait__7daCow_cFv
/* 80660030  48 00 00 68 */	b lbl_80660098
lbl_80660034:
/* 80660034  7F E3 FB 78 */	mr r3, r31
/* 80660038  4B FF DF 09 */	bl executeCrazyDash__7daCow_cFv
/* 8066003C  48 00 00 5C */	b lbl_80660098
lbl_80660040:
/* 80660040  7F E3 FB 78 */	mr r3, r31
/* 80660044  4B FF E6 A5 */	bl executeCrazyBeforeCatch__7daCow_cFv
/* 80660048  48 00 00 50 */	b lbl_80660098
lbl_8066004C:
/* 8066004C  7F E3 FB 78 */	mr r3, r31
/* 80660050  4B FF E8 39 */	bl executeCrazyCatch__7daCow_cFv
/* 80660054  48 00 00 44 */	b lbl_80660098
lbl_80660058:
/* 80660058  7F E3 FB 78 */	mr r3, r31
/* 8066005C  4B FF EB 95 */	bl executeCrazyThrow__7daCow_cFv
/* 80660060  48 00 00 38 */	b lbl_80660098
lbl_80660064:
/* 80660064  7F E3 FB 78 */	mr r3, r31
/* 80660068  4B FF F0 DD */	bl executeCrazyAttack__7daCow_cFv
/* 8066006C  48 00 00 2C */	b lbl_80660098
lbl_80660070:
/* 80660070  7F E3 FB 78 */	mr r3, r31
/* 80660074  4B FF F3 09 */	bl executeCrazyAway__7daCow_cFv
/* 80660078  48 00 00 20 */	b lbl_80660098
lbl_8066007C:
/* 8066007C  7F E3 FB 78 */	mr r3, r31
/* 80660080  4B FF F6 61 */	bl executeCrazyEnd__7daCow_cFv
/* 80660084  48 00 00 14 */	b lbl_80660098
lbl_80660088:
/* 80660088  7F E3 FB 78 */	mr r3, r31
/* 8066008C  4B FF 95 A5 */	bl setGroundAngle__7daCow_cFv
/* 80660090  7F E3 FB 78 */	mr r3, r31
/* 80660094  4B FF F7 49 */	bl executeCrazyBack__7daCow_cFv
lbl_80660098:
/* 80660098  88 1F 0C 9F */	lbz r0, 0xc9f(r31)
/* 8066009C  28 00 00 08 */	cmplwi r0, 8
/* 806600A0  41 82 00 54 */	beq lbl_806600F4
/* 806600A4  38 60 00 00 */	li r3, 0
/* 806600A8  38 00 00 03 */	li r0, 3
/* 806600AC  7C 09 03 A6 */	mtctr r0
lbl_806600B0:
/* 806600B0  38 83 08 78 */	addi r4, r3, 0x878
/* 806600B4  7C 1F 20 2E */	lwzx r0, r31, r4
/* 806600B8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806600BC  7C 1F 21 2E */	stwx r0, r31, r4
/* 806600C0  38 63 01 38 */	addi r3, r3, 0x138
/* 806600C4  42 00 FF EC */	bdnz lbl_806600B0
/* 806600C8  48 00 00 2C */	b lbl_806600F4
lbl_806600CC:
/* 806600CC  38 00 00 00 */	li r0, 0
/* 806600D0  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha /* 0x80450618@ha */
/* 806600D4  90 03 06 18 */	stw r0, g_dComIfGoat_gameInfo@l(r3)  /* 0x80450618@l */
/* 806600D8  98 1F 0C A6 */	stb r0, 0xca6(r31)
/* 806600DC  3C 60 80 66 */	lis r3, lit_3998@ha /* 0x80662DC8@ha */
/* 806600E0  C0 03 2D C8 */	lfs f0, lit_3998@l(r3)  /* 0x80662DC8@l */
/* 806600E4  D0 1F 0C B0 */	stfs f0, 0xcb0(r31)
/* 806600E8  B0 1F 0C 42 */	sth r0, 0xc42(r31)
/* 806600EC  B0 1F 0C 3A */	sth r0, 0xc3a(r31)
/* 806600F0  B0 1F 0C 40 */	sth r0, 0xc40(r31)
lbl_806600F4:
/* 806600F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806600F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806600FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80660100  7C 08 03 A6 */	mtlr r0
/* 80660104  38 21 00 20 */	addi r1, r1, 0x20
/* 80660108  4E 80 00 20 */	blr 
