lbl_80BAFFA8:
/* 80BAFFA8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BAFFAC  7C 08 02 A6 */	mflr r0
/* 80BAFFB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BAFFB4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BAFFB8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BAFFBC  39 61 00 40 */	addi r11, r1, 0x40
/* 80BAFFC0  4B 7B 22 14 */	b _savegpr_27
/* 80BAFFC4  7C 7F 1B 78 */	mr r31, r3
/* 80BAFFC8  3C 80 80 BB */	lis r4, l_eye_offset@ha
/* 80BAFFCC  3B A4 37 B8 */	addi r29, r4, l_eye_offset@l
/* 80BAFFD0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BAFFD4  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80BAFFD8  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 80BAFFDC  48 00 02 85 */	bl getSearchDistance__9daObjBm_cFv
/* 80BAFFE0  FF E0 08 90 */	fmr f31, f1
/* 80BAFFE4  3B 60 FF FF */	li r27, -1
/* 80BAFFE8  38 00 00 00 */	li r0, 0
/* 80BAFFEC  98 1F 0F E8 */	stb r0, 0xfe8(r31)
/* 80BAFFF0  7F E3 FB 78 */	mr r3, r31
/* 80BAFFF4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80BAFFF8  4B 46 A9 6C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BAFFFC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BB0000  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80BB0004  EC 42 00 28 */	fsubs f2, f2, f0
/* 80BB0008  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BB000C  40 81 00 0C */	ble lbl_80BB0018
/* 80BB0010  38 60 FF FF */	li r3, -1
/* 80BB0014  48 00 00 D0 */	b lbl_80BB00E4
lbl_80BB0018:
/* 80BB0018  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BB001C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BB0020  40 80 00 34 */	bge lbl_80BB0054
/* 80BB0024  FC 00 12 10 */	fabs f0, f2
/* 80BB0028  FC 80 00 18 */	frsp f4, f0
/* 80BB002C  38 7D 00 00 */	addi r3, r29, 0
/* 80BB0030  C0 63 00 04 */	lfs f3, 4(r3)
/* 80BB0034  C0 5D 00 6C */	lfs f2, 0x6c(r29)
/* 80BB0038  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80BB003C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80BB0040  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BB0044  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BB0048  40 81 00 0C */	ble lbl_80BB0054
/* 80BB004C  38 60 FF FF */	li r3, -1
/* 80BB0050  48 00 00 94 */	b lbl_80BB00E4
lbl_80BB0054:
/* 80BB0054  7F E3 FB 78 */	mr r3, r31
/* 80BB0058  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80BB005C  4B 46 A6 B4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB0060  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80BB0064  A8 1F 0F 96 */	lha r0, 0xf96(r31)
/* 80BB0068  7C 00 18 50 */	subf r0, r0, r3
/* 80BB006C  7C 04 00 50 */	subf r0, r4, r0
/* 80BB0070  7C 03 07 34 */	extsh r3, r0
/* 80BB0074  4B 7B 50 5C */	b abs
/* 80BB0078  7C 60 07 34 */	extsh r0, r3
/* 80BB007C  2C 00 30 D4 */	cmpwi r0, 0x30d4
/* 80BB0080  40 80 00 08 */	bge lbl_80BB0088
/* 80BB0084  3B 60 00 00 */	li r27, 0
lbl_80BB0088:
/* 80BB0088  7F 60 07 75 */	extsb. r0, r27
/* 80BB008C  40 82 00 54 */	bne lbl_80BB00E0
/* 80BB0090  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80BB0094  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB0098  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80BB009C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BB00A0  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80BB00A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BB00A8  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80BB00AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BB00B0  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80BB00B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BB00B8  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80BB00BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB00C0  38 61 00 14 */	addi r3, r1, 0x14
/* 80BB00C4  38 81 00 08 */	addi r4, r1, 8
/* 80BB00C8  7F E5 FB 78 */	mr r5, r31
/* 80BB00CC  4B 46 DB 9C */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BB00D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB00D4  41 82 00 0C */	beq lbl_80BB00E0
/* 80BB00D8  38 00 00 01 */	li r0, 1
/* 80BB00DC  98 1F 0F E8 */	stb r0, 0xfe8(r31)
lbl_80BB00E0:
/* 80BB00E0  7F 63 DB 78 */	mr r3, r27
lbl_80BB00E4:
/* 80BB00E4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BB00E8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BB00EC  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB00F0  4B 7B 21 30 */	b _restgpr_27
/* 80BB00F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BB00F8  7C 08 03 A6 */	mtlr r0
/* 80BB00FC  38 21 00 50 */	addi r1, r1, 0x50
/* 80BB0100  4E 80 00 20 */	blr 
