lbl_80CAFF60:
/* 80CAFF60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CAFF64  7C 08 02 A6 */	mflr r0
/* 80CAFF68  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CAFF6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CAFF70  4B 6B 22 61 */	bl _savegpr_26
/* 80CAFF74  7C 7B 1B 78 */	mr r27, r3
/* 80CAFF78  3C 60 80 CB */	lis r3, l_bmd@ha /* 0x80CB09D4@ha */
/* 80CAFF7C  3B C3 09 D4 */	addi r30, r3, l_bmd@l /* 0x80CB09D4@l */
/* 80CAFF80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAFF84  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAFF88  83 9F 5D B4 */	lwz r28, 0x5db4(r31)
/* 80CAFF8C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80CAFF90  54 1A 06 3E */	clrlwi r26, r0, 0x18
/* 80CAFF94  3B BF 4E 00 */	addi r29, r31, 0x4e00
/* 80CAFF98  7F A3 EB 78 */	mr r3, r29
/* 80CAFF9C  3C 80 80 CB */	lis r4, d_a_obj_pillar__stringBase0@ha /* 0x80CB0ACC@ha */
/* 80CAFFA0  38 84 0A CC */	addi r4, r4, d_a_obj_pillar__stringBase0@l /* 0x80CB0ACC@l */
/* 80CAFFA4  38 84 00 14 */	addi r4, r4, 0x14
/* 80CAFFA8  4B 6B 89 ED */	bl strcmp
/* 80CAFFAC  2C 03 00 00 */	cmpwi r3, 0
/* 80CAFFB0  40 82 00 CC */	bne lbl_80CB007C
/* 80CAFFB4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CAFFB8  2C 00 00 02 */	cmpwi r0, 2
/* 80CAFFBC  40 82 00 C0 */	bne lbl_80CB007C
/* 80CAFFC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAFFC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAFFC8  7F 44 D3 78 */	mr r4, r26
/* 80CAFFCC  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80CAFFD0  7C 05 07 74 */	extsb r5, r0
/* 80CAFFD4  4B 38 53 8D */	bl isSwitch__10dSv_info_cCFii
/* 80CAFFD8  2C 03 00 00 */	cmpwi r3, 0
/* 80CAFFDC  41 82 00 A0 */	beq lbl_80CB007C
/* 80CAFFE0  38 7E 00 64 */	addi r3, r30, 0x64
/* 80CAFFE4  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80CAFFE8  98 1B 07 42 */	stb r0, 0x742(r27)
/* 80CAFFEC  88 03 00 25 */	lbz r0, 0x25(r3)
/* 80CAFFF0  98 1B 07 43 */	stb r0, 0x743(r27)
/* 80CAFFF4  A8 03 00 26 */	lha r0, 0x26(r3)
/* 80CAFFF8  B0 1B 07 44 */	sth r0, 0x744(r27)
/* 80CAFFFC  A8 03 00 28 */	lha r0, 0x28(r3)
/* 80CB0000  B0 1B 07 46 */	sth r0, 0x746(r27)
/* 80CB0004  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 80CB0008  B0 1B 07 48 */	sth r0, 0x748(r27)
/* 80CB000C  A8 03 00 2C */	lha r0, 0x2c(r3)
/* 80CB0010  B0 1B 07 4A */	sth r0, 0x74a(r27)
/* 80CB0014  A8 03 00 2E */	lha r0, 0x2e(r3)
/* 80CB0018  B0 1B 07 4C */	sth r0, 0x74c(r27)
/* 80CB001C  38 00 00 00 */	li r0, 0
/* 80CB0020  B0 1B 07 4E */	sth r0, 0x74e(r27)
/* 80CB0024  38 00 00 64 */	li r0, 0x64
/* 80CB0028  98 1B 07 41 */	stb r0, 0x741(r27)
/* 80CB002C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CB0030  7C 03 07 74 */	extsb r3, r0
/* 80CB0034  4B 37 D0 39 */	bl dComIfGp_getReverb__Fi
/* 80CB0038  7C 67 1B 78 */	mr r7, r3
/* 80CB003C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E8@ha */
/* 80CB0040  38 03 00 E8 */	addi r0, r3, 0x00E8 /* 0x000800E8@l */
/* 80CB0044  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB0048  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB004C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB0050  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB0054  38 81 00 10 */	addi r4, r1, 0x10
/* 80CB0058  38 BB 05 38 */	addi r5, r27, 0x538
/* 80CB005C  38 C0 00 00 */	li r6, 0
/* 80CB0060  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80CB0064  FC 40 08 90 */	fmr f2, f1
/* 80CB0068  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 80CB006C  FC 80 18 90 */	fmr f4, f3
/* 80CB0070  39 00 00 00 */	li r8, 0
/* 80CB0074  4B 5F B9 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB0078  48 00 01 00 */	b lbl_80CB0178
lbl_80CB007C:
/* 80CB007C  88 1E 00 64 */	lbz r0, 0x64(r30)
/* 80CB0080  98 1B 07 42 */	stb r0, 0x742(r27)
/* 80CB0084  38 7E 00 64 */	addi r3, r30, 0x64
/* 80CB0088  88 03 00 01 */	lbz r0, 1(r3)
/* 80CB008C  98 1B 07 43 */	stb r0, 0x743(r27)
/* 80CB0090  A8 03 00 02 */	lha r0, 2(r3)
/* 80CB0094  B0 1B 07 44 */	sth r0, 0x744(r27)
/* 80CB0098  A8 03 00 04 */	lha r0, 4(r3)
/* 80CB009C  B0 1B 07 46 */	sth r0, 0x746(r27)
/* 80CB00A0  A8 03 00 06 */	lha r0, 6(r3)
/* 80CB00A4  B0 1B 07 48 */	sth r0, 0x748(r27)
/* 80CB00A8  A8 03 00 08 */	lha r0, 8(r3)
/* 80CB00AC  B0 1B 07 4A */	sth r0, 0x74a(r27)
/* 80CB00B0  A8 03 00 0A */	lha r0, 0xa(r3)
/* 80CB00B4  B0 1B 07 4C */	sth r0, 0x74c(r27)
/* 80CB00B8  7F A3 EB 78 */	mr r3, r29
/* 80CB00BC  3C 80 80 CB */	lis r4, d_a_obj_pillar__stringBase0@ha /* 0x80CB0ACC@ha */
/* 80CB00C0  38 84 0A CC */	addi r4, r4, d_a_obj_pillar__stringBase0@l /* 0x80CB0ACC@l */
/* 80CB00C4  38 84 00 14 */	addi r4, r4, 0x14
/* 80CB00C8  4B 6B 88 CD */	bl strcmp
/* 80CB00CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CB00D0  40 82 00 5C */	bne lbl_80CB012C
/* 80CB00D4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CB00D8  7C 03 07 74 */	extsb r3, r0
/* 80CB00DC  2C 03 00 02 */	cmpwi r3, 2
/* 80CB00E0  40 82 00 4C */	bne lbl_80CB012C
/* 80CB00E4  4B 37 CF 89 */	bl dComIfGp_getReverb__Fi
/* 80CB00E8  7C 67 1B 78 */	mr r7, r3
/* 80CB00EC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E9@ha */
/* 80CB00F0  38 03 00 E9 */	addi r0, r3, 0x00E9 /* 0x000800E9@l */
/* 80CB00F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CB00F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB00FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB0100  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB0104  38 81 00 0C */	addi r4, r1, 0xc
/* 80CB0108  38 BB 05 38 */	addi r5, r27, 0x538
/* 80CB010C  38 C0 00 00 */	li r6, 0
/* 80CB0110  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80CB0114  FC 40 08 90 */	fmr f2, f1
/* 80CB0118  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 80CB011C  FC 80 18 90 */	fmr f4, f3
/* 80CB0120  39 00 00 00 */	li r8, 0
/* 80CB0124  4B 5F B8 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB0128  48 00 00 50 */	b lbl_80CB0178
lbl_80CB012C:
/* 80CB012C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CB0130  7C 03 07 74 */	extsb r3, r0
/* 80CB0134  4B 37 CF 39 */	bl dComIfGp_getReverb__Fi
/* 80CB0138  7C 67 1B 78 */	mr r7, r3
/* 80CB013C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080015@ha */
/* 80CB0140  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00080015@l */
/* 80CB0144  90 01 00 08 */	stw r0, 8(r1)
/* 80CB0148  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB014C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB0150  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB0154  38 81 00 08 */	addi r4, r1, 8
/* 80CB0158  38 BB 05 38 */	addi r5, r27, 0x538
/* 80CB015C  38 C0 00 00 */	li r6, 0
/* 80CB0160  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80CB0164  FC 40 08 90 */	fmr f2, f1
/* 80CB0168  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 80CB016C  FC 80 18 90 */	fmr f4, f3
/* 80CB0170  39 00 00 00 */	li r8, 0
/* 80CB0174  4B 5F B8 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CB0178:
/* 80CB0178  A8 1B 07 44 */	lha r0, 0x744(r27)
/* 80CB017C  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80CB0180  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80CB0184  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CB0188  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80CB018C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CB0190  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CB0194  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 80CB0198  88 9B 07 42 */	lbz r4, 0x742(r27)
/* 80CB019C  38 A0 00 0F */	li r5, 0xf
/* 80CB01A0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80CB01A4  4B 3B F8 81 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CB01A8  38 00 00 01 */	li r0, 1
/* 80CB01AC  98 1B 07 32 */	stb r0, 0x732(r27)
/* 80CB01B0  7F 63 DB 78 */	mr r3, r27
/* 80CB01B4  4B FF F9 91 */	bl checkAttacked__10daPillar_cFv
/* 80CB01B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB01BC  40 82 00 0C */	bne lbl_80CB01C8
/* 80CB01C0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80CB01C4  B0 1B 07 34 */	sth r0, 0x734(r27)
lbl_80CB01C8:
/* 80CB01C8  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB01CC  4B 6B 20 51 */	bl _restgpr_26
/* 80CB01D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CB01D4  7C 08 03 A6 */	mtlr r0
/* 80CB01D8  38 21 00 40 */	addi r1, r1, 0x40
/* 80CB01DC  4E 80 00 20 */	blr 
