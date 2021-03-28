lbl_80185DE0:
/* 80185DE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80185DE4  7C 08 02 A6 */	mflr r0
/* 80185DE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80185DEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80185DF0  48 1D C3 E1 */	bl _savegpr_26
/* 80185DF4  7C 7A 1B 78 */	mr r26, r3
/* 80185DF8  3B E0 00 01 */	li r31, 1
/* 80185DFC  3B C0 00 01 */	li r30, 1
/* 80185E00  3B A0 00 01 */	li r29, 1
/* 80185E04  88 03 02 64 */	lbz r0, 0x264(r3)
/* 80185E08  28 00 00 FF */	cmplwi r0, 0xff
/* 80185E0C  41 82 00 DC */	beq lbl_80185EE8
/* 80185E10  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80185E14  7C 7A 02 14 */	add r3, r26, r0
/* 80185E18  80 63 01 88 */	lwz r3, 0x188(r3)
/* 80185E1C  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 80185E20  38 84 C9 EC */	addi r4, r4, g_fsHIO@l
/* 80185E24  88 84 00 06 */	lbz r4, 6(r4)
/* 80185E28  38 A0 00 FF */	li r5, 0xff
/* 80185E2C  38 C0 00 00 */	li r6, 0
/* 80185E30  38 E0 00 01 */	li r7, 1
/* 80185E34  48 0C FA 45 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 80185E38  7C 7F 1B 78 */	mr r31, r3
/* 80185E3C  7F 43 D3 78 */	mr r3, r26
/* 80185E40  88 9A 02 64 */	lbz r4, 0x264(r26)
/* 80185E44  48 00 78 49 */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 80185E48  7C 7E 1B 78 */	mr r30, r3
/* 80185E4C  88 1A 02 64 */	lbz r0, 0x264(r26)
/* 80185E50  54 00 10 3A */	slwi r0, r0, 2
/* 80185E54  7C BA 02 14 */	add r5, r26, r0
/* 80185E58  80 85 00 E0 */	lwz r4, 0xe0(r5)
/* 80185E5C  3C 60 80 3C */	lis r3, SelStartFrameTbl@ha
/* 80185E60  38 63 A8 54 */	addi r3, r3, SelStartFrameTbl@l
/* 80185E64  7C 03 00 2E */	lwzx r0, r3, r0
/* 80185E68  7C 04 00 00 */	cmpw r4, r0
/* 80185E6C  41 82 00 7C */	beq lbl_80185EE8
/* 80185E70  38 04 FF FE */	addi r0, r4, -2
/* 80185E74  90 05 00 E0 */	stw r0, 0xe0(r5)
/* 80185E78  88 1A 02 64 */	lbz r0, 0x264(r26)
/* 80185E7C  54 04 10 3A */	slwi r4, r0, 2
/* 80185E80  7C BA 22 14 */	add r5, r26, r4
/* 80185E84  80 05 00 E0 */	lwz r0, 0xe0(r5)
/* 80185E88  7C 63 20 2E */	lwzx r3, r3, r4
/* 80185E8C  7C 00 18 00 */	cmpw r0, r3
/* 80185E90  40 80 00 08 */	bge lbl_80185E98
/* 80185E94  90 65 00 E0 */	stw r3, 0xe0(r5)
lbl_80185E98:
/* 80185E98  88 1A 02 64 */	lbz r0, 0x264(r26)
/* 80185E9C  54 00 10 3A */	slwi r0, r0, 2
/* 80185EA0  7C 7A 02 14 */	add r3, r26, r0
/* 80185EA4  80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 80185EA8  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80185EAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80185EB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80185EB4  3C 00 43 30 */	lis r0, 0x4330
/* 80185EB8  90 01 00 08 */	stw r0, 8(r1)
/* 80185EBC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80185EC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80185EC4  80 7A 00 88 */	lwz r3, 0x88(r26)
/* 80185EC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80185ECC  88 1A 02 64 */	lbz r0, 0x264(r26)
/* 80185ED0  54 00 10 3A */	slwi r0, r0, 2
/* 80185ED4  7C 7A 02 14 */	add r3, r26, r0
/* 80185ED8  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80185EDC  80 63 00 04 */	lwz r3, 4(r3)
/* 80185EE0  48 17 20 ED */	bl animationTransform__7J2DPaneFv
/* 80185EE4  3B A0 00 00 */	li r29, 0
lbl_80185EE8:
/* 80185EE8  3B 80 00 01 */	li r28, 1
/* 80185EEC  3B 60 00 01 */	li r27, 1
/* 80185EF0  88 1A 02 65 */	lbz r0, 0x265(r26)
/* 80185EF4  28 00 00 FF */	cmplwi r0, 0xff
/* 80185EF8  41 82 00 CC */	beq lbl_80185FC4
/* 80185EFC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80185F00  7C 7A 02 14 */	add r3, r26, r0
/* 80185F04  80 63 01 88 */	lwz r3, 0x188(r3)
/* 80185F08  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 80185F0C  38 84 C9 EC */	addi r4, r4, g_fsHIO@l
/* 80185F10  88 84 00 06 */	lbz r4, 6(r4)
/* 80185F14  38 A0 00 00 */	li r5, 0
/* 80185F18  38 C0 00 FF */	li r6, 0xff
/* 80185F1C  38 E0 00 01 */	li r7, 1
/* 80185F20  48 0C F9 59 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 80185F24  7C 7C 1B 78 */	mr r28, r3
/* 80185F28  88 1A 02 65 */	lbz r0, 0x265(r26)
/* 80185F2C  54 00 10 3A */	slwi r0, r0, 2
/* 80185F30  7C BA 02 14 */	add r5, r26, r0
/* 80185F34  80 85 00 E0 */	lwz r4, 0xe0(r5)
/* 80185F38  3C 60 80 3C */	lis r3, SelEndFrameTbl@ha
/* 80185F3C  38 63 A8 60 */	addi r3, r3, SelEndFrameTbl@l
/* 80185F40  7C 03 00 2E */	lwzx r0, r3, r0
/* 80185F44  7C 04 00 00 */	cmpw r4, r0
/* 80185F48  41 82 00 7C */	beq lbl_80185FC4
/* 80185F4C  38 04 00 02 */	addi r0, r4, 2
/* 80185F50  90 05 00 E0 */	stw r0, 0xe0(r5)
/* 80185F54  88 1A 02 65 */	lbz r0, 0x265(r26)
/* 80185F58  54 04 10 3A */	slwi r4, r0, 2
/* 80185F5C  7C BA 22 14 */	add r5, r26, r4
/* 80185F60  80 05 00 E0 */	lwz r0, 0xe0(r5)
/* 80185F64  7C 63 20 2E */	lwzx r3, r3, r4
/* 80185F68  7C 00 18 00 */	cmpw r0, r3
/* 80185F6C  40 81 00 08 */	ble lbl_80185F74
/* 80185F70  90 65 00 E0 */	stw r3, 0xe0(r5)
lbl_80185F74:
/* 80185F74  88 1A 02 65 */	lbz r0, 0x265(r26)
/* 80185F78  54 00 10 3A */	slwi r0, r0, 2
/* 80185F7C  7C 7A 02 14 */	add r3, r26, r0
/* 80185F80  80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 80185F84  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80185F88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80185F8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80185F90  3C 00 43 30 */	lis r0, 0x4330
/* 80185F94  90 01 00 08 */	stw r0, 8(r1)
/* 80185F98  C8 01 00 08 */	lfd f0, 8(r1)
/* 80185F9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80185FA0  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 80185FA4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80185FA8  88 1A 02 65 */	lbz r0, 0x265(r26)
/* 80185FAC  54 00 10 3A */	slwi r0, r0, 2
/* 80185FB0  7C 7A 02 14 */	add r3, r26, r0
/* 80185FB4  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80185FB8  80 63 00 04 */	lwz r3, 4(r3)
/* 80185FBC  48 17 20 11 */	bl animationTransform__7J2DPaneFv
/* 80185FC0  3B 60 00 00 */	li r27, 0
lbl_80185FC4:
/* 80185FC4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80185FC8  28 00 00 01 */	cmplwi r0, 1
/* 80185FCC  40 82 00 A4 */	bne lbl_80186070
/* 80185FD0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80185FD4  28 00 00 01 */	cmplwi r0, 1
/* 80185FD8  40 82 00 98 */	bne lbl_80186070
/* 80185FDC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80185FE0  28 00 00 01 */	cmplwi r0, 1
/* 80185FE4  40 82 00 8C */	bne lbl_80186070
/* 80185FE8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80185FEC  28 00 00 01 */	cmplwi r0, 1
/* 80185FF0  40 82 00 80 */	bne lbl_80186070
/* 80185FF4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80185FF8  28 00 00 01 */	cmplwi r0, 1
/* 80185FFC  40 82 00 74 */	bne lbl_80186070
/* 80186000  88 1A 02 65 */	lbz r0, 0x265(r26)
/* 80186004  28 00 00 FF */	cmplwi r0, 0xff
/* 80186008  41 82 00 30 */	beq lbl_80186038
/* 8018600C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80186010  7C 7A 02 14 */	add r3, r26, r0
/* 80186014  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80186018  80 63 00 04 */	lwz r3, 4(r3)
/* 8018601C  38 80 00 00 */	li r4, 0
/* 80186020  81 83 00 00 */	lwz r12, 0(r3)
/* 80186024  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80186028  7D 89 03 A6 */	mtctr r12
/* 8018602C  4E 80 04 21 */	bctrl 
/* 80186030  7F 43 D3 78 */	mr r3, r26
/* 80186034  48 00 77 31 */	bl selFileCursorShow__14dFile_select_cFv
lbl_80186038:
/* 80186038  88 1A 02 64 */	lbz r0, 0x264(r26)
/* 8018603C  28 00 00 FF */	cmplwi r0, 0xff
/* 80186040  41 82 00 28 */	beq lbl_80186068
/* 80186044  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80186048  7C 7A 02 14 */	add r3, r26, r0
/* 8018604C  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80186050  80 63 00 04 */	lwz r3, 4(r3)
/* 80186054  38 80 00 00 */	li r4, 0
/* 80186058  81 83 00 00 */	lwz r12, 0(r3)
/* 8018605C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80186060  7D 89 03 A6 */	mtctr r12
/* 80186064  4E 80 04 21 */	bctrl 
lbl_80186068:
/* 80186068  38 00 00 03 */	li r0, 3
/* 8018606C  98 1A 02 6F */	stb r0, 0x26f(r26)
lbl_80186070:
/* 80186070  39 61 00 30 */	addi r11, r1, 0x30
/* 80186074  48 1D C1 A9 */	bl _restgpr_26
/* 80186078  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018607C  7C 08 03 A6 */	mtlr r0
/* 80186080  38 21 00 30 */	addi r1, r1, 0x30
/* 80186084  4E 80 00 20 */	blr 
