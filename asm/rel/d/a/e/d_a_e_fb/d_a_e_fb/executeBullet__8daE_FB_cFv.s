lbl_806B7B88:
/* 806B7B88  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806B7B8C  7C 08 02 A6 */	mflr r0
/* 806B7B90  90 01 00 54 */	stw r0, 0x54(r1)
/* 806B7B94  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 806B7B98  93 C1 00 48 */	stw r30, 0x48(r1)
/* 806B7B9C  7C 7E 1B 78 */	mr r30, r3
/* 806B7BA0  3C 60 80 6C */	lis r3, lit_3662@ha
/* 806B7BA4  3B E3 8F 8C */	addi r31, r3, lit_3662@l
/* 806B7BA8  80 1E 06 6C */	lwz r0, 0x66c(r30)
/* 806B7BAC  2C 00 00 01 */	cmpwi r0, 1
/* 806B7BB0  41 82 00 4C */	beq lbl_806B7BFC
/* 806B7BB4  40 80 01 18 */	bge lbl_806B7CCC
/* 806B7BB8  2C 00 00 00 */	cmpwi r0, 0
/* 806B7BBC  40 80 00 08 */	bge lbl_806B7BC4
/* 806B7BC0  48 00 01 0C */	b lbl_806B7CCC
lbl_806B7BC4:
/* 806B7BC4  3C 60 80 6C */	lis r3, mFireTimer@ha
/* 806B7BC8  38 83 92 20 */	addi r4, r3, mFireTimer@l
/* 806B7BCC  80 04 00 00 */	lwz r0, 0(r4)
/* 806B7BD0  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 806B7BD4  80 64 00 00 */	lwz r3, 0(r4)
/* 806B7BD8  38 03 00 03 */	addi r0, r3, 3
/* 806B7BDC  90 04 00 00 */	stw r0, 0(r4)
/* 806B7BE0  2C 00 00 24 */	cmpwi r0, 0x24
/* 806B7BE4  40 81 00 0C */	ble lbl_806B7BF0
/* 806B7BE8  38 00 00 24 */	li r0, 0x24
/* 806B7BEC  90 04 00 00 */	stw r0, 0(r4)
lbl_806B7BF0:
/* 806B7BF0  80 7E 06 6C */	lwz r3, 0x66c(r30)
/* 806B7BF4  38 03 00 01 */	addi r0, r3, 1
/* 806B7BF8  90 1E 06 6C */	stw r0, 0x66c(r30)
lbl_806B7BFC:
/* 806B7BFC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806B7C00  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806B7C04  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 806B7C08  28 00 00 00 */	cmplwi r0, 0
/* 806B7C0C  41 82 00 70 */	beq lbl_806B7C7C
/* 806B7C10  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 806B7C14  90 01 00 08 */	stw r0, 8(r1)
/* 806B7C18  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 806B7C1C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 806B7C20  38 81 00 08 */	addi r4, r1, 8
/* 806B7C24  4B 96 1B D4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 806B7C28  28 03 00 00 */	cmplwi r3, 0
/* 806B7C2C  41 82 00 50 */	beq lbl_806B7C7C
/* 806B7C30  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806B7C34  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 806B7C38  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 806B7C3C  7C 04 00 50 */	subf r0, r4, r0
/* 806B7C40  7C 00 07 34 */	extsh r0, r0
/* 806B7C44  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 806B7C48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806B7C4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B7C50  3C 00 43 30 */	lis r0, 0x4330
/* 806B7C54  90 01 00 30 */	stw r0, 0x30(r1)
/* 806B7C58  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 806B7C5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 806B7C60  EC 02 00 32 */	fmuls f0, f2, f0
/* 806B7C64  FC 00 00 1E */	fctiwz f0, f0
/* 806B7C68  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806B7C6C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 806B7C70  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806B7C74  7C 03 00 50 */	subf r0, r3, r0
/* 806B7C78  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_806B7C7C:
/* 806B7C7C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806B7C80  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806B7C84  80 63 00 00 */	lwz r3, 0(r3)
/* 806B7C88  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806B7C8C  4B 95 47 50 */	b mDoMtx_YrotS__FPA4_fs
/* 806B7C90  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806B7C94  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806B7C98  80 63 00 00 */	lwz r3, 0(r3)
/* 806B7C9C  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 806B7CA0  4B 95 46 FC */	b mDoMtx_XrotM__FPA4_fs
/* 806B7CA4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806B7CA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806B7CAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806B7CB0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806B7CB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806B7CB8  38 61 00 24 */	addi r3, r1, 0x24
/* 806B7CBC  38 81 00 18 */	addi r4, r1, 0x18
/* 806B7CC0  4B BB 92 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 806B7CC4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806B7CC8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806B7CCC:
/* 806B7CCC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806B7CD0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 806B7CD4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806B7CD8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806B7CDC  7C 64 02 14 */	add r3, r4, r0
/* 806B7CE0  C0 03 00 04 */	lfs f0, 4(r3)
/* 806B7CE4  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 806B7CE8  EC 22 00 32 */	fmuls f1, f2, f0
/* 806B7CEC  7C 04 04 2E */	lfsx f0, r4, r0
/* 806B7CF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806B7CF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B7CF8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806B7CFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B7D00  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806B7D04  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 806B7D08  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806B7D0C  4B BB 79 3C */	b SetC__8cM3dGSphFRC4cXyz
/* 806B7D10  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 806B7D14  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806B7D18  4B BB 79 F0 */	b SetR__8cM3dGSphFf
/* 806B7D1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806B7D20  D0 1E 0B EC */	stfs f0, 0xbec(r30)
/* 806B7D24  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806B7D28  D0 1E 0B F0 */	stfs f0, 0xbf0(r30)
/* 806B7D2C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806B7D30  D0 1E 0B F4 */	stfs f0, 0xbf4(r30)
/* 806B7D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B7D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B7D3C  38 63 23 3C */	addi r3, r3, 0x233c
/* 806B7D40  38 9E 0B 68 */	addi r4, r30, 0xb68
/* 806B7D44  4B BA CE 64 */	b Set__4cCcSFP8cCcD_Obj
/* 806B7D48  38 7E 0B 68 */	addi r3, r30, 0xb68
/* 806B7D4C  4B 9C C5 74 */	b ChkAtHit__12dCcD_GObjInfFv
/* 806B7D50  28 03 00 00 */	cmplwi r3, 0
/* 806B7D54  41 82 00 50 */	beq lbl_806B7DA4
/* 806B7D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B7D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B7D60  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 806B7D64  38 7E 0B C0 */	addi r3, r30, 0xbc0
/* 806B7D68  4B 9C B9 20 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 806B7D6C  7C 1F 18 40 */	cmplw r31, r3
/* 806B7D70  40 82 00 20 */	bne lbl_806B7D90
/* 806B7D74  3C 60 80 6C */	lis r3, data_806B9224@ha
/* 806B7D78  38 83 92 24 */	addi r4, r3, data_806B9224@l
/* 806B7D7C  88 64 00 00 */	lbz r3, 0(r4)
/* 806B7D80  28 03 00 02 */	cmplwi r3, 2
/* 806B7D84  40 80 00 0C */	bge lbl_806B7D90
/* 806B7D88  38 03 00 01 */	addi r0, r3, 1
/* 806B7D8C  98 04 00 00 */	stb r0, 0(r4)
lbl_806B7D90:
/* 806B7D90  38 7E 0B 68 */	addi r3, r30, 0xb68
/* 806B7D94  81 9E 0B A4 */	lwz r12, 0xba4(r30)
/* 806B7D98  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806B7D9C  7D 89 03 A6 */	mtctr r12
/* 806B7DA0  4E 80 04 21 */	bctrl 
lbl_806B7DA4:
/* 806B7DA4  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 806B7DA8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806B7DAC  40 82 00 10 */	bne lbl_806B7DBC
/* 806B7DB0  80 1E 06 9C */	lwz r0, 0x69c(r30)
/* 806B7DB4  2C 00 00 00 */	cmpwi r0, 0
/* 806B7DB8  40 82 00 0C */	bne lbl_806B7DC4
lbl_806B7DBC:
/* 806B7DBC  7F C3 F3 78 */	mr r3, r30
/* 806B7DC0  4B 96 1E BC */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806B7DC4:
/* 806B7DC4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806B7DC8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806B7DCC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806B7DD0  7C 08 03 A6 */	mtlr r0
/* 806B7DD4  38 21 00 50 */	addi r1, r1, 0x50
/* 806B7DD8  4E 80 00 20 */	blr 
