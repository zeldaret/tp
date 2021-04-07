lbl_808239F8:
/* 808239F8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 808239FC  7C 08 02 A6 */	mflr r0
/* 80823A00  90 01 00 54 */	stw r0, 0x54(r1)
/* 80823A04  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80823A08  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80823A0C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80823A10  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80823A14  39 61 00 30 */	addi r11, r1, 0x30
/* 80823A18  4B B3 E7 C5 */	bl _savegpr_29
/* 80823A1C  7C 7E 1B 78 */	mr r30, r3
/* 80823A20  3C 60 80 83 */	lis r3, lit_3902@ha /* 0x80828850@ha */
/* 80823A24  3B E3 88 50 */	addi r31, r3, lit_3902@l /* 0x80828850@l */
/* 80823A28  38 00 00 02 */	li r0, 2
/* 80823A2C  98 1E 0E 94 */	stb r0, 0xe94(r30)
/* 80823A30  88 1E 06 7C */	lbz r0, 0x67c(r30)
/* 80823A34  7C 00 07 74 */	extsb r0, r0
/* 80823A38  2C 00 00 0A */	cmpwi r0, 0xa
/* 80823A3C  41 82 01 64 */	beq lbl_80823BA0
/* 80823A40  40 80 00 1C */	bge lbl_80823A5C
/* 80823A44  2C 00 00 01 */	cmpwi r0, 1
/* 80823A48  41 82 00 8C */	beq lbl_80823AD4
/* 80823A4C  40 80 01 54 */	bge lbl_80823BA0
/* 80823A50  2C 00 00 00 */	cmpwi r0, 0
/* 80823A54  40 80 00 14 */	bge lbl_80823A68
/* 80823A58  48 00 01 48 */	b lbl_80823BA0
lbl_80823A5C:
/* 80823A5C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80823A60  41 82 00 DC */	beq lbl_80823B3C
/* 80823A64  48 00 01 3C */	b lbl_80823BA0
lbl_80823A68:
/* 80823A68  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80823A6C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80823A70  FC 00 00 1E */	fctiwz f0, f0
/* 80823A74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80823A78  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80823A7C  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 80823A80  2C 00 00 00 */	cmpwi r0, 0
/* 80823A84  40 82 01 1C */	bne lbl_80823BA0
/* 80823A88  2C 03 00 09 */	cmpwi r3, 9
/* 80823A8C  40 82 01 14 */	bne lbl_80823BA0
/* 80823A90  38 00 00 01 */	li r0, 1
/* 80823A94  98 1E 06 7C */	stb r0, 0x67c(r30)
/* 80823A98  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80823A9C  4B A4 3E B9 */	bl cM_rndF__Ff
/* 80823AA0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80823AA4  EC 00 08 2A */	fadds f0, f0, f1
/* 80823AA8  FC 00 00 1E */	fctiwz f0, f0
/* 80823AAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80823AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80823AB4  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80823AB8  7F C3 F3 78 */	mr r3, r30
/* 80823ABC  38 80 00 0C */	li r4, 0xc
/* 80823AC0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80823AC4  38 A0 00 02 */	li r5, 2
/* 80823AC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80823ACC  4B FF EC C5 */	bl anm_init__FP10e_yr_classifUcf
/* 80823AD0  48 00 00 D0 */	b lbl_80823BA0
lbl_80823AD4:
/* 80823AD4  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 80823AD8  2C 00 00 00 */	cmpwi r0, 0
/* 80823ADC  40 82 00 C4 */	bne lbl_80823BA0
/* 80823AE0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80823AE4  C0 1E 06 84 */	lfs f0, 0x684(r30)
/* 80823AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80823AEC  40 80 00 B4 */	bge lbl_80823BA0
/* 80823AF0  38 00 00 00 */	li r0, 0
/* 80823AF4  98 1E 06 7C */	stb r0, 0x67c(r30)
/* 80823AF8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80823AFC  4B A4 3E 59 */	bl cM_rndF__Ff
/* 80823B00  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80823B04  EC 00 08 2A */	fadds f0, f0, f1
/* 80823B08  FC 00 00 1E */	fctiwz f0, f0
/* 80823B0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80823B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80823B14  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80823B18  7F C3 F3 78 */	mr r3, r30
/* 80823B1C  38 80 00 08 */	li r4, 8
/* 80823B20  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80823B24  38 A0 00 02 */	li r5, 2
/* 80823B28  3C C0 80 83 */	lis r6, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80823B2C  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80823B30  C0 46 00 28 */	lfs f2, 0x28(r6)
/* 80823B34  4B FF EC 5D */	bl anm_init__FP10e_yr_classifUcf
/* 80823B38  48 00 00 68 */	b lbl_80823BA0
lbl_80823B3C:
/* 80823B3C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80823B40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80823B44  FC 00 00 1E */	fctiwz f0, f0
/* 80823B48  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80823B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80823B50  2C 00 00 22 */	cmpwi r0, 0x22
/* 80823B54  40 82 00 4C */	bne lbl_80823BA0
/* 80823B58  38 00 00 00 */	li r0, 0
/* 80823B5C  98 1E 06 7C */	stb r0, 0x67c(r30)
/* 80823B60  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80823B64  4B A4 3D F1 */	bl cM_rndF__Ff
/* 80823B68  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80823B6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80823B70  FC 00 00 1E */	fctiwz f0, f0
/* 80823B74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80823B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80823B7C  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80823B80  7F C3 F3 78 */	mr r3, r30
/* 80823B84  38 80 00 08 */	li r4, 8
/* 80823B88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80823B8C  38 A0 00 02 */	li r5, 2
/* 80823B90  3C C0 80 83 */	lis r6, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80823B94  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80823B98  C0 46 00 28 */	lfs f2, 0x28(r6)
/* 80823B9C  4B FF EB F5 */	bl anm_init__FP10e_yr_classifUcf
lbl_80823BA0:
/* 80823BA0  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 80823BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80823BA8  41 82 00 08 */	beq lbl_80823BB0
/* 80823BAC  48 00 01 60 */	b lbl_80823D0C
lbl_80823BB0:
/* 80823BB0  A8 1E 06 A6 */	lha r0, 0x6a6(r30)
/* 80823BB4  2C 00 00 00 */	cmpwi r0, 0
/* 80823BB8  40 82 01 54 */	bne lbl_80823D0C
/* 80823BBC  3C 60 80 83 */	lis r3, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80823BC0  3B A3 8D BC */	addi r29, r3, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80823BC4  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80823BC8  4B A4 3D C5 */	bl cM_rndFX__Ff
/* 80823BCC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80823BD0  EC 20 08 2A */	fadds f1, f0, f1
/* 80823BD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80823BD8  EF E1 00 28 */	fsubs f31, f1, f0
/* 80823BDC  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80823BE0  4B A4 3D AD */	bl cM_rndFX__Ff
/* 80823BE4  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80823BE8  EC 20 08 2A */	fadds f1, f0, f1
/* 80823BEC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80823BF0  EF C1 00 28 */	fsubs f30, f1, f0
/* 80823BF4  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80823BF8  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80823BFC  EC 21 00 2A */	fadds f1, f1, f0
/* 80823C00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80823C04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80823C08  40 81 00 0C */	ble lbl_80823C14
/* 80823C0C  FC 00 08 34 */	frsqrte f0, f1
/* 80823C10  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80823C14:
/* 80823C14  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80823C18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80823C1C  40 81 00 F0 */	ble lbl_80823D0C
/* 80823C20  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80823C24  4B A4 3D 31 */	bl cM_rndF__Ff
/* 80823C28  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80823C2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80823C30  FC 00 00 1E */	fctiwz f0, f0
/* 80823C34  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80823C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80823C3C  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 80823C40  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80823C44  EC 1F 00 2A */	fadds f0, f31, f0
/* 80823C48  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 80823C4C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80823C50  4B A4 3D 05 */	bl cM_rndF__Ff
/* 80823C54  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80823C58  EC 00 08 2A */	fadds f0, f0, f1
/* 80823C5C  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 80823C60  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80823C64  EC 1E 00 2A */	fadds f0, f30, f0
/* 80823C68  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80823C6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80823C70  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 80823C74  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80823C78  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 80823C7C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80823C80  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 80823C84  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80823C88  4B A4 3C CD */	bl cM_rndF__Ff
/* 80823C8C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80823C90  EC 00 08 2A */	fadds f0, f0, f1
/* 80823C94  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 80823C98  3C 60 80 83 */	lis r3, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80823C9C  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80823CA0  88 03 00 06 */	lbz r0, 6(r3)
/* 80823CA4  28 00 00 00 */	cmplwi r0, 0
/* 80823CA8  40 82 00 1C */	bne lbl_80823CC4
/* 80823CAC  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 80823CB0  2C 00 00 00 */	cmpwi r0, 0
/* 80823CB4  40 82 00 58 */	bne lbl_80823D0C
/* 80823CB8  88 1E 06 6B */	lbz r0, 0x66b(r30)
/* 80823CBC  28 00 00 00 */	cmplwi r0, 0
/* 80823CC0  40 82 00 4C */	bne lbl_80823D0C
lbl_80823CC4:
/* 80823CC4  7F C3 F3 78 */	mr r3, r30
/* 80823CC8  4B FF EC 8D */	bl e_yr_player_view_check__FP10e_yr_class
/* 80823CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80823CD0  41 82 00 3C */	beq lbl_80823D0C
/* 80823CD4  38 00 00 03 */	li r0, 3
/* 80823CD8  98 1E 06 69 */	stb r0, 0x669(r30)
/* 80823CDC  38 00 00 00 */	li r0, 0
/* 80823CE0  98 1E 06 7D */	stb r0, 0x67d(r30)
/* 80823CE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BC@ha */
/* 80823CE8  38 03 01 BC */	addi r0, r3, 0x01BC /* 0x000701BC@l */
/* 80823CEC  90 01 00 08 */	stw r0, 8(r1)
/* 80823CF0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80823CF4  38 81 00 08 */	addi r4, r1, 8
/* 80823CF8  38 A0 FF FF */	li r5, -1
/* 80823CFC  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80823D00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80823D04  7D 89 03 A6 */	mtctr r12
/* 80823D08  4E 80 04 21 */	bctrl 
lbl_80823D0C:
/* 80823D0C  7F C3 F3 78 */	mr r3, r30
/* 80823D10  4B FF F1 FD */	bl e_yr_pos_move__FP10e_yr_class
/* 80823D14  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80823D18  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80823D1C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80823D20  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80823D24  39 61 00 30 */	addi r11, r1, 0x30
/* 80823D28  4B B3 E5 01 */	bl _restgpr_29
/* 80823D2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80823D30  7C 08 03 A6 */	mtlr r0
/* 80823D34  38 21 00 50 */	addi r1, r1, 0x50
/* 80823D38  4E 80 00 20 */	blr 
