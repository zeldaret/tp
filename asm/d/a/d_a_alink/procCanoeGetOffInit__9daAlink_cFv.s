lbl_800F4DF8:
/* 800F4DF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F4DFC  7C 08 02 A6 */	mflr r0
/* 800F4E00  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F4E04  39 61 00 30 */	addi r11, r1, 0x30
/* 800F4E08  48 26 D3 D5 */	bl _savegpr_29
/* 800F4E0C  7C 7E 1B 78 */	mr r30, r3
/* 800F4E10  38 80 00 8E */	li r4, 0x8e
/* 800F4E14  4B FC D1 59 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F4E18  83 FE 28 18 */	lwz r31, 0x2818(r30)
/* 800F4E1C  38 00 00 00 */	li r0, 0
/* 800F4E20  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800F4E24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F4E28  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800F4E2C  7F C3 F3 78 */	mr r3, r30
/* 800F4E30  38 80 00 19 */	li r4, 0x19
/* 800F4E34  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha
/* 800F4E38  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l
/* 800F4E3C  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 800F4E40  C0 42 93 44 */	lfs f2, lit_7977(r2)
/* 800F4E44  4B FB 81 9D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800F4E48  7F C3 F3 78 */	mr r3, r30
/* 800F4E4C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F4E50  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800F4E54  38 80 00 00 */	li r4, 0
/* 800F4E58  4B FC 69 19 */	bl setSpecialGravity__9daAlink_cFffi
/* 800F4E5C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F4E60  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800F4E64  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800F4E68  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800F4E6C  83 A3 00 1C */	lwz r29, 0x1c(r3)
/* 800F4E70  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800F4E74  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F4E78  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800F4E7C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800F4E80  7C 03 04 2E */	lfsx f0, r3, r0
/* 800F4E84  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 800F4E88  C0 42 93 E0 */	lfs f2, lit_11673(r2)
/* 800F4E8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F4E90  EC A3 00 2A */	fadds f5, f3, f0
/* 800F4E94  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800F4E98  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800F4E9C  EC 81 00 2A */	fadds f4, f1, f0
/* 800F4EA0  7C 63 02 14 */	add r3, r3, r0
/* 800F4EA4  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F4EA8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800F4EAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F4EB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F4EB4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800F4EB8  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 800F4EBC  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800F4EC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800F4EC4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 800F4EC8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 800F4ECC  7F C3 F3 78 */	mr r3, r30
/* 800F4ED0  38 81 00 08 */	addi r4, r1, 8
/* 800F4ED4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800F4ED8  4B FA D2 C1 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800F4EDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F4EE0  41 82 00 0C */	beq lbl_800F4EEC
/* 800F4EE4  38 00 00 00 */	li r0, 0
/* 800F4EE8  48 00 00 88 */	b lbl_800F4F70
lbl_800F4EEC:
/* 800F4EEC  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 800F4EF0  C0 01 00 08 */	lfs f0, 8(r1)
/* 800F4EF4  EC 22 00 32 */	fmuls f1, f2, f0
/* 800F4EF8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800F4EFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F4F00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800F4F04  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F4F08  EC 22 00 32 */	fmuls f1, f2, f0
/* 800F4F0C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800F4F10  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F4F14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800F4F18  7F C3 F3 78 */	mr r3, r30
/* 800F4F1C  38 81 00 08 */	addi r4, r1, 8
/* 800F4F20  38 A1 00 14 */	addi r5, r1, 0x14
/* 800F4F24  4B FA D2 75 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800F4F28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F4F2C  41 82 00 0C */	beq lbl_800F4F38
/* 800F4F30  38 00 00 01 */	li r0, 1
/* 800F4F34  48 00 00 3C */	b lbl_800F4F70
lbl_800F4F38:
/* 800F4F38  38 7E 1D 08 */	addi r3, r30, 0x1d08
/* 800F4F3C  38 81 00 14 */	addi r4, r1, 0x14
/* 800F4F40  48 17 2D E9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800F4F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F4F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F4F4C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800F4F50  38 9E 1D 08 */	addi r4, r30, 0x1d08
/* 800F4F54  4B F7 F5 4D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800F4F58  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800F4F5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F4F60  40 81 00 0C */	ble lbl_800F4F6C
/* 800F4F64  38 00 00 00 */	li r0, 0
/* 800F4F68  48 00 00 08 */	b lbl_800F4F70
lbl_800F4F6C:
/* 800F4F6C  38 00 00 01 */	li r0, 1
lbl_800F4F70:
/* 800F4F70  2C 00 00 00 */	cmpwi r0, 0
/* 800F4F74  41 82 00 38 */	beq lbl_800F4FAC
/* 800F4F78  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800F4F7C  38 03 C0 00 */	addi r0, r3, -16384
/* 800F4F80  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800F4F84  7F C3 F3 78 */	mr r3, r30
/* 800F4F88  38 80 00 00 */	li r4, 0
/* 800F4F8C  38 A0 40 00 */	li r5, 0x4000
/* 800F4F90  38 C0 00 00 */	li r6, 0
/* 800F4F94  4B FB 8B E5 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800F4F98  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 800F4F9C  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 800F4FA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F4FA4  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 800F4FA8  48 00 00 34 */	b lbl_800F4FDC
lbl_800F4FAC:
/* 800F4FAC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800F4FB0  38 03 40 00 */	addi r0, r3, 0x4000
/* 800F4FB4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800F4FB8  7F C3 F3 78 */	mr r3, r30
/* 800F4FBC  38 80 00 00 */	li r4, 0
/* 800F4FC0  38 A0 C0 00 */	li r5, -16384
/* 800F4FC4  38 C0 00 00 */	li r6, 0
/* 800F4FC8  4B FB 8B B1 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800F4FCC  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 800F4FD0  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 800F4FD4  EC 01 00 2A */	fadds f0, f1, f0
/* 800F4FD8  D0 1D 00 14 */	stfs f0, 0x14(r29)
lbl_800F4FDC:
/* 800F4FDC  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 800F4FE0  C0 02 93 10 */	lfs f0, lit_7306(r2)
/* 800F4FE4  EC 01 00 2A */	fadds f0, f1, f0
/* 800F4FE8  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 800F4FEC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800F4FF0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800F4FF4  7F C3 F3 78 */	mr r3, r30
/* 800F4FF8  7F E4 FB 78 */	mr r4, r31
/* 800F4FFC  4B FF F5 69 */	bl setRideCanoeBasePos__9daAlink_cFP10fopAc_ac_c
/* 800F5000  C0 3E 37 D0 */	lfs f1, 0x37d0(r30)
/* 800F5004  C0 02 95 14 */	lfs f0, lit_20823(r2)
/* 800F5008  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F500C  D0 1E 37 D0 */	stfs f0, 0x37d0(r30)
/* 800F5010  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800F5014  38 63 00 24 */	addi r3, r3, 0x24
/* 800F5018  38 9E 37 C8 */	addi r4, r30, 0x37c8
/* 800F501C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800F5020  48 25 1D 4D */	bl PSMTXMultVec
/* 800F5024  38 00 00 00 */	li r0, 0
/* 800F5028  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800F502C  38 60 00 01 */	li r3, 1
/* 800F5030  39 61 00 30 */	addi r11, r1, 0x30
/* 800F5034  48 26 D1 F5 */	bl _restgpr_29
/* 800F5038  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F503C  7C 08 03 A6 */	mtlr r0
/* 800F5040  38 21 00 30 */	addi r1, r1, 0x30
/* 800F5044  4E 80 00 20 */	blr 
