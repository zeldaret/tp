lbl_801DBF44:
/* 801DBF44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DBF48  7C 08 02 A6 */	mflr r0
/* 801DBF4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DBF50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801DBF54  7C 7F 1B 78 */	mr r31, r3
/* 801DBF58  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 801DBF5C  4B E5 62 41 */	bl checkTrigger__9STControlFv
/* 801DBF60  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801DBF64  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801DBF68  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801DBF6C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801DBF70  41 82 00 E4 */	beq lbl_801DC054
/* 801DBF74  38 00 00 01 */	li r0, 1
/* 801DBF78  98 1F 00 E3 */	stb r0, 0xe3(r31)
/* 801DBF7C  88 1F 00 E2 */	lbz r0, 0xe2(r31)
/* 801DBF80  28 00 00 00 */	cmplwi r0, 0
/* 801DBF84  40 82 00 38 */	bne lbl_801DBFBC
/* 801DBF88  7F E3 FB 78 */	mr r3, r31
/* 801DBF8C  48 00 0B C9 */	bl getWarpMarkFlag__19dMenu_ItemExplain_cFv
/* 801DBF90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBF94  40 82 00 18 */	bne lbl_801DBFAC
/* 801DBF98  38 00 00 01 */	li r0, 1
/* 801DBF9C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801DBFA0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801DBFA4  98 03 00 C0 */	stb r0, 0xc0(r3)
/* 801DBFA8  48 00 00 14 */	b lbl_801DBFBC
lbl_801DBFAC:
/* 801DBFAC  38 00 00 02 */	li r0, 2
/* 801DBFB0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801DBFB4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801DBFB8  98 03 00 C0 */	stb r0, 0xc0(r3)
lbl_801DBFBC:
/* 801DBFBC  88 1F 00 E5 */	lbz r0, 0xe5(r31)
/* 801DBFC0  28 00 00 02 */	cmplwi r0, 2
/* 801DBFC4  40 82 00 48 */	bne lbl_801DC00C
/* 801DBFC8  38 00 00 05 */	li r0, 5
/* 801DBFCC  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 801DBFD0  38 00 00 52 */	li r0, 0x52
/* 801DBFD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801DBFD8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DBFDC  38 81 00 18 */	addi r4, r1, 0x18
/* 801DBFE0  38 A0 00 00 */	li r5, 0
/* 801DBFE4  38 C0 00 00 */	li r6, 0
/* 801DBFE8  38 E0 00 00 */	li r7, 0
/* 801DBFEC  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DBFF0  FC 40 08 90 */	fmr f2, f1
/* 801DBFF4  C0 62 A8 B0 */	lfs f3, lit_4304(r2)
/* 801DBFF8  FC 80 18 90 */	fmr f4, f3
/* 801DBFFC  39 00 00 00 */	li r8, 0
/* 801DC000  48 0C F9 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DC004  48 04 29 CD */	bl dMeter2Info_set2DVibration__Fv
/* 801DC008  48 00 00 14 */	b lbl_801DC01C
lbl_801DC00C:
/* 801DC00C  38 00 00 02 */	li r0, 2
/* 801DC010  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 801DC014  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 801DC018  90 1F 00 C8 */	stw r0, 0xc8(r31)
lbl_801DC01C:
/* 801DC01C  38 00 00 63 */	li r0, 0x63
/* 801DC020  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC024  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DC028  38 81 00 14 */	addi r4, r1, 0x14
/* 801DC02C  38 A0 00 00 */	li r5, 0
/* 801DC030  38 C0 00 00 */	li r6, 0
/* 801DC034  38 E0 00 00 */	li r7, 0
/* 801DC038  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DC03C  FC 40 08 90 */	fmr f2, f1
/* 801DC040  C0 62 A8 B0 */	lfs f3, lit_4304(r2)
/* 801DC044  FC 80 18 90 */	fmr f4, f3
/* 801DC048  39 00 00 00 */	li r8, 0
/* 801DC04C  48 0C F9 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DC050  48 00 01 48 */	b lbl_801DC198
lbl_801DC054:
/* 801DC054  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801DC058  41 82 00 6C */	beq lbl_801DC0C4
/* 801DC05C  38 60 00 02 */	li r3, 2
/* 801DC060  98 7F 00 E3 */	stb r3, 0xe3(r31)
/* 801DC064  88 1F 00 E5 */	lbz r0, 0xe5(r31)
/* 801DC068  28 00 00 02 */	cmplwi r0, 2
/* 801DC06C  40 82 00 48 */	bne lbl_801DC0B4
/* 801DC070  38 00 00 05 */	li r0, 5
/* 801DC074  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 801DC078  38 00 00 52 */	li r0, 0x52
/* 801DC07C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DC080  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DC084  38 81 00 10 */	addi r4, r1, 0x10
/* 801DC088  38 A0 00 00 */	li r5, 0
/* 801DC08C  38 C0 00 00 */	li r6, 0
/* 801DC090  38 E0 00 00 */	li r7, 0
/* 801DC094  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DC098  FC 40 08 90 */	fmr f2, f1
/* 801DC09C  C0 62 A8 B0 */	lfs f3, lit_4304(r2)
/* 801DC0A0  FC 80 18 90 */	fmr f4, f3
/* 801DC0A4  39 00 00 00 */	li r8, 0
/* 801DC0A8  48 0C F8 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DC0AC  48 04 29 25 */	bl dMeter2Info_set2DVibration__Fv
/* 801DC0B0  48 00 00 E8 */	b lbl_801DC198
lbl_801DC0B4:
/* 801DC0B4  98 7F 00 E0 */	stb r3, 0xe0(r31)
/* 801DC0B8  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 801DC0BC  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801DC0C0  48 00 00 D8 */	b lbl_801DC198
lbl_801DC0C4:
/* 801DC0C4  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DC0C8  48 05 DB 9D */	bl isSelect__17dMsgScrn3Select_cFv
/* 801DC0CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC0D0  41 82 00 60 */	beq lbl_801DC130
/* 801DC0D4  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801DC0D8  4B E5 64 4D */	bl checkUpTrigger__9STControlFv
/* 801DC0DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC0E0  41 82 00 50 */	beq lbl_801DC130
/* 801DC0E4  88 1F 00 E2 */	lbz r0, 0xe2(r31)
/* 801DC0E8  28 00 00 01 */	cmplwi r0, 1
/* 801DC0EC  40 82 00 AC */	bne lbl_801DC198
/* 801DC0F0  38 00 00 00 */	li r0, 0
/* 801DC0F4  98 1F 00 E2 */	stb r0, 0xe2(r31)
/* 801DC0F8  38 00 00 63 */	li r0, 0x63
/* 801DC0FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DC100  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DC104  38 81 00 0C */	addi r4, r1, 0xc
/* 801DC108  38 A0 00 00 */	li r5, 0
/* 801DC10C  38 C0 00 00 */	li r6, 0
/* 801DC110  38 E0 00 00 */	li r7, 0
/* 801DC114  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DC118  FC 40 08 90 */	fmr f2, f1
/* 801DC11C  C0 62 A8 B0 */	lfs f3, lit_4304(r2)
/* 801DC120  FC 80 18 90 */	fmr f4, f3
/* 801DC124  39 00 00 00 */	li r8, 0
/* 801DC128  48 0C F8 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DC12C  48 00 00 6C */	b lbl_801DC198
lbl_801DC130:
/* 801DC130  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DC134  48 05 DB 31 */	bl isSelect__17dMsgScrn3Select_cFv
/* 801DC138  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC13C  41 82 00 5C */	beq lbl_801DC198
/* 801DC140  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801DC144  4B E5 64 5D */	bl checkDownTrigger__9STControlFv
/* 801DC148  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC14C  41 82 00 4C */	beq lbl_801DC198
/* 801DC150  88 1F 00 E2 */	lbz r0, 0xe2(r31)
/* 801DC154  28 00 00 00 */	cmplwi r0, 0
/* 801DC158  40 82 00 40 */	bne lbl_801DC198
/* 801DC15C  38 00 00 01 */	li r0, 1
/* 801DC160  98 1F 00 E2 */	stb r0, 0xe2(r31)
/* 801DC164  38 00 00 63 */	li r0, 0x63
/* 801DC168  90 01 00 08 */	stw r0, 8(r1)
/* 801DC16C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DC170  38 81 00 08 */	addi r4, r1, 8
/* 801DC174  38 A0 00 00 */	li r5, 0
/* 801DC178  38 C0 00 00 */	li r6, 0
/* 801DC17C  38 E0 00 00 */	li r7, 0
/* 801DC180  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DC184  FC 40 08 90 */	fmr f2, f1
/* 801DC188  C0 62 A8 B0 */	lfs f3, lit_4304(r2)
/* 801DC18C  FC 80 18 90 */	fmr f4, f3
/* 801DC190  39 00 00 00 */	li r8, 0
/* 801DC194  48 0C F7 F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801DC198:
/* 801DC198  88 1F 00 E0 */	lbz r0, 0xe0(r31)
/* 801DC19C  28 00 00 03 */	cmplwi r0, 3
/* 801DC1A0  40 82 00 24 */	bne lbl_801DC1C4
/* 801DC1A4  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DC1A8  38 80 00 02 */	li r4, 2
/* 801DC1AC  88 BF 00 E2 */	lbz r5, 0xe2(r31)
/* 801DC1B0  38 05 00 01 */	addi r0, r5, 1
/* 801DC1B4  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801DC1B8  38 C0 00 00 */	li r6, 0
/* 801DC1BC  48 05 E1 DD */	bl selAnimeMove__17dMsgScrn3Select_cFUcUcb
/* 801DC1C0  48 00 00 0C */	b lbl_801DC1CC
lbl_801DC1C4:
/* 801DC1C4  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DC1C8  48 05 E4 B9 */	bl selAnimeEnd__17dMsgScrn3Select_cFv
lbl_801DC1CC:
/* 801DC1CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801DC1D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DC1D4  7C 08 03 A6 */	mtlr r0
/* 801DC1D8  38 21 00 30 */	addi r1, r1, 0x30
/* 801DC1DC  4E 80 00 20 */	blr 
