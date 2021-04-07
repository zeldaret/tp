lbl_80D59E24:
/* 80D59E24  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D59E28  7C 08 02 A6 */	mflr r0
/* 80D59E2C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D59E30  39 61 00 70 */	addi r11, r1, 0x70
/* 80D59E34  4B 60 83 A1 */	bl _savegpr_27
/* 80D59E38  7C 7C 1B 78 */	mr r28, r3
/* 80D59E3C  3C 60 80 D6 */	lis r3, lit_3907@ha /* 0x80D5A6EC@ha */
/* 80D59E40  3B E3 A6 EC */	addi r31, r3, lit_3907@l /* 0x80D5A6EC@l */
/* 80D59E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D59E48  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D59E4C  83 DB 5D AC */	lwz r30, 0x5dac(r27)
/* 80D59E50  4B 42 77 F1 */	bl dCam_getBody__Fv
/* 80D59E54  7C 7D 1B 78 */	mr r29, r3
/* 80D59E58  A8 7C 05 F0 */	lha r3, 0x5f0(r28)
/* 80D59E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80D59E60  41 82 00 0C */	beq lbl_80D59E6C
/* 80D59E64  38 03 FF FF */	addi r0, r3, -1
/* 80D59E68  B0 1C 05 F0 */	sth r0, 0x5f0(r28)
lbl_80D59E6C:
/* 80D59E6C  88 7C 05 F4 */	lbz r3, 0x5f4(r28)
/* 80D59E70  28 03 00 00 */	cmplwi r3, 0
/* 80D59E74  41 82 00 0C */	beq lbl_80D59E80
/* 80D59E78  38 03 FF FF */	addi r0, r3, -1
/* 80D59E7C  98 1C 05 F4 */	stb r0, 0x5f4(r28)
lbl_80D59E80:
/* 80D59E80  88 1C 05 F6 */	lbz r0, 0x5f6(r28)
/* 80D59E84  2C 00 00 03 */	cmpwi r0, 3
/* 80D59E88  41 82 02 94 */	beq lbl_80D5A11C
/* 80D59E8C  40 80 00 1C */	bge lbl_80D59EA8
/* 80D59E90  2C 00 00 01 */	cmpwi r0, 1
/* 80D59E94  41 82 01 44 */	beq lbl_80D59FD8
/* 80D59E98  40 80 02 14 */	bge lbl_80D5A0AC
/* 80D59E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80D59EA0  40 80 00 18 */	bge lbl_80D59EB8
/* 80D59EA4  48 00 03 5C */	b lbl_80D5A200
lbl_80D59EA8:
/* 80D59EA8  2C 00 00 05 */	cmpwi r0, 5
/* 80D59EAC  41 82 03 54 */	beq lbl_80D5A200
/* 80D59EB0  40 80 03 50 */	bge lbl_80D5A200
/* 80D59EB4  48 00 02 98 */	b lbl_80D5A14C
lbl_80D59EB8:
/* 80D59EB8  3C 60 80 D6 */	lis r3, m_master_id@ha /* 0x80D5A710@ha */
/* 80D59EBC  38 63 A7 10 */	addi r3, r3, m_master_id@l /* 0x80D5A710@l */
/* 80D59EC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D59EC4  28 1C 00 00 */	cmplwi r28, 0
/* 80D59EC8  41 82 00 0C */	beq lbl_80D59ED4
/* 80D59ECC  80 1C 00 04 */	lwz r0, 4(r28)
/* 80D59ED0  48 00 00 08 */	b lbl_80D59ED8
lbl_80D59ED4:
/* 80D59ED4  38 00 FF FF */	li r0, -1
lbl_80D59ED8:
/* 80D59ED8  7C 03 00 40 */	cmplw r3, r0
/* 80D59EDC  40 82 00 44 */	bne lbl_80D59F20
/* 80D59EE0  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80D59EE4  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80D59EE8  28 00 00 2C */	cmplwi r0, 0x2c
/* 80D59EEC  41 82 00 2C */	beq lbl_80D59F18
/* 80D59EF0  A8 7C 05 F2 */	lha r3, 0x5f2(r28)
/* 80D59EF4  38 03 FF FF */	addi r0, r3, -1
/* 80D59EF8  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 80D59EFC  A8 1C 05 F2 */	lha r0, 0x5f2(r28)
/* 80D59F00  2C 00 00 00 */	cmpwi r0, 0
/* 80D59F04  40 82 00 1C */	bne lbl_80D59F20
/* 80D59F08  38 00 00 01 */	li r0, 1
/* 80D59F0C  98 1C 05 F6 */	stb r0, 0x5f6(r28)
/* 80D59F10  98 1C 05 F5 */	stb r0, 0x5f5(r28)
/* 80D59F14  48 00 02 EC */	b lbl_80D5A200
lbl_80D59F18:
/* 80D59F18  38 00 00 96 */	li r0, 0x96
/* 80D59F1C  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
lbl_80D59F20:
/* 80D59F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D59F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D59F28  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80D59F2C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80D59F30  41 82 02 D0 */	beq lbl_80D5A200
/* 80D59F34  A0 03 00 02 */	lhz r0, 2(r3)
/* 80D59F38  28 00 00 00 */	cmplwi r0, 0
/* 80D59F3C  41 82 02 C4 */	beq lbl_80D5A200
/* 80D59F40  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D59F44  28 00 00 02 */	cmplwi r0, 2
/* 80D59F48  41 82 00 2C */	beq lbl_80D59F74
/* 80D59F4C  7F 83 E3 78 */	mr r3, r28
/* 80D59F50  38 80 00 01 */	li r4, 1
/* 80D59F54  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80D59F58  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80D59F5C  38 C0 00 03 */	li r6, 3
/* 80D59F60  4B 2C 19 A9 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80D59F64  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80D59F68  60 00 00 02 */	ori r0, r0, 2
/* 80D59F6C  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80D59F70  48 00 02 90 */	b lbl_80D5A200
lbl_80D59F74:
/* 80D59F74  7F A3 EB 78 */	mr r3, r29
/* 80D59F78  4B 40 75 59 */	bl Stop__9dCamera_cFv
/* 80D59F7C  7F A3 EB 78 */	mr r3, r29
/* 80D59F80  38 80 00 03 */	li r4, 3
/* 80D59F84  4B 40 90 89 */	bl SetTrimSize__9dCamera_cFl
/* 80D59F88  4B 42 76 B9 */	bl dCam_getBody__Fv
/* 80D59F8C  7C 64 1B 78 */	mr r4, r3
/* 80D59F90  38 61 00 44 */	addi r3, r1, 0x44
/* 80D59F94  4B 42 7E D1 */	bl Eye__9dCamera_cFv
/* 80D59F98  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80D59F9C  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 80D59FA0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80D59FA4  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 80D59FA8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80D59FAC  D0 1C 05 EC */	stfs f0, 0x5ec(r28)
/* 80D59FB0  38 00 00 01 */	li r0, 1
/* 80D59FB4  98 1C 05 F6 */	stb r0, 0x5f6(r28)
/* 80D59FB8  38 00 00 1E */	li r0, 0x1e
/* 80D59FBC  B0 1C 05 F0 */	sth r0, 0x5f0(r28)
/* 80D59FC0  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D59FC4  64 00 00 01 */	oris r0, r0, 1
/* 80D59FC8  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D59FCC  38 00 00 3C */	li r0, 0x3c
/* 80D59FD0  98 1C 05 F4 */	stb r0, 0x5f4(r28)
/* 80D59FD4  48 00 02 2C */	b lbl_80D5A200
lbl_80D59FD8:
/* 80D59FD8  A8 1C 05 F0 */	lha r0, 0x5f0(r28)
/* 80D59FDC  2C 00 00 01 */	cmpwi r0, 1
/* 80D59FE0  40 82 00 20 */	bne lbl_80D5A000
/* 80D59FE4  7F C3 F3 78 */	mr r3, r30
/* 80D59FE8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010041@ha */
/* 80D59FEC  38 84 00 41 */	addi r4, r4, 0x0041 /* 0x00010041@l */
/* 80D59FF0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D59FF4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80D59FF8  7D 89 03 A6 */	mtctr r12
/* 80D59FFC  4E 80 04 21 */	bctrl 
lbl_80D5A000:
/* 80D5A000  88 1C 05 F4 */	lbz r0, 0x5f4(r28)
/* 80D5A004  28 00 00 00 */	cmplwi r0, 0
/* 80D5A008  40 82 00 60 */	bne lbl_80D5A068
/* 80D5A00C  38 00 00 33 */	li r0, 0x33
/* 80D5A010  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D5A014  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5A018  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5A01C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5A020  38 81 00 10 */	addi r4, r1, 0x10
/* 80D5A024  38 A0 00 00 */	li r5, 0
/* 80D5A028  38 C0 00 00 */	li r6, 0
/* 80D5A02C  38 E0 00 00 */	li r7, 0
/* 80D5A030  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D5A034  FC 40 08 90 */	fmr f2, f1
/* 80D5A038  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80D5A03C  FC 80 18 90 */	fmr f4, f3
/* 80D5A040  39 00 00 00 */	li r8, 0
/* 80D5A044  4B 55 19 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D5A048  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80D5A04C  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 80D5A050  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 80D5A054  4B 2A DF 85 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 80D5A058  38 00 00 14 */	li r0, 0x14
/* 80D5A05C  98 1C 05 F4 */	stb r0, 0x5f4(r28)
/* 80D5A060  38 00 00 02 */	li r0, 2
/* 80D5A064  98 1C 05 F6 */	stb r0, 0x5f6(r28)
lbl_80D5A068:
/* 80D5A068  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80D5A06C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D5A070  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80D5A074  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D5A078  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80D5A07C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D5A080  C0 1C 05 E4 */	lfs f0, 0x5e4(r28)
/* 80D5A084  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D5A088  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 80D5A08C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D5A090  C0 1C 05 EC */	lfs f0, 0x5ec(r28)
/* 80D5A094  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D5A098  4B 42 75 A9 */	bl dCam_getBody__Fv
/* 80D5A09C  38 81 00 38 */	addi r4, r1, 0x38
/* 80D5A0A0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D5A0A4  4B 42 6A 05 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 80D5A0A8  48 00 01 58 */	b lbl_80D5A200
lbl_80D5A0AC:
/* 80D5A0AC  88 1C 05 F4 */	lbz r0, 0x5f4(r28)
/* 80D5A0B0  28 00 00 00 */	cmplwi r0, 0
/* 80D5A0B4  40 82 00 24 */	bne lbl_80D5A0D8
/* 80D5A0B8  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80D5A0BC  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80D5A0C0  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 80D5A0C4  90 03 05 70 */	stw r0, 0x570(r3)
/* 80D5A0C8  38 00 00 03 */	li r0, 3
/* 80D5A0CC  98 1C 05 F6 */	stb r0, 0x5f6(r28)
/* 80D5A0D0  38 00 00 28 */	li r0, 0x28
/* 80D5A0D4  B0 1C 05 F0 */	sth r0, 0x5f0(r28)
lbl_80D5A0D8:
/* 80D5A0D8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80D5A0DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D5A0E0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80D5A0E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D5A0E8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80D5A0EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D5A0F0  C0 1C 05 E4 */	lfs f0, 0x5e4(r28)
/* 80D5A0F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D5A0F8  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 80D5A0FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D5A100  C0 1C 05 EC */	lfs f0, 0x5ec(r28)
/* 80D5A104  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D5A108  4B 42 75 39 */	bl dCam_getBody__Fv
/* 80D5A10C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D5A110  38 A1 00 14 */	addi r5, r1, 0x14
/* 80D5A114  4B 42 69 95 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 80D5A118  48 00 00 E8 */	b lbl_80D5A200
lbl_80D5A11C:
/* 80D5A11C  A8 1C 05 F0 */	lha r0, 0x5f0(r28)
/* 80D5A120  2C 00 00 00 */	cmpwi r0, 0
/* 80D5A124  40 82 00 DC */	bne lbl_80D5A200
/* 80D5A128  38 7C 05 68 */	addi r3, r28, 0x568
/* 80D5A12C  7F 84 E3 78 */	mr r4, r28
/* 80D5A130  38 A0 07 D4 */	li r5, 0x7d4
/* 80D5A134  38 C0 00 00 */	li r6, 0
/* 80D5A138  38 E0 00 00 */	li r7, 0
/* 80D5A13C  4B 4E FE 55 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D5A140  38 00 00 04 */	li r0, 4
/* 80D5A144  98 1C 05 F6 */	stb r0, 0x5f6(r28)
/* 80D5A148  48 00 00 B8 */	b lbl_80D5A200
lbl_80D5A14C:
/* 80D5A14C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80D5A150  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80D5A154  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 80D5A158  90 03 05 70 */	stw r0, 0x570(r3)
/* 80D5A15C  38 7C 05 68 */	addi r3, r28, 0x568
/* 80D5A160  7F 84 E3 78 */	mr r4, r28
/* 80D5A164  38 A0 00 00 */	li r5, 0
/* 80D5A168  38 C0 00 00 */	li r6, 0
/* 80D5A16C  4B 4F 01 6D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D5A170  2C 03 00 00 */	cmpwi r3, 0
/* 80D5A174  41 82 00 8C */	beq lbl_80D5A200
/* 80D5A178  4B 4D E2 C9 */	bl getSelectCursorPos__12dMsgObject_cFv
/* 80D5A17C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5A180  41 82 00 28 */	beq lbl_80D5A1A8
/* 80D5A184  88 7C 05 F7 */	lbz r3, 0x5f7(r28)
/* 80D5A188  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80D5A18C  38 80 00 00 */	li r4, 0
/* 80D5A190  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80D5A194  7C 05 07 74 */	extsb r5, r0
/* 80D5A198  38 C0 00 00 */	li r6, 0
/* 80D5A19C  38 E0 FF FF */	li r7, -1
/* 80D5A1A0  4B 2C CF D1 */	bl dStage_changeScene__FifUlScsi
/* 80D5A1A4  48 00 00 54 */	b lbl_80D5A1F8
lbl_80D5A1A8:
/* 80D5A1A8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80D5A1AC  8B 63 0D 64 */	lbz r27, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80D5A1B0  7F 7B 07 74 */	extsb r27, r27
/* 80D5A1B4  38 60 00 00 */	li r3, 0
/* 80D5A1B8  4B 2D 27 C5 */	bl getLayerNo__14dComIfG_play_cFi
/* 80D5A1BC  7C 66 07 74 */	extsb r6, r3
/* 80D5A1C0  38 00 00 01 */	li r0, 1
/* 80D5A1C4  90 01 00 08 */	stw r0, 8(r1)
/* 80D5A1C8  38 00 00 00 */	li r0, 0
/* 80D5A1CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5A1D0  3C 60 80 D6 */	lis r3, d_a_tag_kago_fall__stringBase0@ha /* 0x80D5A708@ha */
/* 80D5A1D4  38 63 A7 08 */	addi r3, r3, d_a_tag_kago_fall__stringBase0@l /* 0x80D5A708@l */
/* 80D5A1D8  88 9C 05 F8 */	lbz r4, 0x5f8(r28)
/* 80D5A1DC  7F 65 DB 78 */	mr r5, r27
/* 80D5A1E0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80D5A1E4  38 E0 00 0A */	li r7, 0xa
/* 80D5A1E8  39 00 00 01 */	li r8, 1
/* 80D5A1EC  39 20 00 00 */	li r9, 0
/* 80D5A1F0  39 40 00 00 */	li r10, 0
/* 80D5A1F4  4B 2D 31 09 */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
lbl_80D5A1F8:
/* 80D5A1F8  38 00 00 05 */	li r0, 5
/* 80D5A1FC  98 1C 05 F6 */	stb r0, 0x5f6(r28)
lbl_80D5A200:
/* 80D5A200  39 61 00 70 */	addi r11, r1, 0x70
/* 80D5A204  4B 60 80 1D */	bl _restgpr_27
/* 80D5A208  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D5A20C  7C 08 03 A6 */	mtlr r0
/* 80D5A210  38 21 00 70 */	addi r1, r1, 0x70
/* 80D5A214  4E 80 00 20 */	blr 
