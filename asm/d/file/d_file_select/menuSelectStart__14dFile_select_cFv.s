lbl_801868EC:
/* 801868EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801868F0  7C 08 02 A6 */	mflr r0
/* 801868F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801868F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801868FC  7C 7F 1B 78 */	mr r31, r3
/* 80186900  38 00 00 6D */	li r0, 0x6d
/* 80186904  90 01 00 08 */	stw r0, 8(r1)
/* 80186908  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018690C  38 81 00 08 */	addi r4, r1, 8
/* 80186910  38 A0 00 00 */	li r5, 0
/* 80186914  38 C0 00 00 */	li r6, 0
/* 80186918  38 E0 00 00 */	li r7, 0
/* 8018691C  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80186920  FC 40 08 90 */	fmr f2, f1
/* 80186924  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80186928  FC 80 18 90 */	fmr f4, f3
/* 8018692C  39 00 00 00 */	li r8, 0
/* 80186930  48 12 50 55 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80186934  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 80186938  28 00 00 01 */	cmplwi r0, 1
/* 8018693C  40 82 00 3C */	bne lbl_80186978
/* 80186940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80186944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80186948  38 9F 03 B8 */	addi r4, r31, 0x3b8
/* 8018694C  88 BF 02 65 */	lbz r5, 0x265(r31)
/* 80186950  4B EA F0 B5 */	bl card_to_memory__10dSv_info_cFPci
/* 80186954  38 00 00 01 */	li r0, 1
/* 80186958  98 1F 02 70 */	stb r0, 0x270(r31)
/* 8018695C  38 00 00 2E */	li r0, 0x2e
/* 80186960  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 80186964  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80186968  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8018696C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80186970  98 03 0F 18 */	stb r0, 0xf18(r3)
/* 80186974  48 00 00 F8 */	b lbl_80186A6C
lbl_80186978:
/* 80186978  28 00 00 00 */	cmplwi r0, 0
/* 8018697C  40 82 00 48 */	bne lbl_801869C4
/* 80186980  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80186984  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 80186988  48 00 E9 19 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018698C  7F E3 FB 78 */	mr r3, r31
/* 80186990  38 80 04 73 */	li r4, 0x473
/* 80186994  38 A0 04 7D */	li r5, 0x47d
/* 80186998  48 00 22 25 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018699C  7F E3 FB 78 */	mr r3, r31
/* 801869A0  38 80 00 49 */	li r4, 0x49
/* 801869A4  38 A0 00 00 */	li r5, 0
/* 801869A8  38 C0 00 00 */	li r6, 0
/* 801869AC  48 00 67 39 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 801869B0  38 00 00 01 */	li r0, 1
/* 801869B4  98 1F 02 6E */	stb r0, 0x26e(r31)
/* 801869B8  38 00 00 0C */	li r0, 0xc
/* 801869BC  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 801869C0  48 00 00 AC */	b lbl_80186A6C
lbl_801869C4:
/* 801869C4  28 00 00 02 */	cmplwi r0, 2
/* 801869C8  40 82 00 A4 */	bne lbl_80186A6C
/* 801869CC  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 801869D0  98 1F 02 6A */	stb r0, 0x26a(r31)
/* 801869D4  7F E3 FB 78 */	mr r3, r31
/* 801869D8  38 80 03 29 */	li r4, 0x329
/* 801869DC  38 A0 03 1F */	li r5, 0x31f
/* 801869E0  48 00 01 69 */	bl menuMoveAnmInitSet__14dFile_select_cFii
/* 801869E4  7F E3 FB 78 */	mr r3, r31
/* 801869E8  38 80 00 44 */	li r4, 0x44
/* 801869EC  38 A0 00 00 */	li r5, 0
/* 801869F0  38 C0 00 00 */	li r6, 0
/* 801869F4  48 00 66 F1 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 801869F8  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801869FC  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 80186A00  48 00 E8 A1 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 80186A04  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80186A08  54 00 10 3A */	slwi r0, r0, 2
/* 80186A0C  7F E3 FB 78 */	mr r3, r31
/* 80186A10  3C 80 80 3C */	lis r4, SelOpenEndFrameTbl@ha
/* 80186A14  38 84 A8 78 */	addi r4, r4, SelOpenEndFrameTbl@l
/* 80186A18  7C 84 00 2E */	lwzx r4, r4, r0
/* 80186A1C  3C A0 80 3C */	lis r5, SelOpenStartFrameTbl@ha
/* 80186A20  38 A5 A8 6C */	addi r5, r5, SelOpenStartFrameTbl@l
/* 80186A24  7C A5 00 2E */	lwzx r5, r5, r0
/* 80186A28  4B FF EF 6D */	bl selectDataMoveAnmInitSet__14dFile_select_cFii
/* 80186A2C  7F E3 FB 78 */	mr r3, r31
/* 80186A30  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 80186A34  38 A0 00 00 */	li r5, 0
/* 80186A38  38 C0 00 FF */	li r6, 0xff
/* 80186A3C  3C E0 80 43 */	lis r7, g_fsHIO@ha
/* 80186A40  38 E7 C9 EC */	addi r7, r7, g_fsHIO@l
/* 80186A44  88 E7 00 08 */	lbz r7, 8(r7)
/* 80186A48  48 00 6C 09 */	bl selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 80186A4C  7F E3 FB 78 */	mr r3, r31
/* 80186A50  38 80 0D 1F */	li r4, 0xd1f
/* 80186A54  38 A0 0D 29 */	li r5, 0xd29
/* 80186A58  48 00 11 91 */	bl copySelMoveAnmInitSet__14dFile_select_cFii
/* 80186A5C  38 00 00 00 */	li r0, 0
/* 80186A60  98 1F 02 6E */	stb r0, 0x26e(r31)
/* 80186A64  38 00 00 0B */	li r0, 0xb
/* 80186A68  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_80186A6C:
/* 80186A6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80186A70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80186A74  7C 08 03 A6 */	mtlr r0
/* 80186A78  38 21 00 20 */	addi r1, r1, 0x20
/* 80186A7C  4E 80 00 20 */	blr 
