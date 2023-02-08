lbl_80C7F904:
/* 80C7F904  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C7F908  7C 08 02 A6 */	mflr r0
/* 80C7F90C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7F910  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C7F914  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C7F918  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7F91C  4B 6E 28 BD */	bl _savegpr_28
/* 80C7F920  7C 7E 1B 78 */	mr r30, r3
/* 80C7F924  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7F928  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7F92C  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80C7F930  48 00 02 75 */	bl getSearchDistance__12daObjLv6Bm_cFv
/* 80C7F934  FF E0 08 90 */	fmr f31, f1
/* 80C7F938  3B E0 FF FF */	li r31, -1
/* 80C7F93C  38 00 00 00 */	li r0, 0
/* 80C7F940  98 1E 0A 15 */	stb r0, 0xa15(r30)
/* 80C7F944  7F C3 F3 78 */	mr r3, r30
/* 80C7F948  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C7F94C  4B 39 B0 19 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C7F950  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C7F954  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C7F958  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C7F95C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C7F960  40 81 00 0C */	ble lbl_80C7F96C
/* 80C7F964  38 60 FF FF */	li r3, -1
/* 80C7F968  48 00 00 CC */	b lbl_80C7FA34
lbl_80C7F96C:
/* 80C7F96C  FC 00 02 10 */	fabs f0, f0
/* 80C7F970  FC 80 00 18 */	frsp f4, f0
/* 80C7F974  3C 60 80 C8 */	lis r3, l_eye_offset@ha /* 0x80C81C2C@ha */
/* 80C7F978  38 63 1C 2C */	addi r3, r3, l_eye_offset@l /* 0x80C81C2C@l */
/* 80C7F97C  C0 63 00 04 */	lfs f3, 4(r3)
/* 80C7F980  3C 60 80 C8 */	lis r3, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7F984  C0 43 1C 48 */	lfs f2, lit_3855@l(r3)  /* 0x80C81C48@l */
/* 80C7F988  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80C7F98C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C7F990  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C7F994  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80C7F998  40 81 00 0C */	ble lbl_80C7F9A4
/* 80C7F99C  38 60 FF FF */	li r3, -1
/* 80C7F9A0  48 00 00 94 */	b lbl_80C7FA34
lbl_80C7F9A4:
/* 80C7F9A4  7F C3 F3 78 */	mr r3, r30
/* 80C7F9A8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C7F9AC  4B 39 AD 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C7F9B0  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80C7F9B4  A8 1E 09 C2 */	lha r0, 0x9c2(r30)
/* 80C7F9B8  7C 00 18 50 */	subf r0, r0, r3
/* 80C7F9BC  7C 04 00 50 */	subf r0, r4, r0
/* 80C7F9C0  7C 03 07 34 */	extsh r3, r0
/* 80C7F9C4  4B 6E 57 0D */	bl abs
/* 80C7F9C8  7C 60 07 34 */	extsh r0, r3
/* 80C7F9CC  2C 00 30 D4 */	cmpwi r0, 0x30d4
/* 80C7F9D0  40 80 00 08 */	bge lbl_80C7F9D8
/* 80C7F9D4  3B E0 00 00 */	li r31, 0
lbl_80C7F9D8:
/* 80C7F9D8  7F E0 07 75 */	extsb. r0, r31
/* 80C7F9DC  40 82 00 54 */	bne lbl_80C7FA30
/* 80C7F9E0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80C7F9E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C7F9E8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80C7F9EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C7F9F0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80C7F9F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C7F9F8  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80C7F9FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C7FA00  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80C7FA04  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C7FA08  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80C7FA0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C7FA10  38 61 00 14 */	addi r3, r1, 0x14
/* 80C7FA14  38 81 00 08 */	addi r4, r1, 8
/* 80C7FA18  7F C5 F3 78 */	mr r5, r30
/* 80C7FA1C  4B 39 E2 4D */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C7FA20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7FA24  41 82 00 0C */	beq lbl_80C7FA30
/* 80C7FA28  38 00 00 01 */	li r0, 1
/* 80C7FA2C  98 1E 0A 15 */	stb r0, 0xa15(r30)
lbl_80C7FA30:
/* 80C7FA30  7F E3 FB 78 */	mr r3, r31
lbl_80C7FA34:
/* 80C7FA34  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C7FA38  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C7FA3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7FA40  4B 6E 27 E5 */	bl _restgpr_28
/* 80C7FA44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7FA48  7C 08 03 A6 */	mtlr r0
/* 80C7FA4C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C7FA50  4E 80 00 20 */	blr 
