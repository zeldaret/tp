lbl_8025CA0C:
/* 8025CA0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025CA10  7C 08 02 A6 */	mflr r0
/* 8025CA14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025CA18  39 61 00 20 */	addi r11, r1, 0x20
/* 8025CA1C  48 10 57 BD */	bl _savegpr_28
/* 8025CA20  7C 7F 1B 78 */	mr r31, r3
/* 8025CA24  38 7F 01 08 */	addi r3, r31, 0x108
/* 8025CA28  3C 80 80 3A */	lis r4, d_d_timer__stringBase0@ha
/* 8025CA2C  38 84 A3 D8 */	addi r4, r4, d_d_timer__stringBase0@l
/* 8025CA30  4B DD 04 8D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8025CA34  2C 03 00 04 */	cmpwi r3, 4
/* 8025CA38  40 82 04 B4 */	bne lbl_8025CEEC
/* 8025CA3C  7F E3 FB 78 */	mr r3, r31
/* 8025CA40  4B DC 30 05 */	bl fopMsgM_GetAppend__FPv
/* 8025CA44  7C 7E 1B 79 */	or. r30, r3, r3
/* 8025CA48  40 82 00 0C */	bne lbl_8025CA54
/* 8025CA4C  38 60 00 05 */	li r3, 5
/* 8025CA50  48 00 04 9C */	b lbl_8025CEEC
lbl_8025CA54:
/* 8025CA54  3C 60 80 3A */	lis r3, d_d_timer__stringBase0@ha
/* 8025CA58  38 63 A3 D8 */	addi r3, r3, d_d_timer__stringBase0@l
/* 8025CA5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8025CA60  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8025CA64  3C 84 00 02 */	addis r4, r4, 2
/* 8025CA68  38 A0 00 80 */	li r5, 0x80
/* 8025CA6C  38 84 C2 F8 */	addi r4, r4, -15624
/* 8025CA70  4B DD F7 75 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 8025CA74  7C 7D 1B 78 */	mr r29, r3
/* 8025CA78  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8025CA7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025CA80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025CA84  90 03 5C E0 */	stw r0, 0x5ce0(r3)
/* 8025CA88  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011000@ha */
/* 8025CA8C  38 63 10 00 */	addi r3, r3, 0x1000 /* 0x00011000@l */
/* 8025CA90  38 80 00 00 */	li r4, 0
/* 8025CA94  4B DC 39 09 */	bl fopMsgM_createExpHeap__FUlP7JKRHeap
/* 8025CA98  90 7F 01 00 */	stw r3, 0x100(r31)
/* 8025CA9C  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8025CAA0  4B DB 27 2D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8025CAA4  7C 7C 1B 78 */	mr r28, r3
/* 8025CAA8  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8025CAAC  28 03 00 00 */	cmplwi r3, 0
/* 8025CAB0  41 82 00 70 */	beq lbl_8025CB20
/* 8025CAB4  48 07 1C D1 */	bl getTotalFreeSize__7JKRHeapFv
/* 8025CAB8  38 60 03 E4 */	li r3, 0x3e4
/* 8025CABC  48 07 21 91 */	bl __nw__FUl
/* 8025CAC0  7C 60 1B 79 */	or. r0, r3, r3
/* 8025CAC4  41 82 00 0C */	beq lbl_8025CAD0
/* 8025CAC8  48 00 10 71 */	bl __ct__21dDlst_TimerScrnDraw_cFv
/* 8025CACC  7C 60 1B 78 */	mr r0, r3
lbl_8025CAD0:
/* 8025CAD0  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 8025CAD4  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8025CAD8  2C 04 00 0A */	cmpwi r4, 0xa
/* 8025CADC  40 82 00 2C */	bne lbl_8025CB08
/* 8025CAE0  83 BD 00 14 */	lwz r29, 0x14(r29)
/* 8025CAE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025CAE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025CAEC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8025CAF0  4B DD 00 CD */	bl getTimerMode__14dComIfG_play_cFv
/* 8025CAF4  7C 64 1B 78 */	mr r4, r3
/* 8025CAF8  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CAFC  7F A5 EB 78 */	mr r5, r29
/* 8025CB00  48 00 14 BD */	bl setScreen__21dDlst_TimerScrnDraw_cFlP10JKRArchive
/* 8025CB04  48 00 00 10 */	b lbl_8025CB14
lbl_8025CB08:
/* 8025CB08  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CB0C  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 8025CB10  48 00 14 AD */	bl setScreen__21dDlst_TimerScrnDraw_cFlP10JKRArchive
lbl_8025CB14:
/* 8025CB14  7F 83 E3 78 */	mr r3, r28
/* 8025CB18  4B DB 26 B5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8025CB1C  48 00 00 10 */	b lbl_8025CB2C
lbl_8025CB20:
/* 8025CB20  38 60 00 05 */	li r3, 5
/* 8025CB24  48 00 03 C8 */	b lbl_8025CEEC
/* 8025CB28  48 00 03 C4 */	b lbl_8025CEEC
lbl_8025CB2C:
/* 8025CB2C  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CB30  88 9E 00 24 */	lbz r4, 0x24(r30)
/* 8025CB34  48 00 2F 91 */	bl setShowType__21dDlst_TimerScrnDraw_cFUc
/* 8025CB38  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8025CB3C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8025CB40  40 82 01 B0 */	bne lbl_8025CCF0
/* 8025CB44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025CB48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025CB4C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8025CB50  7F C3 F3 78 */	mr r3, r30
/* 8025CB54  4B DD 00 69 */	bl getTimerMode__14dComIfG_play_cFv
/* 8025CB58  90 7F 01 54 */	stw r3, 0x154(r31)
/* 8025CB5C  7F C3 F3 78 */	mr r3, r30
/* 8025CB60  4B DD 00 4D */	bl getTimerLimitTimeMs__14dComIfG_play_cFv
/* 8025CB64  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 8025CB68  80 04 00 F8 */	lwz r0, 0x00F8(r4)
/* 8025CB6C  54 04 F0 BE */	srwi r4, r0, 2
/* 8025CB70  38 00 03 E8 */	li r0, 0x3e8
/* 8025CB74  7C E4 03 96 */	divwu r7, r4, r0
/* 8025CB78  38 A0 00 00 */	li r5, 0
/* 8025CB7C  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 8025CB80  7C 87 18 16 */	mulhwu r4, r7, r3
/* 8025CB84  7C A5 19 D6 */	mullw r5, r5, r3
/* 8025CB88  7C C7 19 D6 */	mullw r6, r7, r3
/* 8025CB8C  7C 07 01 D6 */	mullw r0, r7, r0
/* 8025CB90  7C 64 2A 14 */	add r3, r4, r5
/* 8025CB94  7C 63 02 14 */	add r3, r3, r0
/* 8025CB98  90 DF 01 44 */	stw r6, 0x144(r31)
/* 8025CB9C  90 7F 01 40 */	stw r3, 0x140(r31)
/* 8025CBA0  4B DD 5C 65 */	bl getTime__11dLib_time_cFv
/* 8025CBA4  90 9F 01 14 */	stw r4, 0x114(r31)
/* 8025CBA8  90 7F 01 10 */	stw r3, 0x110(r31)
/* 8025CBAC  90 9F 01 1C */	stw r4, 0x11c(r31)
/* 8025CBB0  90 7F 01 18 */	stw r3, 0x118(r31)
/* 8025CBB4  7F C3 F3 78 */	mr r3, r30
/* 8025CBB8  4B DC FF E5 */	bl getTimerNowTimeMs__14dComIfG_play_cFv
/* 8025CBBC  81 1F 01 10 */	lwz r8, 0x110(r31)
/* 8025CBC0  81 3F 01 14 */	lwz r9, 0x114(r31)
/* 8025CBC4  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 8025CBC8  80 04 00 F8 */	lwz r0, 0x00F8(r4)
/* 8025CBCC  54 04 F0 BE */	srwi r4, r0, 2
/* 8025CBD0  38 00 03 E8 */	li r0, 0x3e8
/* 8025CBD4  7C E4 03 96 */	divwu r7, r4, r0
/* 8025CBD8  38 C0 00 00 */	li r6, 0
/* 8025CBDC  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 8025CBE0  7C 87 18 16 */	mulhwu r4, r7, r3
/* 8025CBE4  7C A6 19 D6 */	mullw r5, r6, r3
/* 8025CBE8  7C 67 19 D6 */	mullw r3, r7, r3
/* 8025CBEC  7C 07 01 D6 */	mullw r0, r7, r0
/* 8025CBF0  7C 84 2A 14 */	add r4, r4, r5
/* 8025CBF4  7C 84 02 14 */	add r4, r4, r0
/* 8025CBF8  7C 63 48 10 */	subfc r3, r3, r9
/* 8025CBFC  7C 04 41 10 */	subfe r0, r4, r8
/* 8025CC00  90 7F 01 14 */	stw r3, 0x114(r31)
/* 8025CC04  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8025CC08  98 DF 01 6C */	stb r6, 0x16c(r31)
/* 8025CC0C  7F C3 F3 78 */	mr r3, r30
/* 8025CC10  4B DC FF AD */	bl getTimerMode__14dComIfG_play_cFv
/* 8025CC14  90 7F 01 54 */	stw r3, 0x154(r31)
/* 8025CC18  7F E3 FB 78 */	mr r3, r31
/* 8025CC1C  48 00 0D D5 */	bl getTimeMs__8dTimer_cFv
/* 8025CC20  7C 64 1B 78 */	mr r4, r3
/* 8025CC24  7F C3 F3 78 */	mr r3, r30
/* 8025CC28  4B DC FF 6D */	bl setTimerNowTimeMs__14dComIfG_play_cFi
/* 8025CC2C  7F E3 FB 78 */	mr r3, r31
/* 8025CC30  48 00 0E 25 */	bl getLimitTimeMs__8dTimer_cFv
/* 8025CC34  7C 64 1B 78 */	mr r4, r3
/* 8025CC38  7F C3 F3 78 */	mr r3, r30
/* 8025CC3C  4B DC FF 69 */	bl setTimerLimitTimeMs__14dComIfG_play_cFi
/* 8025CC40  7F C3 F3 78 */	mr r3, r30
/* 8025CC44  80 9F 01 54 */	lwz r4, 0x154(r31)
/* 8025CC48  4B DC FF 6D */	bl setTimerMode__14dComIfG_play_cFi
/* 8025CC4C  7F C3 F3 78 */	mr r3, r30
/* 8025CC50  7F E4 FB 78 */	mr r4, r31
/* 8025CC54  4B DC FF 81 */	bl setTimerPtr__14dComIfG_play_cFP8dTimer_c
/* 8025CC58  7F E3 FB 78 */	mr r3, r31
/* 8025CC5C  38 80 00 0A */	li r4, 0xa
/* 8025CC60  48 00 0B 61 */	bl stock_start__8dTimer_cFs
/* 8025CC64  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 8025CC68  2C 00 00 05 */	cmpwi r0, 5
/* 8025CC6C  41 82 00 6C */	beq lbl_8025CCD8
/* 8025CC70  40 80 00 14 */	bge lbl_8025CC84
/* 8025CC74  2C 00 00 03 */	cmpwi r0, 3
/* 8025CC78  41 82 00 18 */	beq lbl_8025CC90
/* 8025CC7C  40 80 00 2C */	bge lbl_8025CCA8
/* 8025CC80  48 00 01 10 */	b lbl_8025CD90
lbl_8025CC84:
/* 8025CC84  2C 00 00 07 */	cmpwi r0, 7
/* 8025CC88  40 80 01 08 */	bge lbl_8025CD90
/* 8025CC8C  48 00 00 34 */	b lbl_8025CCC0
lbl_8025CC90:
/* 8025CC90  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CC94  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025CC98  D0 03 03 C0 */	stfs f0, 0x3c0(r3)
/* 8025CC9C  C0 02 B5 44 */	lfs f0, lit_3920(r2)
/* 8025CCA0  D0 03 03 C4 */	stfs f0, 0x3c4(r3)
/* 8025CCA4  48 00 00 EC */	b lbl_8025CD90
lbl_8025CCA8:
/* 8025CCA8  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CCAC  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025CCB0  D0 03 03 C0 */	stfs f0, 0x3c0(r3)
/* 8025CCB4  C0 02 B5 44 */	lfs f0, lit_3920(r2)
/* 8025CCB8  D0 03 03 C4 */	stfs f0, 0x3c4(r3)
/* 8025CCBC  48 00 00 D4 */	b lbl_8025CD90
lbl_8025CCC0:
/* 8025CCC0  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CCC4  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025CCC8  D0 03 03 C0 */	stfs f0, 0x3c0(r3)
/* 8025CCCC  C0 02 B5 44 */	lfs f0, lit_3920(r2)
/* 8025CCD0  D0 03 03 C4 */	stfs f0, 0x3c4(r3)
/* 8025CCD4  48 00 00 BC */	b lbl_8025CD90
lbl_8025CCD8:
/* 8025CCD8  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CCDC  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025CCE0  D0 03 03 C0 */	stfs f0, 0x3c0(r3)
/* 8025CCE4  C0 02 B5 44 */	lfs f0, lit_3920(r2)
/* 8025CCE8  D0 03 03 C4 */	stfs f0, 0x3c4(r3)
/* 8025CCEC  48 00 00 A4 */	b lbl_8025CD90
lbl_8025CCF0:
/* 8025CCF0  90 1F 01 54 */	stw r0, 0x154(r31)
/* 8025CCF4  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8025CCF8  38 A0 00 00 */	li r5, 0
/* 8025CCFC  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 8025CD00  80 03 00 F8 */	lwz r0, 0x00F8(r3)
/* 8025CD04  54 03 F0 BE */	srwi r3, r0, 2
/* 8025CD08  38 00 03 E8 */	li r0, 0x3e8
/* 8025CD0C  7C 83 03 96 */	divwu r4, r3, r0
/* 8025CD10  7C 06 20 16 */	mulhwu r0, r6, r4
/* 8025CD14  7C 65 21 D6 */	mullw r3, r5, r4
/* 8025CD18  7C 60 1A 14 */	add r3, r0, r3
/* 8025CD1C  7C 06 29 D6 */	mullw r0, r6, r5
/* 8025CD20  7C 86 21 D6 */	mullw r4, r6, r4
/* 8025CD24  7C 03 02 14 */	add r0, r3, r0
/* 8025CD28  90 9F 01 44 */	stw r4, 0x144(r31)
/* 8025CD2C  90 1F 01 40 */	stw r0, 0x140(r31)
/* 8025CD30  90 BF 01 14 */	stw r5, 0x114(r31)
/* 8025CD34  90 BF 01 10 */	stw r5, 0x110(r31)
/* 8025CD38  90 BF 01 1C */	stw r5, 0x11c(r31)
/* 8025CD3C  90 BF 01 18 */	stw r5, 0x118(r31)
/* 8025CD40  98 BF 01 6C */	stb r5, 0x16c(r31)
/* 8025CD44  7F E3 FB 78 */	mr r3, r31
/* 8025CD48  48 00 0C A9 */	bl getTimeMs__8dTimer_cFv
/* 8025CD4C  7C 64 1B 78 */	mr r4, r3
/* 8025CD50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025CD54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025CD58  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8025CD5C  7F A3 EB 78 */	mr r3, r29
/* 8025CD60  4B DC FE 35 */	bl setTimerNowTimeMs__14dComIfG_play_cFi
/* 8025CD64  7F E3 FB 78 */	mr r3, r31
/* 8025CD68  48 00 0C ED */	bl getLimitTimeMs__8dTimer_cFv
/* 8025CD6C  7C 64 1B 78 */	mr r4, r3
/* 8025CD70  7F A3 EB 78 */	mr r3, r29
/* 8025CD74  4B DC FE 31 */	bl setTimerLimitTimeMs__14dComIfG_play_cFi
/* 8025CD78  7F A3 EB 78 */	mr r3, r29
/* 8025CD7C  80 9F 01 54 */	lwz r4, 0x154(r31)
/* 8025CD80  4B DC FE 35 */	bl setTimerMode__14dComIfG_play_cFi
/* 8025CD84  7F A3 EB 78 */	mr r3, r29
/* 8025CD88  7F E4 FB 78 */	mr r4, r31
/* 8025CD8C  4B DC FE 49 */	bl setTimerPtr__14dComIfG_play_cFP8dTimer_c
lbl_8025CD90:
/* 8025CD90  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 8025CD94  2C 00 00 07 */	cmpwi r0, 7
/* 8025CD98  41 82 00 30 */	beq lbl_8025CDC8
/* 8025CD9C  40 80 00 10 */	bge lbl_8025CDAC
/* 8025CDA0  2C 00 00 02 */	cmpwi r0, 2
/* 8025CDA4  41 82 00 24 */	beq lbl_8025CDC8
/* 8025CDA8  48 00 00 2C */	b lbl_8025CDD4
lbl_8025CDAC:
/* 8025CDAC  2C 00 00 09 */	cmpwi r0, 9
/* 8025CDB0  40 80 00 24 */	bge lbl_8025CDD4
/* 8025CDB4  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CDB8  48 00 1D 69 */	bl hideDenominator__21dDlst_TimerScrnDraw_cFv
/* 8025CDBC  38 00 00 02 */	li r0, 2
/* 8025CDC0  98 1F 01 6D */	stb r0, 0x16d(r31)
/* 8025CDC4  48 00 00 20 */	b lbl_8025CDE4
lbl_8025CDC8:
/* 8025CDC8  38 00 00 00 */	li r0, 0
/* 8025CDCC  98 1F 01 6D */	stb r0, 0x16d(r31)
/* 8025CDD0  48 00 00 14 */	b lbl_8025CDE4
lbl_8025CDD4:
/* 8025CDD4  38 00 00 01 */	li r0, 1
/* 8025CDD8  98 1F 01 6D */	stb r0, 0x16d(r31)
/* 8025CDDC  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CDE0  48 00 1D 41 */	bl hideDenominator__21dDlst_TimerScrnDraw_cFv
lbl_8025CDE4:
/* 8025CDE4  88 1F 01 6D */	lbz r0, 0x16d(r31)
/* 8025CDE8  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CDEC  98 03 03 DD */	stb r0, 0x3dd(r3)
/* 8025CDF0  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CDF4  88 03 03 E2 */	lbz r0, 0x3e2(r3)
/* 8025CDF8  28 00 00 00 */	cmplwi r0, 0
/* 8025CDFC  41 82 00 30 */	beq lbl_8025CE2C
/* 8025CE00  88 1F 01 6D */	lbz r0, 0x16d(r31)
/* 8025CE04  28 00 00 00 */	cmplwi r0, 0
/* 8025CE08  40 82 00 24 */	bne lbl_8025CE2C
/* 8025CE0C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025CE10  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8025CE14  C0 24 0B 84 */	lfs f1, 0xb84(r4)
/* 8025CE18  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025CE1C  EC 21 00 2A */	fadds f1, f1, f0
/* 8025CE20  C0 44 0B 88 */	lfs f2, 0xb88(r4)
/* 8025CE24  48 00 2C 49 */	bl setCounterPos__21dDlst_TimerScrnDraw_cFff
/* 8025CE28  48 00 00 2C */	b lbl_8025CE54
lbl_8025CE2C:
/* 8025CE2C  88 1F 01 6D */	lbz r0, 0x16d(r31)
/* 8025CE30  54 05 10 3A */	slwi r5, r0, 2
/* 8025CE34  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025CE38  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 8025CE3C  7C 80 2A 14 */	add r4, r0, r5
/* 8025CE40  C0 24 0A E0 */	lfs f1, 0xae0(r4)
/* 8025CE44  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025CE48  EC 21 00 2A */	fadds f1, f1, f0
/* 8025CE4C  C0 44 0A EC */	lfs f2, 0xaec(r4)
/* 8025CE50  48 00 2C 1D */	bl setCounterPos__21dDlst_TimerScrnDraw_cFff
lbl_8025CE54:
/* 8025CE54  88 1F 01 6D */	lbz r0, 0x16d(r31)
/* 8025CE58  54 05 10 3A */	slwi r5, r0, 2
/* 8025CE5C  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CE60  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025CE64  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 8025CE68  7C 80 2A 14 */	add r4, r0, r5
/* 8025CE6C  C0 24 0B 58 */	lfs f1, 0xb58(r4)
/* 8025CE70  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025CE74  EC 21 00 2A */	fadds f1, f1, f0
/* 8025CE78  C0 44 0B 64 */	lfs f2, 0xb64(r4)
/* 8025CE7C  48 00 2C 1D */	bl setImagePos__21dDlst_TimerScrnDraw_cFff
/* 8025CE80  88 1F 01 6D */	lbz r0, 0x16d(r31)
/* 8025CE84  54 05 10 3A */	slwi r5, r0, 2
/* 8025CE88  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025CE8C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025CE90  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 8025CE94  7C 80 2A 14 */	add r4, r0, r5
/* 8025CE98  C0 24 0B 1C */	lfs f1, 0xb1c(r4)
/* 8025CE9C  C0 44 0B 28 */	lfs f2, 0xb28(r4)
/* 8025CEA0  48 00 2B 8D */	bl setTimerPos__21dDlst_TimerScrnDraw_cFff
/* 8025CEA4  38 60 00 00 */	li r3, 0
/* 8025CEA8  90 7F 01 24 */	stw r3, 0x124(r31)
/* 8025CEAC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8025CEB0  90 7F 01 2C */	stw r3, 0x12c(r31)
/* 8025CEB4  90 7F 01 28 */	stw r3, 0x128(r31)
/* 8025CEB8  90 7F 01 34 */	stw r3, 0x134(r31)
/* 8025CEBC  90 7F 01 30 */	stw r3, 0x130(r31)
/* 8025CEC0  90 7F 01 3C */	stw r3, 0x13c(r31)
/* 8025CEC4  90 7F 01 38 */	stw r3, 0x138(r31)
/* 8025CEC8  98 7F 01 6A */	stb r3, 0x16a(r31)
/* 8025CECC  98 7F 01 6B */	stb r3, 0x16b(r31)
/* 8025CED0  38 00 00 78 */	li r0, 0x78
/* 8025CED4  90 1F 01 58 */	stw r0, 0x158(r31)
/* 8025CED8  90 7F 01 5C */	stw r3, 0x15c(r31)
/* 8025CEDC  98 7F 01 6E */	stb r3, 0x16e(r31)
/* 8025CEE0  90 7F 01 64 */	stw r3, 0x164(r31)
/* 8025CEE4  90 7F 01 60 */	stw r3, 0x160(r31)
/* 8025CEE8  38 60 00 04 */	li r3, 4
lbl_8025CEEC:
/* 8025CEEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8025CEF0  48 10 53 35 */	bl _restgpr_28
/* 8025CEF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025CEF8  7C 08 03 A6 */	mtlr r0
/* 8025CEFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8025CF00  4E 80 00 20 */	blr 
