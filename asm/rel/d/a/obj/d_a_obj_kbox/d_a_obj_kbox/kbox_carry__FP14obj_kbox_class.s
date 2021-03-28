lbl_80C3DAB4:
/* 80C3DAB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C3DAB8  7C 08 02 A6 */	mflr r0
/* 80C3DABC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C3DAC0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C3DAC4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C3DAC8  7C 7E 1B 78 */	mr r30, r3
/* 80C3DACC  3C 60 80 C4 */	lis r3, lit_3648@ha
/* 80C3DAD0  3B E3 F0 58 */	addi r31, r3, lit_3648@l
/* 80C3DAD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3DAD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3DADC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C3DAE0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C3DAE4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C3DAE8  40 82 00 E4 */	bne lbl_80C3DBCC
/* 80C3DAEC  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80C3DAF0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80C3DAF4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C3DAF8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C3DAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3DB00  41 81 00 14 */	bgt lbl_80C3DB14
/* 80C3DB04  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80C3DB08  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C3DB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3DB10  40 81 00 A0 */	ble lbl_80C3DBB0
lbl_80C3DB14:
/* 80C3DB14  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80C3DB18  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80C3DB1C  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 80C3DB20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C3DB24  EC 02 00 2A */	fadds f0, f2, f0
/* 80C3DB28  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C3DB2C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C3DB30  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C3DB34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C3DB38  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C3DB3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3DB40  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C3DB44  4B 3C E8 98 */	b mDoMtx_YrotS__FPA4_fs
/* 80C3DB48  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C3DB4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C3DB50  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C3DB54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C3DB58  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80C3DB5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C3DB60  38 61 00 20 */	addi r3, r1, 0x20
/* 80C3DB64  38 81 00 14 */	addi r4, r1, 0x14
/* 80C3DB68  4B 63 33 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C3DB6C  38 61 00 08 */	addi r3, r1, 8
/* 80C3DB70  38 81 00 14 */	addi r4, r1, 0x14
/* 80C3DB74  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C3DB78  4B 62 90 0C */	b __ml__4cXyzCFf
/* 80C3DB7C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C3DB80  38 81 00 08 */	addi r4, r1, 8
/* 80C3DB84  7C 65 1B 78 */	mr r5, r3
/* 80C3DB88  4B 70 95 08 */	b PSVECAdd
/* 80C3DB8C  38 00 00 02 */	li r0, 2
/* 80C3DB90  B0 1E 05 7A */	sth r0, 0x57a(r30)
/* 80C3DB94  38 00 00 00 */	li r0, 0
/* 80C3DB98  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 80C3DB9C  38 00 00 0A */	li r0, 0xa
/* 80C3DBA0  B0 1E 05 80 */	sth r0, 0x580(r30)
/* 80C3DBA4  7F C3 F3 78 */	mr r3, r30
/* 80C3DBA8  4B 3D F6 54 */	b fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 80C3DBAC  48 00 00 20 */	b lbl_80C3DBCC
lbl_80C3DBB0:
/* 80C3DBB0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C3DBB4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C3DBB8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C3DBBC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C3DBC0  38 00 00 00 */	li r0, 0
/* 80C3DBC4  B0 1E 05 7A */	sth r0, 0x57a(r30)
/* 80C3DBC8  B0 1E 05 7C */	sth r0, 0x57c(r30)
lbl_80C3DBCC:
/* 80C3DBCC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C3DBD0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C3DBD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C3DBD8  7C 08 03 A6 */	mtlr r0
/* 80C3DBDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80C3DBE0  4E 80 00 20 */	blr 
