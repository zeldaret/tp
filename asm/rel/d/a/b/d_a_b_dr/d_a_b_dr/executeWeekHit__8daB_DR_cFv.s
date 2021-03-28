lbl_805BE9B4:
/* 805BE9B4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805BE9B8  7C 08 02 A6 */	mflr r0
/* 805BE9BC  90 01 00 94 */	stw r0, 0x94(r1)
/* 805BE9C0  39 61 00 90 */	addi r11, r1, 0x90
/* 805BE9C4  4B DA 38 10 */	b _savegpr_27
/* 805BE9C8  7C 7F 1B 78 */	mr r31, r3
/* 805BE9CC  3C 80 80 5C */	lis r4, lit_3800@ha
/* 805BE9D0  3B C4 6C 74 */	addi r30, r4, lit_3800@l
/* 805BE9D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805BE9D8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 805BE9DC  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 805BE9E0  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 805BE9E4  2C 00 00 04 */	cmpwi r0, 4
/* 805BE9E8  41 82 08 68 */	beq lbl_805BF250
/* 805BE9EC  40 80 00 28 */	bge lbl_805BEA14
/* 805BE9F0  2C 00 00 01 */	cmpwi r0, 1
/* 805BE9F4  41 82 00 BC */	beq lbl_805BEAB0
/* 805BE9F8  40 80 00 10 */	bge lbl_805BEA08
/* 805BE9FC  2C 00 00 00 */	cmpwi r0, 0
/* 805BEA00  40 80 00 2C */	bge lbl_805BEA2C
/* 805BEA04  48 00 0A 4C */	b lbl_805BF450
lbl_805BEA08:
/* 805BEA08  2C 00 00 03 */	cmpwi r0, 3
/* 805BEA0C  40 80 07 94 */	bge lbl_805BF1A0
/* 805BEA10  48 00 06 88 */	b lbl_805BF098
lbl_805BEA14:
/* 805BEA14  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 805BEA18  41 82 09 EC */	beq lbl_805BF404
/* 805BEA1C  40 80 0A 34 */	bge lbl_805BF450
/* 805BEA20  2C 00 00 64 */	cmpwi r0, 0x64
/* 805BEA24  41 82 08 E8 */	beq lbl_805BF30C
/* 805BEA28  48 00 0A 28 */	b lbl_805BF450
lbl_805BEA2C:
/* 805BEA2C  38 80 00 18 */	li r4, 0x18
/* 805BEA30  38 A0 00 00 */	li r5, 0
/* 805BEA34  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 805BEA38  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BEA3C  4B FF C9 CD */	bl setBck__8daB_DR_cFiUcff
/* 805BEA40  88 9F 07 ED */	lbz r4, 0x7ed(r31)
/* 805BEA44  28 04 00 FF */	cmplwi r4, 0xff
/* 805BEA48  41 82 00 18 */	beq lbl_805BEA60
/* 805BEA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BEA50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BEA54  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BEA58  7C 05 07 74 */	extsb r5, r0
/* 805BEA5C  4B A7 67 A4 */	b onSwitch__10dSv_info_cFii
lbl_805BEA60:
/* 805BEA60  7F E3 FB 78 */	mr r3, r31
/* 805BEA64  4B FF E1 B5 */	bl mAllClr__8daB_DR_cFv
/* 805BEA68  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805BEA6C  4B CA 8E E8 */	b cM_rndF__Ff
/* 805BEA70  FC 00 08 1E */	fctiwz f0, f1
/* 805BEA74  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 805BEA78  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805BEA7C  98 1F 07 E4 */	stb r0, 0x7e4(r31)
/* 805BEA80  38 80 00 00 */	li r4, 0
/* 805BEA84  98 9F 07 E5 */	stb r4, 0x7e5(r31)
/* 805BEA88  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805BEA8C  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805BEA90  A8 03 00 4E */	lha r0, 0x4e(r3)
/* 805BEA94  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 805BEA98  98 9F 07 D0 */	stb r4, 0x7d0(r31)
/* 805BEA9C  38 00 00 01 */	li r0, 1
/* 805BEAA0  98 1F 07 D6 */	stb r0, 0x7d6(r31)
/* 805BEAA4  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BEAA8  38 03 00 01 */	addi r0, r3, 1
/* 805BEAAC  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_805BEAB0:
/* 805BEAB0  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 805BEAB4  48 00 81 29 */	bl func_805C6BDC
/* 805BEAB8  2C 03 00 00 */	cmpwi r3, 0
/* 805BEABC  40 82 00 48 */	bne lbl_805BEB04
/* 805BEAC0  7F E3 FB 78 */	mr r3, r31
/* 805BEAC4  38 80 00 40 */	li r4, 0x40
/* 805BEAC8  38 A0 00 00 */	li r5, 0
/* 805BEACC  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BEAD0  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BEAD4  4B FF C9 35 */	bl setBck__8daB_DR_cFiUcff
/* 805BEAD8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805BEADC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805BEAE0  80 63 00 00 */	lwz r3, 0(r3)
/* 805BEAE4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805BEAE8  38 80 00 01 */	li r4, 1
/* 805BEAEC  4B CF 14 A0 */	b changeBgmStatus__8Z2SeqMgrFl
/* 805BEAF0  38 00 00 64 */	li r0, 0x64
/* 805BEAF4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BEAF8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BEAFC  D0 1F 07 44 */	stfs f0, 0x744(r31)
/* 805BEB00  48 00 09 50 */	b lbl_805BF450
lbl_805BEB04:
/* 805BEB04  88 1F 07 E5 */	lbz r0, 0x7e5(r31)
/* 805BEB08  28 00 00 00 */	cmplwi r0, 0
/* 805BEB0C  40 82 00 70 */	bne lbl_805BEB7C
/* 805BEB10  7F 83 E3 78 */	mr r3, r28
/* 805BEB14  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805BEB18  81 8C 02 64 */	lwz r12, 0x264(r12)
/* 805BEB1C  7D 89 03 A6 */	mtctr r12
/* 805BEB20  4E 80 04 21 */	bctrl 
/* 805BEB24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BEB28  41 82 00 54 */	beq lbl_805BEB7C
/* 805BEB2C  7F E3 FB 78 */	mr r3, r31
/* 805BEB30  38 80 00 3E */	li r4, 0x3e
/* 805BEB34  38 A0 00 00 */	li r5, 0
/* 805BEB38  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BEB3C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BEB40  4B FF C8 C9 */	bl setBck__8daB_DR_cFiUcff
/* 805BEB44  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BEB48  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805BEB4C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805BEB50  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805BEB54  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805BEB58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BEB5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BEB60  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805BEB64  38 80 00 02 */	li r4, 2
/* 805BEB68  38 A0 00 4F */	li r5, 0x4f
/* 805BEB6C  38 C1 00 3C */	addi r6, r1, 0x3c
/* 805BEB70  4B AB 0E B4 */	b StartShock__12dVibration_cFii4cXyz
/* 805BEB74  38 00 00 01 */	li r0, 1
/* 805BEB78  98 1F 07 E5 */	stb r0, 0x7e5(r31)
lbl_805BEB7C:
/* 805BEB7C  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BEB80  2C 00 00 3E */	cmpwi r0, 0x3e
/* 805BEB84  41 82 00 1C */	beq lbl_805BEBA0
/* 805BEB88  2C 00 00 1A */	cmpwi r0, 0x1a
/* 805BEB8C  41 82 00 14 */	beq lbl_805BEBA0
/* 805BEB90  2C 00 00 1C */	cmpwi r0, 0x1c
/* 805BEB94  41 82 00 0C */	beq lbl_805BEBA0
/* 805BEB98  2C 00 00 18 */	cmpwi r0, 0x18
/* 805BEB9C  40 82 00 4C */	bne lbl_805BEBE8
lbl_805BEBA0:
/* 805BEBA0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BEBA4  38 80 00 01 */	li r4, 1
/* 805BEBA8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BEBAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BEBB0  40 82 00 18 */	bne lbl_805BEBC8
/* 805BEBB4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BEBB8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BEBBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BEBC0  41 82 00 08 */	beq lbl_805BEBC8
/* 805BEBC4  38 80 00 00 */	li r4, 0
lbl_805BEBC8:
/* 805BEBC8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BEBCC  41 82 00 1C */	beq lbl_805BEBE8
/* 805BEBD0  7F E3 FB 78 */	mr r3, r31
/* 805BEBD4  38 80 00 36 */	li r4, 0x36
/* 805BEBD8  38 A0 00 02 */	li r5, 2
/* 805BEBDC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BEBE0  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BEBE4  4B FF C8 25 */	bl setBck__8daB_DR_cFiUcff
lbl_805BEBE8:
/* 805BEBE8  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 805BEBEC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805BEBF0  41 82 08 60 */	beq lbl_805BF450
/* 805BEBF4  38 7F 07 D0 */	addi r3, r31, 0x7d0
/* 805BEBF8  48 00 80 01 */	bl func_805C6BF8
/* 805BEBFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BEC00  40 82 08 50 */	bne lbl_805BF450
/* 805BEC04  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 805BEC08  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805BEC0C  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 805BEC10  38 00 00 04 */	li r0, 4
/* 805BEC14  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 805BEC18  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007048D@ha */
/* 805BEC1C  38 03 04 8D */	addi r0, r3, 0x048D /* 0x0007048D@l */
/* 805BEC20  90 01 00 20 */	stw r0, 0x20(r1)
/* 805BEC24  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805BEC28  38 81 00 20 */	addi r4, r1, 0x20
/* 805BEC2C  38 A0 00 00 */	li r5, 0
/* 805BEC30  38 C0 FF FF */	li r6, -1
/* 805BEC34  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805BEC38  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805BEC3C  7D 89 03 A6 */	mtctr r12
/* 805BEC40  4E 80 04 21 */	bctrl 
/* 805BEC44  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BEC48  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805BEC4C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805BEC50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805BEC54  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805BEC58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BEC5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BEC60  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805BEC64  38 80 00 05 */	li r4, 5
/* 805BEC68  38 A0 00 1F */	li r5, 0x1f
/* 805BEC6C  38 C1 00 30 */	addi r6, r1, 0x30
/* 805BEC70  4B AB 0D B4 */	b StartShock__12dVibration_cFii4cXyz
/* 805BEC74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BEC78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BEC7C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 805BEC80  28 00 00 28 */	cmplwi r0, 0x28
/* 805BEC84  40 82 00 2C */	bne lbl_805BECB0
/* 805BEC88  A8 7F 05 62 */	lha r3, 0x562(r31)
/* 805BEC8C  38 03 FF FF */	addi r0, r3, -1
/* 805BEC90  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805BEC94  A0 1C 05 6E */	lhz r0, 0x56e(r28)
/* 805BEC98  28 00 00 00 */	cmplwi r0, 0
/* 805BEC9C  41 82 00 44 */	beq lbl_805BECE0
/* 805BECA0  A8 7F 05 62 */	lha r3, 0x562(r31)
/* 805BECA4  38 03 FF FF */	addi r0, r3, -1
/* 805BECA8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805BECAC  48 00 00 34 */	b lbl_805BECE0
lbl_805BECB0:
/* 805BECB0  4B BA 06 E8 */	b checkMasterSwordEquip__9daPy_py_cFv
/* 805BECB4  2C 03 00 00 */	cmpwi r3, 0
/* 805BECB8  41 82 00 28 */	beq lbl_805BECE0
/* 805BECBC  A8 7F 05 62 */	lha r3, 0x562(r31)
/* 805BECC0  38 03 FF FE */	addi r0, r3, -2
/* 805BECC4  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805BECC8  A0 1C 05 6E */	lhz r0, 0x56e(r28)
/* 805BECCC  28 00 00 00 */	cmplwi r0, 0
/* 805BECD0  41 82 00 10 */	beq lbl_805BECE0
/* 805BECD4  A8 7F 05 62 */	lha r3, 0x562(r31)
/* 805BECD8  38 03 FF FE */	addi r0, r3, -2
/* 805BECDC  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_805BECE0:
/* 805BECE0  88 7F 07 E8 */	lbz r3, 0x7e8(r31)
/* 805BECE4  38 03 00 01 */	addi r0, r3, 1
/* 805BECE8  98 1F 07 E8 */	stb r0, 0x7e8(r31)
/* 805BECEC  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805BECF0  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805BECF4  A8 03 00 4E */	lha r0, 0x4e(r3)
/* 805BECF8  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 805BECFC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BED00  80 63 00 04 */	lwz r3, 4(r3)
/* 805BED04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805BED08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805BED0C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 805BED10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805BED14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805BED18  4B D8 77 98 */	b PSMTXCopy
/* 805BED1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BED20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BED24  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805BED28  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805BED2C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BED30  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805BED34  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805BED38  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805BED3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BED40  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 805BED44  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 805BED48  38 80 00 00 */	li r4, 0
/* 805BED4C  90 81 00 08 */	stw r4, 8(r1)
/* 805BED50  38 00 FF FF */	li r0, -1
/* 805BED54  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BED58  90 81 00 10 */	stw r4, 0x10(r1)
/* 805BED5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805BED60  90 81 00 18 */	stw r4, 0x18(r1)
/* 805BED64  38 80 00 00 */	li r4, 0
/* 805BED68  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008999@ha */
/* 805BED6C  38 A5 89 99 */	addi r5, r5, 0x8999 /* 0x00008999@l */
/* 805BED70  38 C1 00 60 */	addi r6, r1, 0x60
/* 805BED74  38 E0 00 00 */	li r7, 0
/* 805BED78  39 00 00 00 */	li r8, 0
/* 805BED7C  39 20 00 00 */	li r9, 0
/* 805BED80  39 40 00 FF */	li r10, 0xff
/* 805BED84  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805BED88  4B A8 DD 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805BED8C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 805BED90  38 80 00 00 */	li r4, 0
/* 805BED94  90 81 00 08 */	stw r4, 8(r1)
/* 805BED98  38 00 FF FF */	li r0, -1
/* 805BED9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BEDA0  90 81 00 10 */	stw r4, 0x10(r1)
/* 805BEDA4  90 81 00 14 */	stw r4, 0x14(r1)
/* 805BEDA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 805BEDAC  38 80 00 00 */	li r4, 0
/* 805BEDB0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000899A@ha */
/* 805BEDB4  38 A5 89 9A */	addi r5, r5, 0x899A /* 0x0000899A@l */
/* 805BEDB8  38 C1 00 60 */	addi r6, r1, 0x60
/* 805BEDBC  38 E0 00 00 */	li r7, 0
/* 805BEDC0  39 00 00 00 */	li r8, 0
/* 805BEDC4  39 20 00 00 */	li r9, 0
/* 805BEDC8  39 40 00 FF */	li r10, 0xff
/* 805BEDCC  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805BEDD0  4B A8 DC C0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805BEDD4  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 805BEDD8  2C 00 00 00 */	cmpwi r0, 0
/* 805BEDDC  40 81 00 10 */	ble lbl_805BEDEC
/* 805BEDE0  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 805BEDE4  28 00 00 20 */	cmplwi r0, 0x20
/* 805BEDE8  40 82 01 58 */	bne lbl_805BEF40
lbl_805BEDEC:
/* 805BEDEC  38 00 00 00 */	li r0, 0
/* 805BEDF0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805BEDF4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805BEDF8  3C 80 00 04 */	lis r4, 4
/* 805BEDFC  38 A0 00 20 */	li r5, 0x20
/* 805BEE00  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805BEE04  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805BEE08  7D 89 03 A6 */	mtctr r12
/* 805BEE0C  4E 80 04 21 */	bctrl 
/* 805BEE10  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805BEE14  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805BEE18  7F E3 FB 78 */	mr r3, r31
/* 805BEE1C  38 80 00 1B */	li r4, 0x1b
/* 805BEE20  38 A0 00 00 */	li r5, 0
/* 805BEE24  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BEE28  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BEE2C  4B FF C5 DD */	bl setBck__8daB_DR_cFiUcff
/* 805BEE30  38 00 00 00 */	li r0, 0
/* 805BEE34  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 805BEE38  88 9F 07 ED */	lbz r4, 0x7ed(r31)
/* 805BEE3C  28 04 00 FF */	cmplwi r4, 0xff
/* 805BEE40  41 82 00 18 */	beq lbl_805BEE58
/* 805BEE44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BEE48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BEE4C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BEE50  7C 05 07 74 */	extsb r5, r0
/* 805BEE54  4B A7 64 5C */	b offSwitch__10dSv_info_cFii
lbl_805BEE58:
/* 805BEE58  88 9F 07 EE */	lbz r4, 0x7ee(r31)
/* 805BEE5C  28 04 00 FF */	cmplwi r4, 0xff
/* 805BEE60  41 82 00 18 */	beq lbl_805BEE78
/* 805BEE64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BEE68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BEE6C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BEE70  7C 05 07 74 */	extsb r5, r0
/* 805BEE74  4B A7 63 8C */	b onSwitch__10dSv_info_cFii
lbl_805BEE78:
/* 805BEE78  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805BEE7C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805BEE80  80 63 00 00 */	lwz r3, 0(r3)
/* 805BEE84  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805BEE88  38 80 00 1E */	li r4, 0x1e
/* 805BEE8C  38 A0 00 00 */	li r5, 0
/* 805BEE90  4B CF 05 78 */	b bgmStop__8Z2SeqMgrFUll
/* 805BEE94  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805BEE98  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805BEE9C  80 63 00 00 */	lwz r3, 0(r3)
/* 805BEEA0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805BEEA4  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000049@ha */
/* 805BEEA8  38 84 00 49 */	addi r4, r4, 0x0049 /* 0x02000049@l */
/* 805BEEAC  4B CF 0C E8 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 805BEEB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805BEEB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805BEEB8  80 63 00 00 */	lwz r3, 0(r3)
/* 805BEEBC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805BEEC0  4B CF 0F 58 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 805BEEC4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805BEEC8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805BEECC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805BEED0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805BEED4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805BEED8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805BEEDC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BEEE0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805BEEE4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805BEEE8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805BEEEC  7C 07 07 74 */	extsb r7, r0
/* 805BEEF0  38 00 00 00 */	li r0, 0
/* 805BEEF4  90 01 00 08 */	stw r0, 8(r1)
/* 805BEEF8  38 60 02 15 */	li r3, 0x215
/* 805BEEFC  28 1F 00 00 */	cmplwi r31, 0
/* 805BEF00  41 82 00 0C */	beq lbl_805BEF0C
/* 805BEF04  80 9F 00 04 */	lwz r4, 4(r31)
/* 805BEF08  48 00 00 08 */	b lbl_805BEF10
lbl_805BEF0C:
/* 805BEF0C  38 80 FF FF */	li r4, -1
lbl_805BEF10:
/* 805BEF10  38 A0 00 00 */	li r5, 0
/* 805BEF14  38 C1 00 54 */	addi r6, r1, 0x54
/* 805BEF18  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 805BEF1C  39 20 00 00 */	li r9, 0
/* 805BEF20  39 40 FF FF */	li r10, -1
/* 805BEF24  4B A5 AF CC */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805BEF28  90 7F 04 A4 */	stw r3, 0x4a4(r31)
/* 805BEF2C  38 00 00 14 */	li r0, 0x14
/* 805BEF30  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 805BEF34  38 00 03 E8 */	li r0, 0x3e8
/* 805BEF38  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BEF3C  48 00 05 74 */	b lbl_805BF4B0
lbl_805BEF40:
/* 805BEF40  88 1F 07 E8 */	lbz r0, 0x7e8(r31)
/* 805BEF44  28 00 00 04 */	cmplwi r0, 4
/* 805BEF48  41 80 00 D8 */	blt lbl_805BF020
/* 805BEF4C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805BEF50  3C 80 00 04 */	lis r4, 4
/* 805BEF54  38 A0 00 20 */	li r5, 0x20
/* 805BEF58  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805BEF5C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805BEF60  7D 89 03 A6 */	mtctr r12
/* 805BEF64  4E 80 04 21 */	bctrl 
/* 805BEF68  88 9F 07 ED */	lbz r4, 0x7ed(r31)
/* 805BEF6C  28 04 00 FF */	cmplwi r4, 0xff
/* 805BEF70  41 82 00 18 */	beq lbl_805BEF88
/* 805BEF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BEF78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BEF7C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BEF80  7C 05 07 74 */	extsb r5, r0
/* 805BEF84  4B A7 63 2C */	b offSwitch__10dSv_info_cFii
lbl_805BEF88:
/* 805BEF88  88 9F 07 EE */	lbz r4, 0x7ee(r31)
/* 805BEF8C  28 04 00 FF */	cmplwi r4, 0xff
/* 805BEF90  41 82 00 18 */	beq lbl_805BEFA8
/* 805BEF94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BEF98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BEF9C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BEFA0  7C 05 07 74 */	extsb r5, r0
/* 805BEFA4  4B A7 62 5C */	b onSwitch__10dSv_info_cFii
lbl_805BEFA8:
/* 805BEFA8  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 805BEFAC  2C 00 00 08 */	cmpwi r0, 8
/* 805BEFB0  41 81 00 10 */	bgt lbl_805BEFC0
/* 805BEFB4  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 805BEFB8  60 00 00 01 */	ori r0, r0, 1
/* 805BEFBC  B0 1F 05 8E */	sth r0, 0x58e(r31)
lbl_805BEFC0:
/* 805BEFC0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805BEFC4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805BEFC8  7F E3 FB 78 */	mr r3, r31
/* 805BEFCC  38 80 00 1B */	li r4, 0x1b
/* 805BEFD0  38 A0 00 00 */	li r5, 0
/* 805BEFD4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BEFD8  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BEFDC  4B FF C4 2D */	bl setBck__8daB_DR_cFiUcff
/* 805BEFE0  38 00 00 00 */	li r0, 0
/* 805BEFE4  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 805BEFE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805BEFEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805BEFF0  80 63 00 00 */	lwz r3, 0(r3)
/* 805BEFF4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805BEFF8  38 80 00 01 */	li r4, 1
/* 805BEFFC  4B CF 0F 90 */	b changeBgmStatus__8Z2SeqMgrFl
/* 805BF000  38 60 00 19 */	li r3, 0x19
/* 805BF004  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805BF008  7C 04 07 74 */	extsb r4, r0
/* 805BF00C  4B A6 E9 40 */	b dComIfGs_onZoneSwitch__Fii
/* 805BF010  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BF014  38 03 00 01 */	addi r0, r3, 1
/* 805BF018  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BF01C  48 00 04 34 */	b lbl_805BF450
lbl_805BF020:
/* 805BF020  88 1F 07 E4 */	lbz r0, 0x7e4(r31)
/* 805BF024  28 00 00 00 */	cmplwi r0, 0
/* 805BF028  40 82 00 20 */	bne lbl_805BF048
/* 805BF02C  7F E3 FB 78 */	mr r3, r31
/* 805BF030  38 80 00 1A */	li r4, 0x1a
/* 805BF034  38 A0 00 00 */	li r5, 0
/* 805BF038  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BF03C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF040  4B FF C3 C9 */	bl setBck__8daB_DR_cFiUcff
/* 805BF044  48 00 00 1C */	b lbl_805BF060
lbl_805BF048:
/* 805BF048  7F E3 FB 78 */	mr r3, r31
/* 805BF04C  38 80 00 1C */	li r4, 0x1c
/* 805BF050  38 A0 00 00 */	li r5, 0
/* 805BF054  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BF058  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF05C  4B FF C3 AD */	bl setBck__8daB_DR_cFiUcff
lbl_805BF060:
/* 805BF060  88 7F 07 E4 */	lbz r3, 0x7e4(r31)
/* 805BF064  38 03 00 01 */	addi r0, r3, 1
/* 805BF068  98 1F 07 E4 */	stb r0, 0x7e4(r31)
/* 805BF06C  88 1F 07 E4 */	lbz r0, 0x7e4(r31)
/* 805BF070  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805BF074  98 1F 07 E4 */	stb r0, 0x7e4(r31)
/* 805BF078  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805BF07C  3C 80 00 04 */	lis r4, 4
/* 805BF080  38 A0 00 1F */	li r5, 0x1f
/* 805BF084  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805BF088  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805BF08C  7D 89 03 A6 */	mtctr r12
/* 805BF090  4E 80 04 21 */	bctrl 
/* 805BF094  48 00 03 BC */	b lbl_805BF450
lbl_805BF098:
/* 805BF098  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BF09C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805BF0A0  40 82 00 4C */	bne lbl_805BF0EC
/* 805BF0A4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BF0A8  38 80 00 01 */	li r4, 1
/* 805BF0AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BF0B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BF0B4  40 82 00 18 */	bne lbl_805BF0CC
/* 805BF0B8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BF0BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BF0C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BF0C4  41 82 00 08 */	beq lbl_805BF0CC
/* 805BF0C8  38 80 00 00 */	li r4, 0
lbl_805BF0CC:
/* 805BF0CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BF0D0  41 82 00 1C */	beq lbl_805BF0EC
/* 805BF0D4  7F E3 FB 78 */	mr r3, r31
/* 805BF0D8  38 80 00 20 */	li r4, 0x20
/* 805BF0DC  38 A0 00 02 */	li r5, 2
/* 805BF0E0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BF0E4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF0E8  4B FF C3 21 */	bl setBck__8daB_DR_cFiUcff
lbl_805BF0EC:
/* 805BF0EC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805BF0F0  C0 1E 03 D0 */	lfs f0, 0x3d0(r30)
/* 805BF0F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BF0F8  40 80 00 44 */	bge lbl_805BF13C
/* 805BF0FC  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BF100  2C 00 00 22 */	cmpwi r0, 0x22
/* 805BF104  41 82 00 38 */	beq lbl_805BF13C
/* 805BF108  7F 83 E3 78 */	mr r3, r28
/* 805BF10C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805BF110  81 8C 02 5C */	lwz r12, 0x25c(r12)
/* 805BF114  7D 89 03 A6 */	mtctr r12
/* 805BF118  4E 80 04 21 */	bctrl 
/* 805BF11C  C0 1E 03 D4 */	lfs f0, 0x3d4(r30)
/* 805BF120  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805BF124  7F E3 FB 78 */	mr r3, r31
/* 805BF128  38 80 00 22 */	li r4, 0x22
/* 805BF12C  38 A0 00 00 */	li r5, 0
/* 805BF130  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BF134  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF138  4B FF C2 D1 */	bl setBck__8daB_DR_cFiUcff
lbl_805BF13C:
/* 805BF13C  7F E3 FB 78 */	mr r3, r31
/* 805BF140  4B FF E0 1D */	bl mBgFallGroundCheck__8daB_DR_cFv
/* 805BF144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BF148  41 82 03 08 */	beq lbl_805BF450
/* 805BF14C  88 9F 07 EE */	lbz r4, 0x7ee(r31)
/* 805BF150  28 04 00 FF */	cmplwi r4, 0xff
/* 805BF154  41 82 00 18 */	beq lbl_805BF16C
/* 805BF158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BF15C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BF160  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BF164  7C 05 07 74 */	extsb r5, r0
/* 805BF168  4B A7 61 48 */	b offSwitch__10dSv_info_cFii
lbl_805BF16C:
/* 805BF16C  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BF170  2C 00 00 22 */	cmpwi r0, 0x22
/* 805BF174  41 82 00 1C */	beq lbl_805BF190
/* 805BF178  7F E3 FB 78 */	mr r3, r31
/* 805BF17C  38 80 00 22 */	li r4, 0x22
/* 805BF180  38 A0 00 00 */	li r5, 0
/* 805BF184  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BF188  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF18C  4B FF C2 7D */	bl setBck__8daB_DR_cFiUcff
lbl_805BF190:
/* 805BF190  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BF194  38 03 00 01 */	addi r0, r3, 1
/* 805BF198  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BF19C  48 00 02 B4 */	b lbl_805BF450
lbl_805BF1A0:
/* 805BF1A0  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BF1A4  2C 00 00 22 */	cmpwi r0, 0x22
/* 805BF1A8  40 82 00 5C */	bne lbl_805BF204
/* 805BF1AC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BF1B0  38 80 00 01 */	li r4, 1
/* 805BF1B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BF1B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BF1BC  40 82 00 18 */	bne lbl_805BF1D4
/* 805BF1C0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BF1C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BF1C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BF1CC  41 82 00 08 */	beq lbl_805BF1D4
/* 805BF1D0  38 80 00 00 */	li r4, 0
lbl_805BF1D4:
/* 805BF1D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BF1D8  41 82 00 2C */	beq lbl_805BF204
/* 805BF1DC  7F E3 FB 78 */	mr r3, r31
/* 805BF1E0  38 80 00 1F */	li r4, 0x1f
/* 805BF1E4  38 A0 00 02 */	li r5, 2
/* 805BF1E8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BF1EC  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF1F0  4B FF C2 19 */	bl setBck__8daB_DR_cFiUcff
/* 805BF1F4  38 00 00 01 */	li r0, 1
/* 805BF1F8  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 805BF1FC  38 00 00 23 */	li r0, 0x23
/* 805BF200  90 1F 07 C0 */	stw r0, 0x7c0(r31)
lbl_805BF204:
/* 805BF204  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BF208  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805BF20C  40 82 02 44 */	bne lbl_805BF450
/* 805BF210  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 805BF214  48 00 79 C9 */	bl func_805C6BDC
/* 805BF218  2C 03 00 00 */	cmpwi r3, 0
/* 805BF21C  40 82 02 34 */	bne lbl_805BF450
/* 805BF220  7F E3 FB 78 */	mr r3, r31
/* 805BF224  38 80 00 41 */	li r4, 0x41
/* 805BF228  38 A0 00 00 */	li r5, 0
/* 805BF22C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BF230  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF234  4B FF C1 D5 */	bl setBck__8daB_DR_cFiUcff
/* 805BF238  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805BF23C  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 805BF240  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BF244  38 03 00 01 */	addi r0, r3, 1
/* 805BF248  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BF24C  48 00 02 04 */	b lbl_805BF450
lbl_805BF250:
/* 805BF250  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BF254  2C 00 00 41 */	cmpwi r0, 0x41
/* 805BF258  40 82 00 28 */	bne lbl_805BF280
/* 805BF25C  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 805BF260  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 805BF264  C0 1E 03 C0 */	lfs f0, 0x3c0(r30)
/* 805BF268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BF26C  4C 41 13 82 */	cror 2, 1, 2
/* 805BF270  40 82 00 10 */	bne lbl_805BF280
/* 805BF274  4B FF DC 31 */	bl revolutionMove__8daB_DR_cFv
/* 805BF278  38 00 00 00 */	li r0, 0
/* 805BF27C  98 1F 07 D7 */	stb r0, 0x7d7(r31)
lbl_805BF280:
/* 805BF280  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BF284  2C 00 00 35 */	cmpwi r0, 0x35
/* 805BF288  41 82 00 4C */	beq lbl_805BF2D4
/* 805BF28C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BF290  38 80 00 01 */	li r4, 1
/* 805BF294  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BF298  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BF29C  40 82 00 18 */	bne lbl_805BF2B4
/* 805BF2A0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BF2A4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BF2A8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BF2AC  41 82 00 08 */	beq lbl_805BF2B4
/* 805BF2B0  38 80 00 00 */	li r4, 0
lbl_805BF2B4:
/* 805BF2B4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BF2B8  41 82 01 98 */	beq lbl_805BF450
/* 805BF2BC  7F E3 FB 78 */	mr r3, r31
/* 805BF2C0  38 80 00 35 */	li r4, 0x35
/* 805BF2C4  38 A0 00 02 */	li r5, 2
/* 805BF2C8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BF2CC  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF2D0  4B FF C1 39 */	bl setBck__8daB_DR_cFiUcff
lbl_805BF2D4:
/* 805BF2D4  7F E3 FB 78 */	mr r3, r31
/* 805BF2D8  4B FF DD 85 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805BF2DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BF2E0  41 82 00 18 */	beq lbl_805BF2F8
/* 805BF2E4  7F E3 FB 78 */	mr r3, r31
/* 805BF2E8  38 80 00 05 */	li r4, 5
/* 805BF2EC  38 A0 00 00 */	li r5, 0
/* 805BF2F0  4B FF C1 C5 */	bl setActionMode__8daB_DR_cFii
/* 805BF2F4  48 00 01 5C */	b lbl_805BF450
lbl_805BF2F8:
/* 805BF2F8  7F E3 FB 78 */	mr r3, r31
/* 805BF2FC  38 80 00 01 */	li r4, 1
/* 805BF300  38 A0 00 00 */	li r5, 0
/* 805BF304  4B FF C1 B1 */	bl setActionMode__8daB_DR_cFii
/* 805BF308  48 00 01 48 */	b lbl_805BF450
lbl_805BF30C:
/* 805BF30C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BF310  38 63 00 0C */	addi r3, r3, 0xc
/* 805BF314  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805BF318  4B D6 91 14 */	b checkPass__12J3DFrameCtrlFf
/* 805BF31C  2C 03 00 00 */	cmpwi r3, 0
/* 805BF320  41 82 00 88 */	beq lbl_805BF3A8
/* 805BF324  7F 83 E3 78 */	mr r3, r28
/* 805BF328  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805BF32C  81 8C 02 58 */	lwz r12, 0x258(r12)
/* 805BF330  7D 89 03 A6 */	mtctr r12
/* 805BF334  4E 80 04 21 */	bctrl 
/* 805BF338  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BF33C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805BF340  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805BF344  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BF348  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805BF34C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BF350  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BF354  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805BF358  38 80 00 05 */	li r4, 5
/* 805BF35C  38 A0 00 4F */	li r5, 0x4f
/* 805BF360  38 C1 00 24 */	addi r6, r1, 0x24
/* 805BF364  4B AB 06 C0 */	b StartShock__12dVibration_cFii4cXyz
/* 805BF368  88 9F 07 ED */	lbz r4, 0x7ed(r31)
/* 805BF36C  28 04 00 FF */	cmplwi r4, 0xff
/* 805BF370  41 82 00 18 */	beq lbl_805BF388
/* 805BF374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BF378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BF37C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BF380  7C 05 07 74 */	extsb r5, r0
/* 805BF384  4B A7 5F 2C */	b offSwitch__10dSv_info_cFii
lbl_805BF388:
/* 805BF388  88 9F 07 EE */	lbz r4, 0x7ee(r31)
/* 805BF38C  28 04 00 FF */	cmplwi r4, 0xff
/* 805BF390  41 82 00 18 */	beq lbl_805BF3A8
/* 805BF394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BF398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BF39C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BF3A0  7C 05 07 74 */	extsb r5, r0
/* 805BF3A4  4B A7 5F 0C */	b offSwitch__10dSv_info_cFii
lbl_805BF3A8:
/* 805BF3A8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BF3AC  38 80 00 01 */	li r4, 1
/* 805BF3B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BF3B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BF3B8  40 82 00 18 */	bne lbl_805BF3D0
/* 805BF3BC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BF3C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BF3C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BF3C8  41 82 00 08 */	beq lbl_805BF3D0
/* 805BF3CC  38 80 00 00 */	li r4, 0
lbl_805BF3D0:
/* 805BF3D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BF3D4  41 82 00 7C */	beq lbl_805BF450
/* 805BF3D8  7F E3 FB 78 */	mr r3, r31
/* 805BF3DC  38 80 00 35 */	li r4, 0x35
/* 805BF3E0  38 A0 00 02 */	li r5, 2
/* 805BF3E4  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BF3E8  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BF3EC  4B FF C0 1D */	bl setBck__8daB_DR_cFiUcff
/* 805BF3F0  7F E3 FB 78 */	mr r3, r31
/* 805BF3F4  38 80 00 01 */	li r4, 1
/* 805BF3F8  38 A0 00 00 */	li r5, 0
/* 805BF3FC  4B FF C0 B9 */	bl setActionMode__8daB_DR_cFii
/* 805BF400  48 00 00 50 */	b lbl_805BF450
lbl_805BF404:
/* 805BF404  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 805BF408  48 00 77 D5 */	bl func_805C6BDC
/* 805BF40C  2C 03 00 00 */	cmpwi r3, 0
/* 805BF410  40 82 00 40 */	bne lbl_805BF450
/* 805BF414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BF418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BF41C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805BF420  38 80 20 02 */	li r4, 0x2002
/* 805BF424  4B A7 55 68 */	b onEventBit__11dSv_event_cFUs
/* 805BF428  38 60 00 16 */	li r3, 0x16
/* 805BF42C  4B A6 E3 A4 */	b dComIfGs_onStageBossEnemy__Fi
/* 805BF430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BF434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BF438  38 80 00 38 */	li r4, 0x38
/* 805BF43C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BF440  7C 05 07 74 */	extsb r5, r0
/* 805BF444  4B A7 5D BC */	b onSwitch__10dSv_info_cFii
/* 805BF448  7F E3 FB 78 */	mr r3, r31
/* 805BF44C  4B A5 A8 30 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805BF450:
/* 805BF450  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805BF454  4B A4 D9 10 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805BF458  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805BF45C  4B A4 DA E8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805BF460  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BF464  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BF468  7C 64 1B 78 */	mr r4, r3
/* 805BF46C  4B D8 71 44 */	b PSMTXInverse
/* 805BF470  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BF474  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BF478  38 9F 05 38 */	addi r4, r31, 0x538
/* 805BF47C  38 A1 00 48 */	addi r5, r1, 0x48
/* 805BF480  4B D8 78 EC */	b PSMTXMultVec
/* 805BF484  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805BF488  28 1F 00 00 */	cmplwi r31, 0
/* 805BF48C  41 82 00 0C */	beq lbl_805BF498
/* 805BF490  80 9F 00 04 */	lwz r4, 4(r31)
/* 805BF494  48 00 00 08 */	b lbl_805BF49C
lbl_805BF498:
/* 805BF498  38 80 FF FF */	li r4, -1
lbl_805BF49C:
/* 805BF49C  38 A1 00 48 */	addi r5, r1, 0x48
/* 805BF4A0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805BF4A4  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 805BF4A8  7D 89 03 A6 */	mtctr r12
/* 805BF4AC  4E 80 04 21 */	bctrl 
lbl_805BF4B0:
/* 805BF4B0  39 61 00 90 */	addi r11, r1, 0x90
/* 805BF4B4  4B DA 2D 6C */	b _restgpr_27
/* 805BF4B8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805BF4BC  7C 08 03 A6 */	mtlr r0
/* 805BF4C0  38 21 00 90 */	addi r1, r1, 0x90
/* 805BF4C4  4E 80 00 20 */	blr 
