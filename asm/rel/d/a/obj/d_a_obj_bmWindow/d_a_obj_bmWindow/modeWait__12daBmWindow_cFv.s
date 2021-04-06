lbl_80BB8B48:
/* 80BB8B48  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80BB8B4C  7C 08 02 A6 */	mflr r0
/* 80BB8B50  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80BB8B54  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80BB8B58  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80BB8B5C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80BB8B60  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80BB8B64  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80BB8B68  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 80BB8B6C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 80BB8B70  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 80BB8B74  39 61 00 90 */	addi r11, r1, 0x90
/* 80BB8B78  4B 7A 96 4D */	bl _savegpr_23
/* 80BB8B7C  7C 7E 1B 78 */	mr r30, r3
/* 80BB8B80  3C 60 80 BC */	lis r3, lit_3653@ha /* 0x80BB973C@ha */
/* 80BB8B84  3B E3 97 3C */	addi r31, r3, lit_3653@l /* 0x80BB973C@l */
/* 80BB8B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB8B8C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB8B90  83 1B 5D B4 */	lwz r24, 0x5db4(r27)
/* 80BB8B94  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BB8B98  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BB8B9C  38 7F 00 54 */	addi r3, r31, 0x54
/* 80BB8BA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BB8BA4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BB8BA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BB8BAC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BB8BB0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80BB8BB4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BB8BB8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BB8BBC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BB8BC0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80BB8BC4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BB8BC8  80 18 05 78 */	lwz r0, 0x578(r24)
/* 80BB8BCC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80BB8BD0  40 82 00 3C */	bne lbl_80BB8C0C
/* 80BB8BD4  7F 03 C3 78 */	mr r3, r24
/* 80BB8BD8  81 98 06 28 */	lwz r12, 0x628(r24)
/* 80BB8BDC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80BB8BE0  7D 89 03 A6 */	mtctr r12
/* 80BB8BE4  4E 80 04 21 */	bctrl 
/* 80BB8BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80BB8BEC  40 82 00 20 */	bne lbl_80BB8C0C
/* 80BB8BF0  7F 03 C3 78 */	mr r3, r24
/* 80BB8BF4  81 98 06 28 */	lwz r12, 0x628(r24)
/* 80BB8BF8  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80BB8BFC  7D 89 03 A6 */	mtctr r12
/* 80BB8C00  4E 80 04 21 */	bctrl 
/* 80BB8C04  2C 03 00 00 */	cmpwi r3, 0
/* 80BB8C08  41 82 00 28 */	beq lbl_80BB8C30
lbl_80BB8C0C:
/* 80BB8C0C  7F C3 F3 78 */	mr r3, r30
/* 80BB8C10  7F 04 C3 78 */	mr r4, r24
/* 80BB8C14  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80BB8C18  38 C1 00 40 */	addi r6, r1, 0x40
/* 80BB8C1C  48 00 03 C1 */	bl checkActorInRectangle__12daBmWindow_cFP10fopAc_ac_cPC4cXyzPC4cXyz
/* 80BB8C20  2C 03 00 00 */	cmpwi r3, 0
/* 80BB8C24  41 82 00 0C */	beq lbl_80BB8C30
/* 80BB8C28  7F C3 F3 78 */	mr r3, r30
/* 80BB8C2C  48 00 04 B5 */	bl init_modeBreak__12daBmWindow_cFv
lbl_80BB8C30:
/* 80BB8C30  7F 03 C3 78 */	mr r3, r24
/* 80BB8C34  81 98 06 28 */	lwz r12, 0x628(r24)
/* 80BB8C38  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80BB8C3C  7D 89 03 A6 */	mtctr r12
/* 80BB8C40  4E 80 04 21 */	bctrl 
/* 80BB8C44  2C 03 00 00 */	cmpwi r3, 0
/* 80BB8C48  41 82 00 C4 */	beq lbl_80BB8D0C
/* 80BB8C4C  7F C3 F3 78 */	mr r3, r30
/* 80BB8C50  7F 04 C3 78 */	mr r4, r24
/* 80BB8C54  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80BB8C58  38 C1 00 40 */	addi r6, r1, 0x40
/* 80BB8C5C  48 00 03 81 */	bl checkActorInRectangle__12daBmWindow_cFP10fopAc_ac_cPC4cXyzPC4cXyz
/* 80BB8C60  2C 03 00 00 */	cmpwi r3, 0
/* 80BB8C64  41 82 00 B0 */	beq lbl_80BB8D14
/* 80BB8C68  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 80BB8C6C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80BB8C70  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BB8C74  41 82 00 8C */	beq lbl_80BB8D00
/* 80BB8C78  88 1E 0E DE */	lbz r0, 0xede(r30)
/* 80BB8C7C  28 00 00 00 */	cmplwi r0, 0
/* 80BB8C80  40 82 00 94 */	bne lbl_80BB8D14
/* 80BB8C84  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BB8C88  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BB8C8C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BB8C90  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BB8C94  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80BB8C98  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80BB8C9C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BB8CA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BB8CA4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BB8CA8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BB8CAC  7C 03 07 74 */	extsb r3, r0
/* 80BB8CB0  4B 47 43 BD */	bl dComIfGp_getReverb__Fi
/* 80BB8CB4  7C 67 1B 78 */	mr r7, r3
/* 80BB8CB8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080172@ha */
/* 80BB8CBC  38 03 01 72 */	addi r0, r3, 0x0172 /* 0x00080172@l */
/* 80BB8CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB8CC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB8CC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB8CCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB8CD0  38 81 00 0C */	addi r4, r1, 0xc
/* 80BB8CD4  38 A1 00 34 */	addi r5, r1, 0x34
/* 80BB8CD8  38 C0 00 00 */	li r6, 0
/* 80BB8CDC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BB8CE0  FC 40 08 90 */	fmr f2, f1
/* 80BB8CE4  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80BB8CE8  FC 80 18 90 */	fmr f4, f3
/* 80BB8CEC  39 00 00 00 */	li r8, 0
/* 80BB8CF0  4B 6F 2C 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB8CF4  38 00 00 01 */	li r0, 1
/* 80BB8CF8  98 1E 0E DE */	stb r0, 0xede(r30)
/* 80BB8CFC  48 00 00 18 */	b lbl_80BB8D14
lbl_80BB8D00:
/* 80BB8D00  7F C3 F3 78 */	mr r3, r30
/* 80BB8D04  48 00 03 DD */	bl init_modeBreak__12daBmWindow_cFv
/* 80BB8D08  48 00 00 0C */	b lbl_80BB8D14
lbl_80BB8D0C:
/* 80BB8D0C  38 00 00 00 */	li r0, 0
/* 80BB8D10  98 1E 0E DE */	stb r0, 0xede(r30)
lbl_80BB8D14:
/* 80BB8D14  3B 00 00 00 */	li r24, 0
/* 80BB8D18  3B A0 00 00 */	li r29, 0
lbl_80BB8D1C:
/* 80BB8D1C  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 80BB8D20  7C 7E 1A 14 */	add r3, r30, r3
/* 80BB8D24  4B 4C B7 3D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BB8D28  28 03 00 00 */	cmplwi r3, 0
/* 80BB8D2C  41 82 00 10 */	beq lbl_80BB8D3C
/* 80BB8D30  7F C3 F3 78 */	mr r3, r30
/* 80BB8D34  48 00 03 AD */	bl init_modeBreak__12daBmWindow_cFv
/* 80BB8D38  48 00 00 14 */	b lbl_80BB8D4C
lbl_80BB8D3C:
/* 80BB8D3C  3B 18 00 01 */	addi r24, r24, 1
/* 80BB8D40  2C 18 00 07 */	cmpwi r24, 7
/* 80BB8D44  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80BB8D48  41 80 FF D4 */	blt lbl_80BB8D1C
lbl_80BB8D4C:
/* 80BB8D4C  A0 1E 0E DC */	lhz r0, 0xedc(r30)
/* 80BB8D50  28 00 00 00 */	cmplwi r0, 0
/* 80BB8D54  40 82 01 34 */	bne lbl_80BB8E88
/* 80BB8D58  3C 60 80 BC */	lis r3, l_HIO@ha /* 0x80BB999C@ha */
/* 80BB8D5C  38 63 99 9C */	addi r3, r3, l_HIO@l /* 0x80BB999C@l */
/* 80BB8D60  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BB8D64  D0 1E 0E A0 */	stfs f0, 0xea0(r30)
/* 80BB8D68  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80BB8D6C  D0 1E 0E A8 */	stfs f0, 0xea8(r30)
/* 80BB8D70  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BB8D74  D0 1E 0E A4 */	stfs f0, 0xea4(r30)
/* 80BB8D78  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80BB8D7C  D0 1E 0E AC */	stfs f0, 0xeac(r30)
/* 80BB8D80  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80BB8D84  D0 1E 0E B0 */	stfs f0, 0xeb0(r30)
/* 80BB8D88  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BB8D8C  D0 1E 0E B4 */	stfs f0, 0xeb4(r30)
/* 80BB8D90  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80BB8D94  D0 1E 0E CC */	stfs f0, 0xecc(r30)
/* 80BB8D98  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80BB8D9C  D0 1E 0E C4 */	stfs f0, 0xec4(r30)
/* 80BB8DA0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80BB8DA4  D0 1E 0E C8 */	stfs f0, 0xec8(r30)
/* 80BB8DA8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BB8DAC  D0 1E 0E D0 */	stfs f0, 0xed0(r30)
/* 80BB8DB0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80BB8DB4  D0 1E 0E D4 */	stfs f0, 0xed4(r30)
/* 80BB8DB8  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80BB8DBC  D0 1E 0E D8 */	stfs f0, 0xed8(r30)
/* 80BB8DC0  88 03 00 39 */	lbz r0, 0x39(r3)
/* 80BB8DC4  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 80BB8DC8  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BB8DCC  3C 00 43 30 */	lis r0, 0x4330
/* 80BB8DD0  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BB8DD4  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80BB8DD8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BB8DDC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80BB8DE0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80BB8DE4  4B 6A EB 71 */	bl cM_rndF__Ff
/* 80BB8DE8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80BB8DEC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BB8DF0  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80BB8DF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BB8DF8  FC 00 00 1E */	fctiwz f0, f0
/* 80BB8DFC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80BB8E00  80 81 00 64 */	lwz r4, 0x64(r1)
/* 80BB8E04  3C 60 80 BC */	lis r3, l_HIO@ha /* 0x80BB999C@ha */
/* 80BB8E08  38 63 99 9C */	addi r3, r3, l_HIO@l /* 0x80BB999C@l */
/* 80BB8E0C  88 03 00 38 */	lbz r0, 0x38(r3)
/* 80BB8E10  7C 00 22 14 */	add r0, r0, r4
/* 80BB8E14  B0 1E 0E DC */	sth r0, 0xedc(r30)
/* 80BB8E18  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BB8E1C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BB8E20  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BB8E24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BB8E28  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80BB8E2C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BB8E30  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BB8E34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BB8E38  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BB8E3C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BB8E40  7C 03 07 74 */	extsb r3, r0
/* 80BB8E44  4B 47 42 29 */	bl dComIfGp_getReverb__Fi
/* 80BB8E48  7C 67 1B 78 */	mr r7, r3
/* 80BB8E4C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080171@ha */
/* 80BB8E50  38 03 01 71 */	addi r0, r3, 0x0171 /* 0x00080171@l */
/* 80BB8E54  90 01 00 08 */	stw r0, 8(r1)
/* 80BB8E58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB8E5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB8E60  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB8E64  38 81 00 08 */	addi r4, r1, 8
/* 80BB8E68  38 A1 00 28 */	addi r5, r1, 0x28
/* 80BB8E6C  38 C0 00 00 */	li r6, 0
/* 80BB8E70  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BB8E74  FC 40 08 90 */	fmr f2, f1
/* 80BB8E78  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80BB8E7C  FC 80 18 90 */	fmr f4, f3
/* 80BB8E80  39 00 00 00 */	li r8, 0
/* 80BB8E84  4B 6F 2B 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BB8E88:
/* 80BB8E88  A0 7E 0E DC */	lhz r3, 0xedc(r30)
/* 80BB8E8C  28 03 00 00 */	cmplwi r3, 0
/* 80BB8E90  41 82 00 0C */	beq lbl_80BB8E9C
/* 80BB8E94  38 03 FF FF */	addi r0, r3, -1
/* 80BB8E98  B0 1E 0E DC */	sth r0, 0xedc(r30)
lbl_80BB8E9C:
/* 80BB8E9C  3A E0 00 00 */	li r23, 0
/* 80BB8EA0  3B A0 00 00 */	li r29, 0
/* 80BB8EA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB8EA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB8EAC  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80BB8EB0  C3 9F 00 84 */	lfs f28, 0x84(r31)
/* 80BB8EB4  C3 BF 00 9C */	lfs f29, 0x9c(r31)
/* 80BB8EB8  CB DF 00 B0 */	lfd f30, 0xb0(r31)
/* 80BB8EBC  3F 60 43 30 */	lis r27, 0x4330
/* 80BB8EC0  C3 FF 00 A0 */	lfs f31, 0xa0(r31)
/* 80BB8EC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB8EC8  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80BB8ECC:
/* 80BB8ECC  D3 81 00 1C */	stfs f28, 0x1c(r1)
/* 80BB8ED0  D3 81 00 20 */	stfs f28, 0x20(r1)
/* 80BB8ED4  D3 81 00 24 */	stfs f28, 0x24(r1)
/* 80BB8ED8  6E E0 80 00 */	xoris r0, r23, 0x8000
/* 80BB8EDC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BB8EE0  93 61 00 60 */	stw r27, 0x60(r1)
/* 80BB8EE4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80BB8EE8  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80BB8EEC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80BB8EF0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BB8EF4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BB8EF8  7F 83 E3 78 */	mr r3, r28
/* 80BB8EFC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80BB8F00  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80BB8F04  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80BB8F08  4B 45 33 01 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80BB8F0C  7F 83 E3 78 */	mr r3, r28
/* 80BB8F10  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BB8F14  7C 85 23 78 */	mr r5, r4
/* 80BB8F18  4B 78 DE 55 */	bl PSMTXMultVec
/* 80BB8F1C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BB8F20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB8F24  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BB8F28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB8F2C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BB8F30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BB8F34  38 61 00 10 */	addi r3, r1, 0x10
/* 80BB8F38  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BB8F3C  7C 65 1B 78 */	mr r5, r3
/* 80BB8F40  4B 78 E1 51 */	bl PSVECAdd
/* 80BB8F44  7F 1E EA 14 */	add r24, r30, r29
/* 80BB8F48  3B 38 07 10 */	addi r25, r24, 0x710
/* 80BB8F4C  7F 23 CB 78 */	mr r3, r25
/* 80BB8F50  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80BB8F54  4B 6B 62 AD */	bl SetR__8cM3dGCylFf
/* 80BB8F58  7F 23 CB 78 */	mr r3, r25
/* 80BB8F5C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80BB8F60  4B 6B 62 99 */	bl SetH__8cM3dGCylFf
/* 80BB8F64  7F 23 CB 78 */	mr r3, r25
/* 80BB8F68  38 81 00 10 */	addi r4, r1, 0x10
/* 80BB8F6C  4B 6B 62 71 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BB8F70  7F 43 D3 78 */	mr r3, r26
/* 80BB8F74  3B 18 05 EC */	addi r24, r24, 0x5ec
/* 80BB8F78  7F 04 C3 78 */	mr r4, r24
/* 80BB8F7C  4B 6A BC 2D */	bl Set__4cCcSFP8cCcD_Obj
/* 80BB8F80  7F 03 C3 78 */	mr r3, r24
/* 80BB8F84  81 98 00 3C */	lwz r12, 0x3c(r24)
/* 80BB8F88  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BB8F8C  7D 89 03 A6 */	mtctr r12
/* 80BB8F90  4E 80 04 21 */	bctrl 
/* 80BB8F94  3A F7 00 01 */	addi r23, r23, 1
/* 80BB8F98  2C 17 00 07 */	cmpwi r23, 7
/* 80BB8F9C  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80BB8FA0  41 80 FF 2C */	blt lbl_80BB8ECC
/* 80BB8FA4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80BB8FA8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80BB8FAC  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80BB8FB0  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80BB8FB4  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80BB8FB8  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80BB8FBC  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 80BB8FC0  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 80BB8FC4  39 61 00 90 */	addi r11, r1, 0x90
/* 80BB8FC8  4B 7A 92 49 */	bl _restgpr_23
/* 80BB8FCC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80BB8FD0  7C 08 03 A6 */	mtlr r0
/* 80BB8FD4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80BB8FD8  4E 80 00 20 */	blr 
