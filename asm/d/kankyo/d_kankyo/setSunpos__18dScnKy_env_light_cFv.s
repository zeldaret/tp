lbl_8019F788:
/* 8019F788  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8019F78C  7C 08 02 A6 */	mflr r0
/* 8019F790  90 01 00 54 */	stw r0, 0x54(r1)
/* 8019F794  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8019F798  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8019F79C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8019F7A0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8019F7A4  39 61 00 30 */	addi r11, r1, 0x30
/* 8019F7A8  48 1C 2A 35 */	bl _savegpr_29
/* 8019F7AC  7C 7D 1B 78 */	mr r29, r3
/* 8019F7B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8019F7B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8019F7B8  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8019F7BC  28 1E 00 00 */	cmplwi r30, 0
/* 8019F7C0  41 82 02 20 */	beq lbl_8019F9E0
/* 8019F7C4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8019F7C8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 8019F7CC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 8019F7D0  38 84 01 82 */	addi r4, r4, 0x182
/* 8019F7D4  48 1C 91 C1 */	bl strcmp
/* 8019F7D8  2C 03 00 00 */	cmpwi r3, 0
/* 8019F7DC  41 82 02 04 */	beq lbl_8019F9E0
/* 8019F7E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F7E4  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F7E8  C0 7F 12 44 */	lfs f3, 0x1244(r31)
/* 8019F7EC  C0 42 A2 2C */	lfs f2, lit_4442(r2)
/* 8019F7F0  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8019F7F4  4C 41 13 82 */	cror 2, 1, 2
/* 8019F7F8  40 82 00 2C */	bne lbl_8019F824
/* 8019F7FC  C0 22 A2 C8 */	lfs f1, lit_5613(r2)
/* 8019F800  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8019F804  4C 40 13 82 */	cror 2, 0, 2
/* 8019F808  40 82 00 1C */	bne lbl_8019F824
/* 8019F80C  4B FF E0 6D */	bl get_parcent__Ffff
/* 8019F810  C0 42 A2 CC */	lfs f2, lit_5614(r2)
/* 8019F814  C0 02 A2 C0 */	lfs f0, lit_5555(r2)
/* 8019F818  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F81C  EF E2 00 2A */	fadds f31, f2, f0
/* 8019F820  48 00 00 44 */	b lbl_8019F864
lbl_8019F824:
/* 8019F824  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 8019F828  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8019F82C  40 80 00 0C */	bge lbl_8019F838
/* 8019F830  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F834  EC 63 00 2A */	fadds f3, f3, f0
lbl_8019F838:
/* 8019F838  C0 22 A2 D0 */	lfs f1, lit_5615(r2)
/* 8019F83C  C0 42 A2 C8 */	lfs f2, lit_5613(r2)
/* 8019F840  4B FF E0 39 */	bl get_parcent__Ffff
/* 8019F844  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 8019F848  C0 02 A2 D4 */	lfs f0, lit_5616(r2)
/* 8019F84C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F850  EF E2 00 2A */	fadds f31, f2, f0
/* 8019F854  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F858  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8019F85C  40 81 00 08 */	ble lbl_8019F864
/* 8019F860  EF FF 00 28 */	fsubs f31, f31, f0
lbl_8019F864:
/* 8019F864  C0 22 A2 40 */	lfs f1, lit_4503(r2)
/* 8019F868  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 8019F86C  EC 61 00 2A */	fadds f3, f1, f0
/* 8019F870  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F874  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8019F878  4C 41 13 82 */	cror 2, 1, 2
/* 8019F87C  40 82 00 08 */	bne lbl_8019F884
/* 8019F880  EC 63 00 28 */	fsubs f3, f3, f0
lbl_8019F884:
/* 8019F884  C0 42 A2 2C */	lfs f2, lit_4442(r2)
/* 8019F888  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8019F88C  4C 41 13 82 */	cror 2, 1, 2
/* 8019F890  40 82 00 2C */	bne lbl_8019F8BC
/* 8019F894  C0 22 A2 C8 */	lfs f1, lit_5613(r2)
/* 8019F898  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8019F89C  4C 40 13 82 */	cror 2, 0, 2
/* 8019F8A0  40 82 00 1C */	bne lbl_8019F8BC
/* 8019F8A4  4B FF DF D5 */	bl get_parcent__Ffff
/* 8019F8A8  C0 42 A2 CC */	lfs f2, lit_5614(r2)
/* 8019F8AC  C0 02 A2 C0 */	lfs f0, lit_5555(r2)
/* 8019F8B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F8B4  EF C2 00 2A */	fadds f30, f2, f0
/* 8019F8B8  48 00 00 44 */	b lbl_8019F8FC
lbl_8019F8BC:
/* 8019F8BC  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 8019F8C0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8019F8C4  40 80 00 0C */	bge lbl_8019F8D0
/* 8019F8C8  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F8CC  EC 63 00 2A */	fadds f3, f3, f0
lbl_8019F8D0:
/* 8019F8D0  C0 22 A2 D0 */	lfs f1, lit_5615(r2)
/* 8019F8D4  C0 42 A2 C8 */	lfs f2, lit_5613(r2)
/* 8019F8D8  4B FF DF A1 */	bl get_parcent__Ffff
/* 8019F8DC  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 8019F8E0  C0 02 A2 D4 */	lfs f0, lit_5616(r2)
/* 8019F8E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F8E8  EF C2 00 2A */	fadds f30, f2, f0
/* 8019F8EC  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F8F0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8019F8F4  40 81 00 08 */	ble lbl_8019F8FC
/* 8019F8F8  EF DE 00 28 */	fsubs f30, f30, f0
lbl_8019F8FC:
/* 8019F8FC  C0 02 A2 D8 */	lfs f0, lit_5617(r2)
/* 8019F900  EF E0 07 F2 */	fmuls f31, f0, f31
/* 8019F904  FC 20 F8 90 */	fmr f1, f31
/* 8019F908  48 1C CC 89 */	bl sin
/* 8019F90C  FC 20 08 18 */	frsp f1, f1
/* 8019F910  C0 02 A2 04 */	lfs f0, lit_4362(r2)
/* 8019F914  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F918  D0 01 00 08 */	stfs f0, 8(r1)
/* 8019F91C  FC 20 F8 90 */	fmr f1, f31
/* 8019F920  48 1C C7 09 */	bl cos
/* 8019F924  FC 20 08 18 */	frsp f1, f1
/* 8019F928  C0 02 A2 04 */	lfs f0, lit_4362(r2)
/* 8019F92C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F930  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8019F934  FC 20 F8 90 */	fmr f1, f31
/* 8019F938  48 1C C6 F1 */	bl cos
/* 8019F93C  FC 20 08 18 */	frsp f1, f1
/* 8019F940  C0 02 A2 DC */	lfs f0, lit_5618(r2)
/* 8019F944  EC 40 00 72 */	fmuls f2, f0, f1
/* 8019F948  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8019F94C  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8019F950  C0 01 00 08 */	lfs f0, 8(r1)
/* 8019F954  EC 01 00 2A */	fadds f0, f1, f0
/* 8019F958  D0 1D 10 88 */	stfs f0, 0x1088(r29)
/* 8019F95C  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 8019F960  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8019F964  EC 01 00 28 */	fsubs f0, f1, f0
/* 8019F968  D0 1D 10 8C */	stfs f0, 0x108c(r29)
/* 8019F96C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8019F970  EC 00 10 2A */	fadds f0, f0, f2
/* 8019F974  D0 1D 10 90 */	stfs f0, 0x1090(r29)
/* 8019F978  C0 02 A2 D8 */	lfs f0, lit_5617(r2)
/* 8019F97C  EF C0 07 B2 */	fmuls f30, f0, f30
/* 8019F980  FC 20 F0 90 */	fmr f1, f30
/* 8019F984  48 1C CC 0D */	bl sin
/* 8019F988  FC 20 08 18 */	frsp f1, f1
/* 8019F98C  C0 02 A2 04 */	lfs f0, lit_4362(r2)
/* 8019F990  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F994  D0 01 00 08 */	stfs f0, 8(r1)
/* 8019F998  FC 20 F0 90 */	fmr f1, f30
/* 8019F99C  48 1C C6 8D */	bl cos
/* 8019F9A0  FC 20 08 18 */	frsp f1, f1
/* 8019F9A4  C0 02 A2 04 */	lfs f0, lit_4362(r2)
/* 8019F9A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019F9AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8019F9B0  FC 20 F0 90 */	fmr f1, f30
/* 8019F9B4  48 1C C6 75 */	bl cos
/* 8019F9B8  FC 20 08 18 */	frsp f1, f1
/* 8019F9BC  C0 02 A2 DC */	lfs f0, lit_5618(r2)
/* 8019F9C0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8019F9C4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8019F9C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8019F9CC  D0 1D 10 94 */	stfs f0, 0x1094(r29)
/* 8019F9D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8019F9D4  FC 00 00 50 */	fneg f0, f0
/* 8019F9D8  D0 1D 10 98 */	stfs f0, 0x1098(r29)
/* 8019F9DC  D0 3D 10 9C */	stfs f1, 0x109c(r29)
lbl_8019F9E0:
/* 8019F9E0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8019F9E4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8019F9E8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8019F9EC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8019F9F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8019F9F4  48 1C 28 35 */	bl _restgpr_29
/* 8019F9F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8019F9FC  7C 08 03 A6 */	mtlr r0
/* 8019FA00  38 21 00 50 */	addi r1, r1, 0x50
/* 8019FA04  4E 80 00 20 */	blr 
