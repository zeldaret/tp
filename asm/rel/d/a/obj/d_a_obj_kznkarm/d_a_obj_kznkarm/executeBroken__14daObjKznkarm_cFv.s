lbl_80C4F960:
/* 80C4F960  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C4F964  7C 08 02 A6 */	mflr r0
/* 80C4F968  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4F96C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C4F970  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C4F974  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C4F978  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C4F97C  7C 7F 1B 78 */	mr r31, r3
/* 80C4F980  3C 60 80 C5 */	lis r3, M_attr__14daObjKznkarm_c@ha /* 0x80C50D08@ha */
/* 80C4F984  3B C3 0D 08 */	addi r30, r3, M_attr__14daObjKznkarm_c@l /* 0x80C50D08@l */
/* 80C4F988  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80C4F98C  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80C4F990  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4F994  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C4F998  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80C4F99C  C0 3F 05 34 */	lfs f1, 0x534(r31)
/* 80C4F9A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C4F9A4  40 80 00 08 */	bge lbl_80C4F9AC
/* 80C4F9A8  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
lbl_80C4F9AC:
/* 80C4F9AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C4F9B0  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80C4F9B4  7C 65 1B 78 */	mr r5, r3
/* 80C4F9B8  4B 6F 76 D9 */	bl PSVECAdd
/* 80C4F9BC  88 7F 07 B0 */	lbz r3, 0x7b0(r31)
/* 80C4F9C0  28 03 00 00 */	cmplwi r3, 0
/* 80C4F9C4  41 82 00 0C */	beq lbl_80C4F9D0
/* 80C4F9C8  38 03 FF FF */	addi r0, r3, -1
/* 80C4F9CC  98 1F 07 B0 */	stb r0, 0x7b0(r31)
lbl_80C4F9D0:
/* 80C4F9D0  88 1F 07 B0 */	lbz r0, 0x7b0(r31)
/* 80C4F9D4  28 00 00 00 */	cmplwi r0, 0
/* 80C4F9D8  40 82 01 78 */	bne lbl_80C4FB50
/* 80C4F9DC  C3 FF 06 4C */	lfs f31, 0x64c(r31)
/* 80C4F9E0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C4F9E4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80C4F9E8  40 80 00 2C */	bge lbl_80C4FA14
/* 80C4F9EC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80C4F9F0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80C4F9F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C4F9F8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C4F9FC  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80C4FA00  7C 64 1B 78 */	mr r4, r3
/* 80C4FA04  38 BE 00 00 */	addi r5, r30, 0
/* 80C4FA08  C0 25 00 08 */	lfs f1, 8(r5)
/* 80C4FA0C  4B 6F 76 CD */	bl PSVECScale
/* 80C4FA10  D3 FF 04 D4 */	stfs f31, 0x4d4(r31)
lbl_80C4FA14:
/* 80C4FA14  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80C4FA18  4B 6F 77 21 */	bl PSVECSquareMag
/* 80C4FA1C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80C4FA20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4FA24  40 81 00 58 */	ble lbl_80C4FA7C
/* 80C4FA28  FC 00 08 34 */	frsqrte f0, f1
/* 80C4FA2C  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80C4FA30  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4FA34  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80C4FA38  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4FA3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4FA40  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4FA44  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4FA48  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4FA4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4FA50  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4FA54  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4FA58  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4FA5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4FA60  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4FA64  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4FA68  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4FA6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4FA70  FC 21 00 32 */	fmul f1, f1, f0
/* 80C4FA74  FC 20 08 18 */	frsp f1, f1
/* 80C4FA78  48 00 00 88 */	b lbl_80C4FB00
lbl_80C4FA7C:
/* 80C4FA7C  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80C4FA80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4FA84  40 80 00 10 */	bge lbl_80C4FA94
/* 80C4FA88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4FA8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C4FA90  48 00 00 70 */	b lbl_80C4FB00
lbl_80C4FA94:
/* 80C4FA94  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C4FA98  80 81 00 08 */	lwz r4, 8(r1)
/* 80C4FA9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4FAA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4FAA4  7C 03 00 00 */	cmpw r3, r0
/* 80C4FAA8  41 82 00 14 */	beq lbl_80C4FABC
/* 80C4FAAC  40 80 00 40 */	bge lbl_80C4FAEC
/* 80C4FAB0  2C 03 00 00 */	cmpwi r3, 0
/* 80C4FAB4  41 82 00 20 */	beq lbl_80C4FAD4
/* 80C4FAB8  48 00 00 34 */	b lbl_80C4FAEC
lbl_80C4FABC:
/* 80C4FABC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4FAC0  41 82 00 0C */	beq lbl_80C4FACC
/* 80C4FAC4  38 00 00 01 */	li r0, 1
/* 80C4FAC8  48 00 00 28 */	b lbl_80C4FAF0
lbl_80C4FACC:
/* 80C4FACC  38 00 00 02 */	li r0, 2
/* 80C4FAD0  48 00 00 20 */	b lbl_80C4FAF0
lbl_80C4FAD4:
/* 80C4FAD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4FAD8  41 82 00 0C */	beq lbl_80C4FAE4
/* 80C4FADC  38 00 00 05 */	li r0, 5
/* 80C4FAE0  48 00 00 10 */	b lbl_80C4FAF0
lbl_80C4FAE4:
/* 80C4FAE4  38 00 00 03 */	li r0, 3
/* 80C4FAE8  48 00 00 08 */	b lbl_80C4FAF0
lbl_80C4FAEC:
/* 80C4FAEC  38 00 00 04 */	li r0, 4
lbl_80C4FAF0:
/* 80C4FAF0  2C 00 00 01 */	cmpwi r0, 1
/* 80C4FAF4  40 82 00 0C */	bne lbl_80C4FB00
/* 80C4FAF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C4FAFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C4FB00:
/* 80C4FB00  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80C4FB04  FC 00 02 10 */	fabs f0, f0
/* 80C4FB08  FC 00 00 18 */	frsp f0, f0
/* 80C4FB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4FB10  40 80 00 40 */	bge lbl_80C4FB50
/* 80C4FB14  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80C4FB18  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80C4FB1C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C4FB20  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80C4FB24  38 60 00 00 */	li r3, 0
/* 80C4FB28  B0 7F 07 A8 */	sth r3, 0x7a8(r31)
/* 80C4FB2C  B0 7F 07 AA */	sth r3, 0x7aa(r31)
/* 80C4FB30  B0 7F 07 AC */	sth r3, 0x7ac(r31)
/* 80C4FB34  38 00 40 00 */	li r0, 0x4000
/* 80C4FB38  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C4FB3C  B0 7F 04 E8 */	sth r3, 0x4e8(r31)
/* 80C4FB40  D3 FF 04 D4 */	stfs f31, 0x4d4(r31)
/* 80C4FB44  7F E3 FB 78 */	mr r3, r31
/* 80C4FB48  38 80 00 03 */	li r4, 3
/* 80C4FB4C  4B FF FD 0D */	bl setAction__14daObjKznkarm_cFQ214daObjKznkarm_c6Mode_e
lbl_80C4FB50:
/* 80C4FB50  A8 7F 04 E4 */	lha r3, 0x4e4(r31)
/* 80C4FB54  A8 1F 07 A8 */	lha r0, 0x7a8(r31)
/* 80C4FB58  7C 03 02 14 */	add r0, r3, r0
/* 80C4FB5C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C4FB60  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80C4FB64  A8 1F 07 AA */	lha r0, 0x7aa(r31)
/* 80C4FB68  7C 03 02 14 */	add r0, r3, r0
/* 80C4FB6C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C4FB70  A8 7F 04 E8 */	lha r3, 0x4e8(r31)
/* 80C4FB74  A8 1F 07 AC */	lha r0, 0x7ac(r31)
/* 80C4FB78  7C 03 02 14 */	add r0, r3, r0
/* 80C4FB7C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80C4FB80  7F E3 FB 78 */	mr r3, r31
/* 80C4FB84  48 00 0B 85 */	bl setBaseMtx__14daObjKznkarm_cFv
/* 80C4FB88  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C4FB8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4FB90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4FB94  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C4FB98  4B 42 6F 15 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C4FB9C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C4FBA0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C4FBA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C4FBA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C4FBAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4FBB0  7C 08 03 A6 */	mtlr r0
/* 80C4FBB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C4FBB8  4E 80 00 20 */	blr 
