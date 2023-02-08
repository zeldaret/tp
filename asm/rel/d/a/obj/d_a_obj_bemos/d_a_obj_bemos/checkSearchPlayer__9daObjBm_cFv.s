lbl_80BB0104:
/* 80BB0104  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BB0108  7C 08 02 A6 */	mflr r0
/* 80BB010C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BB0110  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BB0114  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BB0118  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB011C  4B 7B 20 B9 */	bl _savegpr_27
/* 80BB0120  7C 7F 1B 78 */	mr r31, r3
/* 80BB0124  3C 80 80 BB */	lis r4, l_eye_offset@ha /* 0x80BB37B8@ha */
/* 80BB0128  3B A4 37 B8 */	addi r29, r4, l_eye_offset@l /* 0x80BB37B8@l */
/* 80BB012C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB0130  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB0134  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 80BB0138  48 00 01 29 */	bl getSearchDistance__9daObjBm_cFv
/* 80BB013C  FF E0 08 90 */	fmr f31, f1
/* 80BB0140  3B 60 FF FF */	li r27, -1
/* 80BB0144  38 00 00 00 */	li r0, 0
/* 80BB0148  98 1F 0F E8 */	stb r0, 0xfe8(r31)
/* 80BB014C  7F E3 FB 78 */	mr r3, r31
/* 80BB0150  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80BB0154  4B 46 A8 11 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB0158  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BB015C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80BB0160  EC 42 00 28 */	fsubs f2, f2, f0
/* 80BB0164  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BB0168  40 81 00 0C */	ble lbl_80BB0174
/* 80BB016C  38 60 FF FF */	li r3, -1
/* 80BB0170  48 00 00 D0 */	b lbl_80BB0240
lbl_80BB0174:
/* 80BB0174  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BB0178  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BB017C  40 80 00 34 */	bge lbl_80BB01B0
/* 80BB0180  FC 00 12 10 */	fabs f0, f2
/* 80BB0184  FC 80 00 18 */	frsp f4, f0
/* 80BB0188  38 7D 00 00 */	addi r3, r29, 0
/* 80BB018C  C0 63 00 04 */	lfs f3, 4(r3)
/* 80BB0190  C0 5D 00 6C */	lfs f2, 0x6c(r29)
/* 80BB0194  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80BB0198  EC 02 00 28 */	fsubs f0, f2, f0
/* 80BB019C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BB01A0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BB01A4  40 81 00 0C */	ble lbl_80BB01B0
/* 80BB01A8  38 60 FF FF */	li r3, -1
/* 80BB01AC  48 00 00 94 */	b lbl_80BB0240
lbl_80BB01B0:
/* 80BB01B0  7F E3 FB 78 */	mr r3, r31
/* 80BB01B4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80BB01B8  4B 46 A5 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB01BC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80BB01C0  A8 1F 0F 96 */	lha r0, 0xf96(r31)
/* 80BB01C4  7C 00 18 50 */	subf r0, r0, r3
/* 80BB01C8  7C 04 00 50 */	subf r0, r4, r0
/* 80BB01CC  7C 03 07 34 */	extsh r3, r0
/* 80BB01D0  4B 7B 4F 01 */	bl abs
/* 80BB01D4  7C 60 07 34 */	extsh r0, r3
/* 80BB01D8  2C 00 3A 98 */	cmpwi r0, 0x3a98
/* 80BB01DC  40 80 00 08 */	bge lbl_80BB01E4
/* 80BB01E0  3B 60 00 00 */	li r27, 0
lbl_80BB01E4:
/* 80BB01E4  7F 60 07 75 */	extsb. r0, r27
/* 80BB01E8  40 82 00 54 */	bne lbl_80BB023C
/* 80BB01EC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80BB01F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB01F4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80BB01F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BB01FC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80BB0200  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BB0204  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80BB0208  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BB020C  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80BB0210  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BB0214  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80BB0218  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB021C  38 61 00 14 */	addi r3, r1, 0x14
/* 80BB0220  38 81 00 08 */	addi r4, r1, 8
/* 80BB0224  7F E5 FB 78 */	mr r5, r31
/* 80BB0228  4B 46 DA 41 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BB022C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB0230  41 82 00 0C */	beq lbl_80BB023C
/* 80BB0234  38 00 00 01 */	li r0, 1
/* 80BB0238  98 1F 0F E8 */	stb r0, 0xfe8(r31)
lbl_80BB023C:
/* 80BB023C  7F 63 DB 78 */	mr r3, r27
lbl_80BB0240:
/* 80BB0240  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BB0244  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BB0248  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB024C  4B 7B 1F D5 */	bl _restgpr_27
/* 80BB0250  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BB0254  7C 08 03 A6 */	mtlr r0
/* 80BB0258  38 21 00 50 */	addi r1, r1, 0x50
/* 80BB025C  4E 80 00 20 */	blr 
