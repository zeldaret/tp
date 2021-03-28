lbl_800A67E0:
/* 800A67E0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800A67E4  7C 08 02 A6 */	mflr r0
/* 800A67E8  90 01 00 94 */	stw r0, 0x94(r1)
/* 800A67EC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 800A67F0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 800A67F4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 800A67F8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 800A67FC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800A6800  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800A6804  7C 7F 1B 78 */	mr r31, r3
/* 800A6808  C0 03 33 CC */	lfs f0, 0x33cc(r3)
/* 800A680C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A6810  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800A6814  40 80 00 08 */	bge lbl_800A681C
/* 800A6818  48 00 00 18 */	b lbl_800A6830
lbl_800A681C:
/* 800A681C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800A6820  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800A6824  40 81 00 08 */	ble lbl_800A682C
/* 800A6828  48 00 00 08 */	b lbl_800A6830
lbl_800A682C:
/* 800A682C  FC 20 00 90 */	fmr f1, f0
lbl_800A6830:
/* 800A6830  D0 3F 33 CC */	stfs f1, 0x33cc(r31)
/* 800A6834  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A6838  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800A683C  41 82 02 08 */	beq lbl_800A6A44
/* 800A6840  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800A6844  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800A6848  90 01 00 48 */	stw r0, 0x48(r1)
/* 800A684C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800A6850  4B F6 65 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800A6854  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A6858  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A685C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800A6860  4B F6 5B D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 800A6864  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A6868  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A686C  3C 80 80 39 */	lis r4, l_crawlFrontUpOffset@ha
/* 800A6870  38 84 FA 78 */	addi r4, r4, l_crawlFrontUpOffset@l
/* 800A6874  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800A6878  48 2A 04 F5 */	bl PSMTXMultVec
/* 800A687C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A6880  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A6884  3C 80 80 39 */	lis r4, l_crawlBackUpOffset@ha
/* 800A6888  38 84 FA 90 */	addi r4, r4, l_crawlBackUpOffset@l
/* 800A688C  38 A1 00 20 */	addi r5, r1, 0x20
/* 800A6890  48 2A 04 DD */	bl PSMTXMultVec
/* 800A6894  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800A6898  38 81 00 2C */	addi r4, r1, 0x2c
/* 800A689C  48 1C 14 8D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800A68A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A68A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A68A8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 800A68AC  7F C3 F3 78 */	mr r3, r30
/* 800A68B0  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800A68B4  4B FC DB ED */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800A68B8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800A68BC  C0 42 93 A4 */	lfs f2, lit_9138(r2)
/* 800A68C0  FC 00 08 18 */	frsp f0, f1
/* 800A68C4  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 800A68C8  41 82 00 18 */	beq lbl_800A68E0
/* 800A68CC  7F C3 F3 78 */	mr r3, r30
/* 800A68D0  38 9F 1D 1C */	addi r4, r31, 0x1d1c
/* 800A68D4  38 A1 00 38 */	addi r5, r1, 0x38
/* 800A68D8  4B FC DE 6D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800A68DC  48 00 00 08 */	b lbl_800A68E4
lbl_800A68E0:
/* 800A68E0  38 60 00 00 */	li r3, 0
lbl_800A68E4:
/* 800A68E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A68E8  41 82 00 0C */	beq lbl_800A68F4
/* 800A68EC  C3 E1 00 3C */	lfs f31, 0x3c(r1)
/* 800A68F0  48 00 00 08 */	b lbl_800A68F8
lbl_800A68F4:
/* 800A68F4  C3 E2 92 BC */	lfs f31, lit_6041(r2)
lbl_800A68F8:
/* 800A68F8  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800A68FC  38 81 00 20 */	addi r4, r1, 0x20
/* 800A6900  48 1C 14 29 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800A6904  7F C3 F3 78 */	mr r3, r30
/* 800A6908  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800A690C  4B FC DB 95 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800A6910  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800A6914  C0 42 93 A4 */	lfs f2, lit_9138(r2)
/* 800A6918  FC 00 08 18 */	frsp f0, f1
/* 800A691C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 800A6920  41 82 00 18 */	beq lbl_800A6938
/* 800A6924  7F C3 F3 78 */	mr r3, r30
/* 800A6928  38 9F 1D 1C */	addi r4, r31, 0x1d1c
/* 800A692C  38 A1 00 38 */	addi r5, r1, 0x38
/* 800A6930  4B FC DE 15 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800A6934  48 00 00 08 */	b lbl_800A693C
lbl_800A6938:
/* 800A6938  38 60 00 00 */	li r3, 0
lbl_800A693C:
/* 800A693C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A6940  41 82 00 0C */	beq lbl_800A694C
/* 800A6944  C3 C1 00 3C */	lfs f30, 0x3c(r1)
/* 800A6948  48 00 00 08 */	b lbl_800A6950
lbl_800A694C:
/* 800A694C  C3 C2 92 BC */	lfs f30, lit_6041(r2)
lbl_800A6950:
/* 800A6950  38 61 00 08 */	addi r3, r1, 8
/* 800A6954  38 81 00 2C */	addi r4, r1, 0x2c
/* 800A6958  38 A1 00 20 */	addi r5, r1, 0x20
/* 800A695C  48 1C 01 D9 */	bl __mi__4cXyzCFRC3Vec
/* 800A6960  C0 01 00 08 */	lfs f0, 8(r1)
/* 800A6964  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800A6968  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800A696C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800A6970  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800A6974  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800A6978  38 61 00 14 */	addi r3, r1, 0x14
/* 800A697C  48 1C 07 D5 */	bl atan2sY_XZ__4cXyzCFv
/* 800A6980  7C 7E 1B 78 */	mr r30, r3
/* 800A6984  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 800A6988  48 1C A4 9D */	bl cLib_distanceAngleS__Fss
/* 800A698C  2C 03 10 00 */	cmpwi r3, 0x1000
/* 800A6990  40 80 00 6C */	bge lbl_800A69FC
/* 800A6994  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A6998  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A699C  40 81 00 60 */	ble lbl_800A69FC
/* 800A69A0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800A69A4  40 81 00 58 */	ble lbl_800A69FC
/* 800A69A8  EC 1F F0 28 */	fsubs f0, f31, f30
/* 800A69AC  FC 00 02 10 */	fabs f0, f0
/* 800A69B0  FC 20 00 18 */	frsp f1, f0
/* 800A69B4  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800A69B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A69BC  40 81 00 40 */	ble lbl_800A69FC
/* 800A69C0  7F C0 07 34 */	extsh r0, r30
/* 800A69C4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A69C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A69CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A69D0  3C 00 43 30 */	lis r0, 0x4330
/* 800A69D4  90 01 00 50 */	stw r0, 0x50(r1)
/* 800A69D8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 800A69DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A69E0  C0 1F 33 CC */	lfs f0, 0x33cc(r31)
/* 800A69E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A69E8  FC 00 00 1E */	fctiwz f0, f0
/* 800A69EC  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 800A69F0  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 800A69F4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 800A69F8  48 00 00 3C */	b lbl_800A6A34
lbl_800A69FC:
/* 800A69FC  A8 1F 2F F0 */	lha r0, 0x2ff0(r31)
/* 800A6A00  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A6A04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A6A08  90 01 00 5C */	stw r0, 0x5c(r1)
/* 800A6A0C  3C 00 43 30 */	lis r0, 0x4330
/* 800A6A10  90 01 00 58 */	stw r0, 0x58(r1)
/* 800A6A14  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 800A6A18  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A6A1C  C0 1F 33 CC */	lfs f0, 0x33cc(r31)
/* 800A6A20  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A6A24  FC 00 00 1E */	fctiwz f0, f0
/* 800A6A28  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 800A6A2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A6A30  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
lbl_800A6A34:
/* 800A6A34  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800A6A38  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800A6A3C  90 01 00 48 */	stw r0, 0x48(r1)
/* 800A6A40  48 00 00 3C */	b lbl_800A6A7C
lbl_800A6A44:
/* 800A6A44  A8 1F 2F F0 */	lha r0, 0x2ff0(r31)
/* 800A6A48  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A6A4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A6A50  90 01 00 5C */	stw r0, 0x5c(r1)
/* 800A6A54  3C 00 43 30 */	lis r0, 0x4330
/* 800A6A58  90 01 00 58 */	stw r0, 0x58(r1)
/* 800A6A5C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 800A6A60  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A6A64  C0 1F 33 CC */	lfs f0, 0x33cc(r31)
/* 800A6A68  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A6A6C  FC 00 00 1E */	fctiwz f0, f0
/* 800A6A70  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 800A6A74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A6A78  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
lbl_800A6A7C:
/* 800A6A7C  7F E3 FB 78 */	mr r3, r31
/* 800A6A80  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800A6A84  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 800A6A88  38 05 C0 00 */	addi r0, r5, -16384
/* 800A6A8C  7C 05 07 34 */	extsh r5, r0
/* 800A6A90  48 00 96 09 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800A6A94  7C 60 07 34 */	extsh r0, r3
/* 800A6A98  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A6A9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A6AA0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 800A6AA4  3C 00 43 30 */	lis r0, 0x4330
/* 800A6AA8  90 01 00 58 */	stw r0, 0x58(r1)
/* 800A6AAC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 800A6AB0  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A6AB4  C0 1F 33 CC */	lfs f0, 0x33cc(r31)
/* 800A6AB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A6ABC  FC 00 00 1E */	fctiwz f0, f0
/* 800A6AC0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 800A6AC4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A6AC8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 800A6ACC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A6AD0  28 00 00 0C */	cmplwi r0, 0xc
/* 800A6AD4  40 82 00 10 */	bne lbl_800A6AE4
/* 800A6AD8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 800A6ADC  7C 00 00 D0 */	neg r0, r0
/* 800A6AE0  B0 1F 05 9C */	sth r0, 0x59c(r31)
lbl_800A6AE4:
/* 800A6AE4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 800A6AE8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 800A6AEC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 800A6AF0  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 800A6AF4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800A6AF8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800A6AFC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800A6B00  7C 08 03 A6 */	mtlr r0
/* 800A6B04  38 21 00 90 */	addi r1, r1, 0x90
/* 800A6B08  4E 80 00 20 */	blr 
