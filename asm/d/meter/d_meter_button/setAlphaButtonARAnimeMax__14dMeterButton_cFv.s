lbl_802083D8:
/* 802083D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802083DC  7C 08 02 A6 */	mflr r0
/* 802083E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802083E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802083E8  7C 7F 1B 78 */	mr r31, r3
/* 802083EC  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 802083F0  28 03 00 00 */	cmplwi r3, 0
/* 802083F4  41 82 00 D0 */	beq lbl_802084C4
/* 802083F8  48 04 D4 31 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802083FC  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80208400  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208404  41 82 00 C0 */	beq lbl_802084C4
/* 80208408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020840C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80208410  88 03 5E 43 */	lbz r0, 0x5e43(r3)
/* 80208414  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80208418  40 82 00 10 */	bne lbl_80208428
/* 8020841C  88 03 5E 47 */	lbz r0, 0x5e47(r3)
/* 80208420  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80208424  41 82 00 20 */	beq lbl_80208444
lbl_80208428:
/* 80208428  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8020842C  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 80208430  48 04 D3 A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208434  38 00 00 05 */	li r0, 5
/* 80208438  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8020843C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208440  48 00 00 2C */	b lbl_8020846C
lbl_80208444:
/* 80208444  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80208448  FC 20 00 90 */	fmr f1, f0
/* 8020844C  48 04 D3 85 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208450  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80208454  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80208458  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020845C  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80208460  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 80208464  38 A0 00 05 */	li r5, 5
/* 80208468  48 01 26 3D */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8020846C:
/* 8020846C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80208470  48 04 D3 B9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208474  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80208478  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8020847C  40 82 00 48 */	bne lbl_802084C4
/* 80208480  88 1F 04 CC */	lbz r0, 0x4cc(r31)
/* 80208484  28 00 00 00 */	cmplwi r0, 0
/* 80208488  40 82 00 3C */	bne lbl_802084C4
/* 8020848C  38 00 00 56 */	li r0, 0x56
/* 80208490  90 01 00 08 */	stw r0, 8(r1)
/* 80208494  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80208498  38 81 00 08 */	addi r4, r1, 8
/* 8020849C  38 A0 00 00 */	li r5, 0
/* 802084A0  38 C0 00 00 */	li r6, 0
/* 802084A4  38 E0 00 00 */	li r7, 0
/* 802084A8  FC 20 10 90 */	fmr f1, f2
/* 802084AC  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 802084B0  FC 80 18 90 */	fmr f4, f3
/* 802084B4  39 00 00 00 */	li r8, 0
/* 802084B8  48 0A 34 CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802084BC  38 00 00 01 */	li r0, 1
/* 802084C0  98 1F 04 CC */	stb r0, 0x4cc(r31)
lbl_802084C4:
/* 802084C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802084C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802084CC  7C 08 03 A6 */	mtlr r0
/* 802084D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802084D4  4E 80 00 20 */	blr 
