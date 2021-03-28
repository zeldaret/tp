lbl_80772C04:
/* 80772C04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80772C08  7C 08 02 A6 */	mflr r0
/* 80772C0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80772C10  39 61 00 30 */	addi r11, r1, 0x30
/* 80772C14  4B BE F5 C4 */	b _savegpr_28
/* 80772C18  7C 7C 1B 78 */	mr r28, r3
/* 80772C1C  3C 60 80 78 */	lis r3, lit_4018@ha
/* 80772C20  3B E3 9D FC */	addi r31, r3, lit_4018@l
/* 80772C24  3B C0 00 00 */	li r30, 0
/* 80772C28  3B A0 00 00 */	li r29, 0
/* 80772C2C  3C 60 80 78 */	lis r3, boss@ha
/* 80772C30  93 83 A8 70 */	stw r28, boss@l(r3)
/* 80772C34  A8 1C 0A 64 */	lha r0, 0xa64(r28)
/* 80772C38  2C 00 00 00 */	cmpwi r0, 0
/* 80772C3C  40 82 00 30 */	bne lbl_80772C6C
/* 80772C40  3C 60 80 77 */	lis r3, s_command4_sub__FPvPv@ha
/* 80772C44  38 63 2B 98 */	addi r3, r3, s_command4_sub__FPvPv@l
/* 80772C48  7F 84 E3 78 */	mr r4, r28
/* 80772C4C  4B 8A E6 EC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80772C50  28 03 00 00 */	cmplwi r3, 0
/* 80772C54  40 82 00 18 */	bne lbl_80772C6C
/* 80772C58  38 00 00 07 */	li r0, 7
/* 80772C5C  B0 1C 0A 42 */	sth r0, 0xa42(r28)
/* 80772C60  38 00 00 00 */	li r0, 0
/* 80772C64  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772C68  48 00 03 F0 */	b lbl_80773058
lbl_80772C6C:
/* 80772C6C  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 80772C70  28 00 00 0B */	cmplwi r0, 0xb
/* 80772C74  41 81 03 80 */	bgt lbl_80772FF4
/* 80772C78  3C 60 80 78 */	lis r3, lit_7053@ha
/* 80772C7C  38 63 A3 14 */	addi r3, r3, lit_7053@l
/* 80772C80  54 00 10 3A */	slwi r0, r0, 2
/* 80772C84  7C 03 00 2E */	lwzx r0, r3, r0
/* 80772C88  7C 09 03 A6 */	mtctr r0
/* 80772C8C  4E 80 04 20 */	bctr 
lbl_80772C90:
/* 80772C90  38 00 00 01 */	li r0, 1
/* 80772C94  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772C98  48 00 03 5C */	b lbl_80772FF4
lbl_80772C9C:
/* 80772C9C  3B C0 00 01 */	li r30, 1
/* 80772CA0  A8 1C 0A 60 */	lha r0, 0xa60(r28)
/* 80772CA4  2C 00 00 00 */	cmpwi r0, 0
/* 80772CA8  40 82 03 4C */	bne lbl_80772FF4
/* 80772CAC  7F 83 E3 78 */	mr r3, r28
/* 80772CB0  38 80 00 1E */	li r4, 0x1e
/* 80772CB4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80772CB8  38 A0 00 02 */	li r5, 2
/* 80772CBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772CC0  4B FF 91 C1 */	bl anm_init__FP11e_rdy_classifUcf
/* 80772CC4  38 00 00 02 */	li r0, 2
/* 80772CC8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772CCC  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80772CD0  4B AF 4C 84 */	b cM_rndF__Ff
/* 80772CD4  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80772CD8  EC 00 08 2A */	fadds f0, f0, f1
/* 80772CDC  FC 00 00 1E */	fctiwz f0, f0
/* 80772CE0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80772CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80772CE8  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 80772CEC  48 00 03 08 */	b lbl_80772FF4
lbl_80772CF0:
/* 80772CF0  3B C0 00 01 */	li r30, 1
/* 80772CF4  A8 1C 0A 60 */	lha r0, 0xa60(r28)
/* 80772CF8  2C 00 00 00 */	cmpwi r0, 0
/* 80772CFC  40 82 02 F8 */	bne lbl_80772FF4
/* 80772D00  7F 83 E3 78 */	mr r3, r28
/* 80772D04  38 80 00 4C */	li r4, 0x4c
/* 80772D08  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80772D0C  38 A0 00 02 */	li r5, 2
/* 80772D10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772D14  4B FF 91 6D */	bl anm_init__FP11e_rdy_classifUcf
/* 80772D18  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80772D1C  4B AF 4C 38 */	b cM_rndF__Ff
/* 80772D20  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80772D24  EC 00 08 2A */	fadds f0, f0, f1
/* 80772D28  FC 00 00 1E */	fctiwz f0, f0
/* 80772D2C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80772D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80772D34  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 80772D38  38 00 00 01 */	li r0, 1
/* 80772D3C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772D40  48 00 02 B4 */	b lbl_80772FF4
lbl_80772D44:
/* 80772D44  7F 83 E3 78 */	mr r3, r28
/* 80772D48  38 80 00 4C */	li r4, 0x4c
/* 80772D4C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80772D50  38 A0 00 02 */	li r5, 2
/* 80772D54  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772D58  4B FF 91 29 */	bl anm_init__FP11e_rdy_classifUcf
/* 80772D5C  38 00 00 1E */	li r0, 0x1e
/* 80772D60  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 80772D64  38 00 00 06 */	li r0, 6
/* 80772D68  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772D6C  48 00 02 88 */	b lbl_80772FF4
lbl_80772D70:
/* 80772D70  3B A0 00 01 */	li r29, 1
/* 80772D74  A8 1C 0A 60 */	lha r0, 0xa60(r28)
/* 80772D78  2C 00 00 00 */	cmpwi r0, 0
/* 80772D7C  40 82 02 78 */	bne lbl_80772FF4
/* 80772D80  7F 83 E3 78 */	mr r3, r28
/* 80772D84  38 80 00 18 */	li r4, 0x18
/* 80772D88  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80772D8C  38 A0 00 00 */	li r5, 0
/* 80772D90  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772D94  4B FF 90 ED */	bl anm_init__FP11e_rdy_classifUcf
/* 80772D98  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070037@ha */
/* 80772D9C  38 03 00 37 */	addi r0, r3, 0x0037 /* 0x00070037@l */
/* 80772DA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80772DA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80772DA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80772DAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80772DB0  38 81 00 0C */	addi r4, r1, 0xc
/* 80772DB4  38 A0 00 00 */	li r5, 0
/* 80772DB8  38 C0 00 00 */	li r6, 0
/* 80772DBC  38 E0 00 00 */	li r7, 0
/* 80772DC0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80772DC4  FC 40 08 90 */	fmr f2, f1
/* 80772DC8  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80772DCC  FC 80 18 90 */	fmr f4, f3
/* 80772DD0  39 00 00 00 */	li r8, 0
/* 80772DD4  4B B3 8B B0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80772DD8  38 00 00 07 */	li r0, 7
/* 80772DDC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772DE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80772DE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80772DE8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80772DEC  28 00 00 00 */	cmplwi r0, 0
/* 80772DF0  41 82 00 1C */	beq lbl_80772E0C
/* 80772DF4  3C 60 80 78 */	lis r3, l_HIO@ha
/* 80772DF8  38 63 A8 84 */	addi r3, r3, l_HIO@l
/* 80772DFC  A8 63 00 24 */	lha r3, 0x24(r3)
/* 80772E00  38 03 00 02 */	addi r0, r3, 2
/* 80772E04  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 80772E08  48 00 01 EC */	b lbl_80772FF4
lbl_80772E0C:
/* 80772E0C  38 00 00 0A */	li r0, 0xa
/* 80772E10  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 80772E14  48 00 01 E0 */	b lbl_80772FF4
lbl_80772E18:
/* 80772E18  3B A0 00 01 */	li r29, 1
/* 80772E1C  A8 1C 0A 60 */	lha r0, 0xa60(r28)
/* 80772E20  2C 00 00 01 */	cmpwi r0, 1
/* 80772E24  40 82 00 14 */	bne lbl_80772E38
/* 80772E28  3C 60 80 77 */	lis r3, s_command2_sub__FPvPv@ha
/* 80772E2C  38 63 2B 0C */	addi r3, r3, s_command2_sub__FPvPv@l
/* 80772E30  7F 84 E3 78 */	mr r4, r28
/* 80772E34  4B 8A E5 04 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80772E38:
/* 80772E38  A8 1C 0A 60 */	lha r0, 0xa60(r28)
/* 80772E3C  2C 00 00 00 */	cmpwi r0, 0
/* 80772E40  40 82 01 B4 */	bne lbl_80772FF4
/* 80772E44  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 80772E48  38 80 00 01 */	li r4, 1
/* 80772E4C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80772E50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80772E54  40 82 00 18 */	bne lbl_80772E6C
/* 80772E58  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80772E5C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80772E60  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80772E64  41 82 00 08 */	beq lbl_80772E6C
/* 80772E68  38 80 00 00 */	li r4, 0
lbl_80772E6C:
/* 80772E6C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80772E70  41 82 01 84 */	beq lbl_80772FF4
/* 80772E74  7F 83 E3 78 */	mr r3, r28
/* 80772E78  38 80 00 4C */	li r4, 0x4c
/* 80772E7C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80772E80  38 A0 00 02 */	li r5, 2
/* 80772E84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772E88  4B FF 8F F9 */	bl anm_init__FP11e_rdy_classifUcf
/* 80772E8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80772E90  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80772E94  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80772E98  28 00 00 00 */	cmplwi r0, 0
/* 80772E9C  40 82 00 30 */	bne lbl_80772ECC
/* 80772EA0  7F 83 E3 78 */	mr r3, r28
/* 80772EA4  C0 3C 0A 50 */	lfs f1, 0xa50(r28)
/* 80772EA8  38 80 40 00 */	li r4, 0x4000
/* 80772EAC  4B FF A1 59 */	bl pl_check__FP11e_rdy_classfs
/* 80772EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80772EB4  40 82 00 18 */	bne lbl_80772ECC
/* 80772EB8  38 00 00 0A */	li r0, 0xa
/* 80772EBC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772EC0  38 00 01 5E */	li r0, 0x15e
/* 80772EC4  B0 1C 0A 62 */	sth r0, 0xa62(r28)
/* 80772EC8  48 00 01 2C */	b lbl_80772FF4
lbl_80772ECC:
/* 80772ECC  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80772ED0  28 00 00 00 */	cmplwi r0, 0
/* 80772ED4  41 82 00 10 */	beq lbl_80772EE4
/* 80772ED8  38 00 00 50 */	li r0, 0x50
/* 80772EDC  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 80772EE0  48 00 00 0C */	b lbl_80772EEC
lbl_80772EE4:
/* 80772EE4  38 00 00 00 */	li r0, 0
/* 80772EE8  B0 1C 0A 60 */	sth r0, 0xa60(r28)
lbl_80772EEC:
/* 80772EEC  38 00 00 06 */	li r0, 6
/* 80772EF0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772EF4  48 00 01 00 */	b lbl_80772FF4
lbl_80772EF8:
/* 80772EF8  7F 83 E3 78 */	mr r3, r28
/* 80772EFC  38 80 00 18 */	li r4, 0x18
/* 80772F00  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80772F04  38 A0 00 00 */	li r5, 0
/* 80772F08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772F0C  4B FF 8F 75 */	bl anm_init__FP11e_rdy_classifUcf
/* 80772F10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070037@ha */
/* 80772F14  38 03 00 37 */	addi r0, r3, 0x0037 /* 0x00070037@l */
/* 80772F18  90 01 00 08 */	stw r0, 8(r1)
/* 80772F1C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80772F20  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80772F24  80 63 00 00 */	lwz r3, 0(r3)
/* 80772F28  38 81 00 08 */	addi r4, r1, 8
/* 80772F2C  38 A0 00 00 */	li r5, 0
/* 80772F30  38 C0 00 00 */	li r6, 0
/* 80772F34  38 E0 00 00 */	li r7, 0
/* 80772F38  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80772F3C  FC 40 08 90 */	fmr f2, f1
/* 80772F40  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80772F44  FC 80 18 90 */	fmr f4, f3
/* 80772F48  39 00 00 00 */	li r8, 0
/* 80772F4C  4B B3 8A 38 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80772F50  3C 60 80 77 */	lis r3, s_command2_sub__FPvPv@ha
/* 80772F54  38 63 2B 0C */	addi r3, r3, s_command2_sub__FPvPv@l
/* 80772F58  7F 84 E3 78 */	mr r4, r28
/* 80772F5C  4B 8A E3 DC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80772F60  38 00 00 0B */	li r0, 0xb
/* 80772F64  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772F68  48 00 00 8C */	b lbl_80772FF4
lbl_80772F6C:
/* 80772F6C  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 80772F70  38 80 00 01 */	li r4, 1
/* 80772F74  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80772F78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80772F7C  40 82 00 18 */	bne lbl_80772F94
/* 80772F80  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80772F84  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80772F88  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80772F8C  41 82 00 08 */	beq lbl_80772F94
/* 80772F90  38 80 00 00 */	li r4, 0
lbl_80772F94:
/* 80772F94  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80772F98  41 82 00 5C */	beq lbl_80772FF4
/* 80772F9C  A8 1C 0A 62 */	lha r0, 0xa62(r28)
/* 80772FA0  2C 00 00 00 */	cmpwi r0, 0
/* 80772FA4  40 82 00 48 */	bne lbl_80772FEC
/* 80772FA8  7F 83 E3 78 */	mr r3, r28
/* 80772FAC  38 80 00 4C */	li r4, 0x4c
/* 80772FB0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80772FB4  38 A0 00 02 */	li r5, 2
/* 80772FB8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772FBC  4B FF 8E C5 */	bl anm_init__FP11e_rdy_classifUcf
/* 80772FC0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80772FC4  4B AF 49 90 */	b cM_rndF__Ff
/* 80772FC8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80772FCC  EC 00 08 2A */	fadds f0, f0, f1
/* 80772FD0  FC 00 00 1E */	fctiwz f0, f0
/* 80772FD4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80772FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80772FDC  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 80772FE0  38 00 00 01 */	li r0, 1
/* 80772FE4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80772FE8  48 00 00 0C */	b lbl_80772FF4
lbl_80772FEC:
/* 80772FEC  38 00 00 0A */	li r0, 0xa
/* 80772FF0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80772FF4:
/* 80772FF4  7F C0 07 75 */	extsb. r0, r30
/* 80772FF8  41 82 00 44 */	beq lbl_8077303C
/* 80772FFC  7F 83 E3 78 */	mr r3, r28
/* 80773000  C0 3C 0A 50 */	lfs f1, 0xa50(r28)
/* 80773004  38 80 40 00 */	li r4, 0x4000
/* 80773008  4B FF 9F FD */	bl pl_check__FP11e_rdy_classfs
/* 8077300C  2C 03 00 00 */	cmpwi r3, 0
/* 80773010  41 82 00 2C */	beq lbl_8077303C
/* 80773014  38 00 00 05 */	li r0, 5
/* 80773018  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8077301C  80 9C 13 6C */	lwz r4, 0x136c(r28)
/* 80773020  2C 04 00 00 */	cmpwi r4, 0
/* 80773024  41 82 00 18 */	beq lbl_8077303C
/* 80773028  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077302C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80773030  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80773034  7C 05 07 74 */	extsb r5, r0
/* 80773038  4B 8C 21 C8 */	b onSwitch__10dSv_info_cFii
lbl_8077303C:
/* 8077303C  7F A0 07 75 */	extsb. r0, r29
/* 80773040  41 82 00 18 */	beq lbl_80773058
/* 80773044  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80773048  A8 9C 0A 4C */	lha r4, 0xa4c(r28)
/* 8077304C  38 A0 00 02 */	li r5, 2
/* 80773050  38 C0 08 00 */	li r6, 0x800
/* 80773054  4B AF D5 B4 */	b cLib_addCalcAngleS2__FPssss
lbl_80773058:
/* 80773058  39 61 00 30 */	addi r11, r1, 0x30
/* 8077305C  4B BE F1 C8 */	b _restgpr_28
/* 80773060  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80773064  7C 08 03 A6 */	mtlr r0
/* 80773068  38 21 00 30 */	addi r1, r1, 0x30
/* 8077306C  4E 80 00 20 */	blr 
