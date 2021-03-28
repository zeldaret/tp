lbl_801843CC:
/* 801843CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801843D0  7C 08 02 A6 */	mflr r0
/* 801843D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801843D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801843DC  7C 7F 1B 78 */	mr r31, r3
/* 801843E0  80 0D 80 84 */	lwz r0, g_blackColor(r13)
/* 801843E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801843E8  90 01 00 08 */	stw r0, 8(r1)
/* 801843EC  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801843F0  88 01 00 08 */	lbz r0, 8(r1)
/* 801843F4  98 03 00 0C */	stb r0, 0xc(r3)
/* 801843F8  88 01 00 09 */	lbz r0, 9(r1)
/* 801843FC  98 03 00 0D */	stb r0, 0xd(r3)
/* 80184400  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80184404  98 03 00 0E */	stb r0, 0xe(r3)
/* 80184408  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8018440C  98 03 00 0F */	stb r0, 0xf(r3)
/* 80184410  38 60 00 30 */	li r3, 0x30
/* 80184414  48 14 A8 39 */	bl __nw__FUl
/* 80184418  7C 60 1B 79 */	or. r0, r3, r3
/* 8018441C  41 82 00 2C */	beq lbl_80184448
/* 80184420  38 80 00 02 */	li r4, 2
/* 80184424  38 A0 00 02 */	li r5, 2
/* 80184428  38 C0 00 01 */	li r6, 1
/* 8018442C  38 E0 00 01 */	li r7, 1
/* 80184430  C0 22 9F 2C */	lfs f1, lit_4165(r2)
/* 80184434  C0 42 9F 30 */	lfs f2, lit_4166(r2)
/* 80184438  39 00 00 00 */	li r8, 0
/* 8018443C  39 20 20 00 */	li r9, 0x2000
/* 80184440  4B EA DC 05 */	bl __ct__9STControlFssssffss
/* 80184444  7C 60 1B 78 */	mr r0, r3
lbl_80184448:
/* 80184448  90 1F 02 54 */	stw r0, 0x254(r31)
/* 8018444C  38 00 FF FF */	li r0, -1
/* 80184450  3C 60 80 43 */	lis r3, g_fsHIO@ha
/* 80184454  38 63 C9 EC */	addi r3, r3, g_fsHIO@l
/* 80184458  98 03 00 04 */	stb r0, 4(r3)
/* 8018445C  38 A0 00 00 */	li r5, 0
/* 80184460  38 60 00 00 */	li r3, 0
/* 80184464  38 00 00 03 */	li r0, 3
/* 80184468  7C 09 03 A6 */	mtctr r0
lbl_8018446C:
/* 8018446C  7C 9F 2A 14 */	add r4, r31, r5
/* 80184470  98 64 02 58 */	stb r3, 0x258(r4)
/* 80184474  98 64 02 5B */	stb r3, 0x25b(r4)
/* 80184478  38 A5 00 01 */	addi r5, r5, 1
/* 8018447C  42 00 FF F0 */	bdnz lbl_8018446C
/* 80184480  38 00 00 00 */	li r0, 0
/* 80184484  98 1F 02 65 */	stb r0, 0x265(r31)
/* 80184488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8018448C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80184490  4B EB 0B 3D */	bl init__10dSv_info_cFv
/* 80184494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80184498  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8018449C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 801844A0  4B EA 6E 29 */	bl itemInit__14dComIfG_play_cFv
/* 801844A4  38 00 00 00 */	li r0, 0
/* 801844A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801844AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801844B0  98 03 0F 19 */	stb r0, 0xf19(r3)
/* 801844B4  98 1F 23 75 */	stb r0, 0x2375(r31)
/* 801844B8  7F E3 FB 78 */	mr r3, r31
/* 801844BC  48 00 68 E5 */	bl screenSet__14dFile_select_cFv
/* 801844C0  7F E3 FB 78 */	mr r3, r31
/* 801844C4  48 00 7A 69 */	bl screenSetCopySel__14dFile_select_cFv
/* 801844C8  7F E3 FB 78 */	mr r3, r31
/* 801844CC  48 00 84 29 */	bl screenSet3Menu__14dFile_select_cFv
/* 801844D0  7F E3 FB 78 */	mr r3, r31
/* 801844D4  48 00 80 51 */	bl screenSetYesNo__14dFile_select_cFv
/* 801844D8  7F E3 FB 78 */	mr r3, r31
/* 801844DC  48 00 87 F5 */	bl screenSetDetail__14dFile_select_cFv
/* 801844E0  7F E3 FB 78 */	mr r3, r31
/* 801844E4  48 00 8A 6D */	bl displayInit__14dFile_select_cFv
/* 801844E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801844EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801844F0  7C 08 03 A6 */	mtlr r0
/* 801844F4  38 21 00 20 */	addi r1, r1, 0x20
/* 801844F8  4E 80 00 20 */	blr 
