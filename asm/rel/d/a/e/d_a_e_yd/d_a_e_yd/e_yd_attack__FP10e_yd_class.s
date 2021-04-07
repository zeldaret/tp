lbl_807F4158:
/* 807F4158  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 807F415C  7C 08 02 A6 */	mflr r0
/* 807F4160  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 807F4164  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807F4168  4B B6 E0 69 */	bl _savegpr_26
/* 807F416C  7C 7D 1B 78 */	mr r29, r3
/* 807F4170  3C 60 80 7F */	lis r3, lit_3788@ha /* 0x807F7A00@ha */
/* 807F4174  3B C3 7A 00 */	addi r30, r3, lit_3788@l /* 0x807F7A00@l */
/* 807F4178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F417C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F4180  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 807F4184  38 61 00 5C */	addi r3, r1, 0x5c
/* 807F4188  38 9C 05 38 */	addi r4, r28, 0x538
/* 807F418C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807F4190  4B A7 29 A5 */	bl __mi__4cXyzCFRC3Vec
/* 807F4194  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 807F4198  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 807F419C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807F41A0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807F41A4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807F41A8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807F41AC  EC 21 00 72 */	fmuls f1, f1, f1
/* 807F41B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 807F41B4  EC 41 00 2A */	fadds f2, f1, f0
/* 807F41B8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F41BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807F41C0  40 81 00 0C */	ble lbl_807F41CC
/* 807F41C4  FC 00 10 34 */	frsqrte f0, f2
/* 807F41C8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807F41CC:
/* 807F41CC  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 807F41D0  4B A7 34 A5 */	bl cM_atan2s__Fff
/* 807F41D4  7C 7B 07 34 */	extsh r27, r3
/* 807F41D8  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 807F41DC  2C 00 00 03 */	cmpwi r0, 3
/* 807F41E0  41 82 05 78 */	beq lbl_807F4758
/* 807F41E4  40 80 00 1C */	bge lbl_807F4200
/* 807F41E8  2C 00 00 01 */	cmpwi r0, 1
/* 807F41EC  41 82 00 C4 */	beq lbl_807F42B0
/* 807F41F0  40 80 03 B4 */	bge lbl_807F45A4
/* 807F41F4  2C 00 00 00 */	cmpwi r0, 0
/* 807F41F8  40 80 00 14 */	bge lbl_807F420C
/* 807F41FC  48 00 09 00 */	b lbl_807F4AFC
lbl_807F4200:
/* 807F4200  2C 00 00 05 */	cmpwi r0, 5
/* 807F4204  41 82 05 74 */	beq lbl_807F4778
/* 807F4208  48 00 08 F4 */	b lbl_807F4AFC
lbl_807F420C:
/* 807F420C  38 00 00 01 */	li r0, 1
/* 807F4210  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F4214  38 00 00 11 */	li r0, 0x11
/* 807F4218  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 807F421C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F4220  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 807F4224  38 00 00 00 */	li r0, 0
/* 807F4228  98 1D 0B 11 */	stb r0, 0xb11(r29)
/* 807F422C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807F4230  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807F4234  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807F4238  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F423C  38 81 00 1C */	addi r4, r1, 0x1c
/* 807F4240  38 A0 00 00 */	li r5, 0
/* 807F4244  38 C0 FF FF */	li r6, -1
/* 807F4248  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F424C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F4250  7D 89 03 A6 */	mtctr r12
/* 807F4254  4E 80 04 21 */	bctrl 
/* 807F4258  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070083@ha */
/* 807F425C  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00070083@l */
/* 807F4260  90 01 00 18 */	stw r0, 0x18(r1)
/* 807F4264  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F4268  38 81 00 18 */	addi r4, r1, 0x18
/* 807F426C  38 A0 FF FF */	li r5, -1
/* 807F4270  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F4274  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F4278  7D 89 03 A6 */	mtctr r12
/* 807F427C  4E 80 04 21 */	bctrl 
/* 807F4280  7F A3 EB 78 */	mr r3, r29
/* 807F4284  38 80 00 14 */	li r4, 0x14
/* 807F4288  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 807F428C  38 A0 00 02 */	li r5, 2
/* 807F4290  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F4294  4B FF EC 39 */	bl leaf_anm_init__FP10e_yd_classifUcf
/* 807F4298  7F A3 EB 78 */	mr r3, r29
/* 807F429C  38 80 00 07 */	li r4, 7
/* 807F42A0  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 807F42A4  38 A0 00 00 */	li r5, 0
/* 807F42A8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F42AC  4B FF EB 75 */	bl anm_init__FP10e_yd_classifUcf
lbl_807F42B0:
/* 807F42B0  88 1D 08 55 */	lbz r0, 0x855(r29)
/* 807F42B4  7C 00 07 75 */	extsb. r0, r0
/* 807F42B8  41 82 00 40 */	beq lbl_807F42F8
/* 807F42BC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807F42C0  A8 9D 06 88 */	lha r4, 0x688(r29)
/* 807F42C4  3C 84 00 01 */	addis r4, r4, 1
/* 807F42C8  38 04 80 00 */	addi r0, r4, -32768
/* 807F42CC  7C 04 07 34 */	extsh r4, r0
/* 807F42D0  38 A0 00 08 */	li r5, 8
/* 807F42D4  38 C0 08 00 */	li r6, 0x800
/* 807F42D8  4B A7 C3 31 */	bl cLib_addCalcAngleS2__FPssss
/* 807F42DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F42E0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807F42E4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 807F42E8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807F42EC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807F42F0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807F42F4  48 00 00 30 */	b lbl_807F4324
lbl_807F42F8:
/* 807F42F8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807F42FC  A8 9D 06 88 */	lha r4, 0x688(r29)
/* 807F4300  38 A0 00 08 */	li r5, 8
/* 807F4304  38 C0 08 00 */	li r6, 0x800
/* 807F4308  4B A7 C3 01 */	bl cLib_addCalcAngleS2__FPssss
/* 807F430C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F4310  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807F4314  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807F4318  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807F431C  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 807F4320  D0 01 00 7C */	stfs f0, 0x7c(r1)
lbl_807F4324:
/* 807F4324  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F4328  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F432C  80 63 00 00 */	lwz r3, 0(r3)
/* 807F4330  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807F4334  4B 81 80 A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 807F4338  38 61 00 74 */	addi r3, r1, 0x74
/* 807F433C  38 81 00 68 */	addi r4, r1, 0x68
/* 807F4340  4B A7 CB AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F4344  38 61 00 50 */	addi r3, r1, 0x50
/* 807F4348  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 807F434C  38 A1 00 68 */	addi r5, r1, 0x68
/* 807F4350  4B A7 27 95 */	bl __pl__4cXyzCFRC3Vec
/* 807F4354  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807F4358  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F435C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807F4360  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807F4364  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807F4368  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 807F436C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807F4370  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807F4374  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807F4378  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 807F437C  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807F4380  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F4384  4B A7 B6 B9 */	bl cLib_addCalc2__FPffff
/* 807F4388  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807F438C  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807F4390  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807F4394  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 807F4398  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807F439C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F43A0  4B A7 B6 9D */	bl cLib_addCalc2__FPffff
/* 807F43A4  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807F43A8  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807F43AC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807F43B0  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 807F43B4  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807F43B8  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F43BC  4B A7 B6 81 */	bl cLib_addCalc2__FPffff
/* 807F43C0  38 7D 06 94 */	addi r3, r29, 0x694
/* 807F43C4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F43C8  FC 40 08 90 */	fmr f2, f1
/* 807F43CC  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 807F43D0  4B A7 B6 6D */	bl cLib_addCalc2__FPffff
/* 807F43D4  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 807F43D8  2C 00 00 00 */	cmpwi r0, 0
/* 807F43DC  40 82 07 20 */	bne lbl_807F4AFC
/* 807F43E0  38 00 00 02 */	li r0, 2
/* 807F43E4  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F43E8  38 00 00 0A */	li r0, 0xa
/* 807F43EC  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 807F43F0  88 1D 08 55 */	lbz r0, 0x855(r29)
/* 807F43F4  7C 00 07 75 */	extsb. r0, r0
/* 807F43F8  41 82 00 88 */	beq lbl_807F4480
/* 807F43FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F4400  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F4404  80 63 00 00 */	lwz r3, 0(r3)
/* 807F4408  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807F440C  3C 84 00 01 */	addis r4, r4, 1
/* 807F4410  38 04 80 00 */	addi r0, r4, -32768
/* 807F4414  7C 04 07 34 */	extsh r4, r0
/* 807F4418  4B 81 7F C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807F441C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F4420  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F4424  80 63 00 00 */	lwz r3, 0(r3)
/* 807F4428  7C 1B 00 D0 */	neg r0, r27
/* 807F442C  7C 04 07 34 */	extsh r4, r0
/* 807F4430  4B 81 7F 6D */	bl mDoMtx_XrotM__FPA4_fs
/* 807F4434  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F4438  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807F443C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807F4440  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 807F4444  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807F4448  38 61 00 74 */	addi r3, r1, 0x74
/* 807F444C  38 81 00 68 */	addi r4, r1, 0x68
/* 807F4450  4B A7 CA 9D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F4454  38 61 00 44 */	addi r3, r1, 0x44
/* 807F4458  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807F445C  38 A1 00 68 */	addi r5, r1, 0x68
/* 807F4460  4B A7 26 85 */	bl __pl__4cXyzCFRC3Vec
/* 807F4464  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807F4468  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F446C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807F4470  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807F4474  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807F4478  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 807F447C  48 00 00 78 */	b lbl_807F44F4
lbl_807F4480:
/* 807F4480  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F4484  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F4488  80 63 00 00 */	lwz r3, 0(r3)
/* 807F448C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807F4490  4B 81 7F 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 807F4494  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F4498  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F449C  80 63 00 00 */	lwz r3, 0(r3)
/* 807F44A0  20 1B 08 00 */	subfic r0, r27, 0x800
/* 807F44A4  7C 04 07 34 */	extsh r4, r0
/* 807F44A8  4B 81 7E F5 */	bl mDoMtx_XrotM__FPA4_fs
/* 807F44AC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F44B0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807F44B4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807F44B8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 807F44BC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807F44C0  38 61 00 74 */	addi r3, r1, 0x74
/* 807F44C4  38 81 00 68 */	addi r4, r1, 0x68
/* 807F44C8  4B A7 CA 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F44CC  38 61 00 38 */	addi r3, r1, 0x38
/* 807F44D0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807F44D4  38 A1 00 68 */	addi r5, r1, 0x68
/* 807F44D8  4B A7 26 0D */	bl __pl__4cXyzCFRC3Vec
/* 807F44DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807F44E0  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F44E4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807F44E8  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807F44EC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807F44F0  D0 1D 06 80 */	stfs f0, 0x680(r29)
lbl_807F44F4:
/* 807F44F4  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807F44F8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807F44FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F4500  FC 00 02 10 */	fabs f0, f0
/* 807F4504  FC 00 00 18 */	frsp f0, f0
/* 807F4508  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 807F450C  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807F4510  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807F4514  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F4518  FC 00 02 10 */	fabs f0, f0
/* 807F451C  FC 00 00 18 */	frsp f0, f0
/* 807F4520  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807F4524  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807F4528  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807F452C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F4530  FC 00 02 10 */	fabs f0, f0
/* 807F4534  FC 00 00 18 */	frsp f0, f0
/* 807F4538  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 807F453C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F4540  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 807F4544  38 7D 09 D8 */	addi r3, r29, 0x9d8
/* 807F4548  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807F454C  4B 89 05 2D */	bl StartCAt__8dCcD_SphFR4cXyz
/* 807F4550  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F4554  4B A7 34 01 */	bl cM_rndF__Ff
/* 807F4558  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807F455C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F4560  40 80 00 10 */	bge lbl_807F4570
/* 807F4564  38 00 40 00 */	li r0, 0x4000
/* 807F4568  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 807F456C  48 00 00 0C */	b lbl_807F4578
lbl_807F4570:
/* 807F4570  38 00 C0 00 */	li r0, -16384
/* 807F4574  B0 1D 06 90 */	sth r0, 0x690(r29)
lbl_807F4578:
/* 807F4578  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015D@ha */
/* 807F457C  38 03 01 5D */	addi r0, r3, 0x015D /* 0x0007015D@l */
/* 807F4580  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F4584  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F4588  38 81 00 14 */	addi r4, r1, 0x14
/* 807F458C  38 A0 FF FF */	li r5, -1
/* 807F4590  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F4594  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F4598  7D 89 03 A6 */	mtctr r12
/* 807F459C  4E 80 04 21 */	bctrl 
/* 807F45A0  48 00 05 5C */	b lbl_807F4AFC
lbl_807F45A4:
/* 807F45A4  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 807F45A8  2C 00 00 00 */	cmpwi r0, 0
/* 807F45AC  41 82 00 0C */	beq lbl_807F45B8
/* 807F45B0  38 00 00 01 */	li r0, 1
/* 807F45B4  98 1D 0B 10 */	stb r0, 0xb10(r29)
lbl_807F45B8:
/* 807F45B8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807F45BC  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807F45C0  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 807F45C4  C0 7D 04 F8 */	lfs f3, 0x4f8(r29)
/* 807F45C8  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807F45CC  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F45D0  4B A7 B4 6D */	bl cLib_addCalc2__FPffff
/* 807F45D4  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807F45D8  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807F45DC  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 807F45E0  C0 7D 05 00 */	lfs f3, 0x500(r29)
/* 807F45E4  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807F45E8  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F45EC  4B A7 B4 51 */	bl cLib_addCalc2__FPffff
/* 807F45F0  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807F7D78@ha */
/* 807F45F4  38 63 7D 78 */	addi r3, r3, l_HIO@l /* 0x807F7D78@l */
/* 807F45F8  88 03 00 18 */	lbz r0, 0x18(r3)
/* 807F45FC  28 00 00 01 */	cmplwi r0, 1
/* 807F4600  40 82 00 40 */	bne lbl_807F4640
/* 807F4604  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 807F4608  A8 9D 06 90 */	lha r4, 0x690(r29)
/* 807F460C  38 A0 00 02 */	li r5, 2
/* 807F4610  38 C0 20 00 */	li r6, 0x2000
/* 807F4614  4B A7 BF F5 */	bl cLib_addCalcAngleS2__FPssss
/* 807F4618  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807F461C  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807F4620  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 807F4624  EC 21 00 28 */	fsubs f1, f1, f0
/* 807F4628  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 807F462C  C0 7D 04 FC */	lfs f3, 0x4fc(r29)
/* 807F4630  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807F4634  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F4638  4B A7 B4 05 */	bl cLib_addCalc2__FPffff
/* 807F463C  48 00 00 20 */	b lbl_807F465C
lbl_807F4640:
/* 807F4640  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807F4644  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807F4648  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 807F464C  C0 7D 04 FC */	lfs f3, 0x4fc(r29)
/* 807F4650  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807F4654  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F4658  4B A7 B3 E5 */	bl cLib_addCalc2__FPffff
lbl_807F465C:
/* 807F465C  38 7D 06 94 */	addi r3, r29, 0x694
/* 807F4660  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807F4664  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F4668  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 807F466C  4B A7 B3 D1 */	bl cLib_addCalc2__FPffff
/* 807F4670  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807F4674  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807F4678  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 807F467C  40 82 00 98 */	bne lbl_807F4714
/* 807F4680  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 807F4684  40 82 00 90 */	bne lbl_807F4714
/* 807F4688  38 7D 09 D8 */	addi r3, r29, 0x9d8
/* 807F468C  4B 88 FC 35 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 807F4690  28 03 00 00 */	cmplwi r3, 0
/* 807F4694  41 82 00 80 */	beq lbl_807F4714
/* 807F4698  38 00 00 05 */	li r0, 5
/* 807F469C  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F46A0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 807F46A4  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 807F46A8  7F A3 EB 78 */	mr r3, r29
/* 807F46AC  38 80 00 08 */	li r4, 8
/* 807F46B0  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807F46B4  38 A0 00 02 */	li r5, 2
/* 807F46B8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F46BC  4B FF E7 65 */	bl anm_init__FP10e_yd_classifUcf
/* 807F46C0  38 00 00 78 */	li r0, 0x78
/* 807F46C4  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 807F46C8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807F46CC  7F A4 EB 78 */	mr r4, r29
/* 807F46D0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807F46D4  81 8C 01 D0 */	lwz r12, 0x1d0(r12)
/* 807F46D8  7D 89 03 A6 */	mtctr r12
/* 807F46DC  4E 80 04 21 */	bctrl 
/* 807F46E0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F46E4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807F46E8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807F46EC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807F46F0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807F46F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F46F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F46FC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807F4700  38 80 00 06 */	li r4, 6
/* 807F4704  38 A0 00 1F */	li r5, 0x1f
/* 807F4708  38 C1 00 2C */	addi r6, r1, 0x2c
/* 807F470C  4B 87 B3 19 */	bl StartShock__12dVibration_cFii4cXyz
/* 807F4710  48 00 03 EC */	b lbl_807F4AFC
lbl_807F4714:
/* 807F4714  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F4718  38 80 00 01 */	li r4, 1
/* 807F471C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F4720  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F4724  40 82 00 18 */	bne lbl_807F473C
/* 807F4728  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F472C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F4730  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F4734  41 82 00 08 */	beq lbl_807F473C
/* 807F4738  38 80 00 00 */	li r4, 0
lbl_807F473C:
/* 807F473C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F4740  41 82 03 BC */	beq lbl_807F4AFC
/* 807F4744  38 00 00 03 */	li r0, 3
/* 807F4748  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F474C  38 00 00 00 */	li r0, 0
/* 807F4750  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 807F4754  48 00 03 A8 */	b lbl_807F4AFC
lbl_807F4758:
/* 807F4758  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 807F475C  2C 00 00 00 */	cmpwi r0, 0
/* 807F4760  40 82 03 9C */	bne lbl_807F4AFC
/* 807F4764  38 00 00 03 */	li r0, 3
/* 807F4768  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F476C  38 00 00 00 */	li r0, 0
/* 807F4770  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F4774  48 00 03 88 */	b lbl_807F4AFC
lbl_807F4778:
/* 807F4778  38 00 00 01 */	li r0, 1
/* 807F477C  98 1D 08 56 */	stb r0, 0x856(r29)
/* 807F4780  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015E@ha */
/* 807F4784  38 03 01 5E */	addi r0, r3, 0x015E /* 0x0007015E@l */
/* 807F4788  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F478C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F4790  38 81 00 10 */	addi r4, r1, 0x10
/* 807F4794  38 A0 FF FF */	li r5, -1
/* 807F4798  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F479C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 807F47A0  7D 89 03 A6 */	mtctr r12
/* 807F47A4  4E 80 04 21 */	bctrl 
/* 807F47A8  80 1D 08 CC */	lwz r0, 0x8cc(r29)
/* 807F47AC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807F47B0  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 807F47B4  3B 60 00 00 */	li r27, 0
/* 807F47B8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807F47BC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807F47C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F47C4  41 82 02 E8 */	beq lbl_807F4AAC
/* 807F47C8  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 807F47CC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807F47D0  40 82 00 24 */	bne lbl_807F47F4
/* 807F47D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F47D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F47DC  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 807F47E0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807F47E4  EC 01 00 2A */	fadds f0, f1, f0
/* 807F47E8  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 807F47EC  38 00 00 00 */	li r0, 0
/* 807F47F0  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_807F47F4:
/* 807F47F4  38 61 00 20 */	addi r3, r1, 0x20
/* 807F47F8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807F47FC  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 807F4800  4B A7 23 35 */	bl __mi__4cXyzCFRC3Vec
/* 807F4804  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807F4808  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 807F480C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807F4810  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807F4814  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 807F4818  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 807F481C  4B A7 2E 59 */	bl cM_atan2s__Fff
/* 807F4820  7C 7A 1B 78 */	mr r26, r3
/* 807F4824  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F4828  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807F482C  38 61 00 74 */	addi r3, r1, 0x74
/* 807F4830  4B B5 29 09 */	bl PSVECSquareMag
/* 807F4834  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F4838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F483C  40 81 00 58 */	ble lbl_807F4894
/* 807F4840  FC 00 08 34 */	frsqrte f0, f1
/* 807F4844  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807F4848  FC 44 00 32 */	fmul f2, f4, f0
/* 807F484C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807F4850  FC 00 00 32 */	fmul f0, f0, f0
/* 807F4854  FC 01 00 32 */	fmul f0, f1, f0
/* 807F4858  FC 03 00 28 */	fsub f0, f3, f0
/* 807F485C  FC 02 00 32 */	fmul f0, f2, f0
/* 807F4860  FC 44 00 32 */	fmul f2, f4, f0
/* 807F4864  FC 00 00 32 */	fmul f0, f0, f0
/* 807F4868  FC 01 00 32 */	fmul f0, f1, f0
/* 807F486C  FC 03 00 28 */	fsub f0, f3, f0
/* 807F4870  FC 02 00 32 */	fmul f0, f2, f0
/* 807F4874  FC 44 00 32 */	fmul f2, f4, f0
/* 807F4878  FC 00 00 32 */	fmul f0, f0, f0
/* 807F487C  FC 01 00 32 */	fmul f0, f1, f0
/* 807F4880  FC 03 00 28 */	fsub f0, f3, f0
/* 807F4884  FC 02 00 32 */	fmul f0, f2, f0
/* 807F4888  FC 21 00 32 */	fmul f1, f1, f0
/* 807F488C  FC 20 08 18 */	frsp f1, f1
/* 807F4890  48 00 00 88 */	b lbl_807F4918
lbl_807F4894:
/* 807F4894  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807F4898  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F489C  40 80 00 10 */	bge lbl_807F48AC
/* 807F48A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F48A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807F48A8  48 00 00 70 */	b lbl_807F4918
lbl_807F48AC:
/* 807F48AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 807F48B0  80 81 00 08 */	lwz r4, 8(r1)
/* 807F48B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F48B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F48BC  7C 03 00 00 */	cmpw r3, r0
/* 807F48C0  41 82 00 14 */	beq lbl_807F48D4
/* 807F48C4  40 80 00 40 */	bge lbl_807F4904
/* 807F48C8  2C 03 00 00 */	cmpwi r3, 0
/* 807F48CC  41 82 00 20 */	beq lbl_807F48EC
/* 807F48D0  48 00 00 34 */	b lbl_807F4904
lbl_807F48D4:
/* 807F48D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F48D8  41 82 00 0C */	beq lbl_807F48E4
/* 807F48DC  38 00 00 01 */	li r0, 1
/* 807F48E0  48 00 00 28 */	b lbl_807F4908
lbl_807F48E4:
/* 807F48E4  38 00 00 02 */	li r0, 2
/* 807F48E8  48 00 00 20 */	b lbl_807F4908
lbl_807F48EC:
/* 807F48EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F48F0  41 82 00 0C */	beq lbl_807F48FC
/* 807F48F4  38 00 00 05 */	li r0, 5
/* 807F48F8  48 00 00 10 */	b lbl_807F4908
lbl_807F48FC:
/* 807F48FC  38 00 00 03 */	li r0, 3
/* 807F4900  48 00 00 08 */	b lbl_807F4908
lbl_807F4904:
/* 807F4904  38 00 00 04 */	li r0, 4
lbl_807F4908:
/* 807F4908  2C 00 00 01 */	cmpwi r0, 1
/* 807F490C  40 82 00 0C */	bne lbl_807F4918
/* 807F4910  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F4914  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807F4918:
/* 807F4918  C0 7E 00 00 */	lfs f3, 0(r30)
/* 807F491C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 807F4920  40 81 00 40 */	ble lbl_807F4960
/* 807F4924  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807F4928  EC 01 18 28 */	fsubs f0, f1, f3
/* 807F492C  EC 22 00 32 */	fmuls f1, f2, f0
/* 807F4930  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 807F4934  40 81 00 08 */	ble lbl_807F493C
/* 807F4938  FC 20 18 90 */	fmr f1, f3
lbl_807F493C:
/* 807F493C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807F4940  3C 9A 00 01 */	addis r4, r26, 1
/* 807F4944  38 04 80 00 */	addi r0, r4, -32768
/* 807F4948  7C 04 07 34 */	extsh r4, r0
/* 807F494C  38 A0 00 00 */	li r5, 0
/* 807F4950  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807F4954  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 807F4958  7D 89 03 A6 */	mtctr r12
/* 807F495C  4E 80 04 21 */	bctrl 
lbl_807F4960:
/* 807F4960  88 1D 08 55 */	lbz r0, 0x855(r29)
/* 807F4964  7C 00 07 75 */	extsb. r0, r0
/* 807F4968  40 82 00 C4 */	bne lbl_807F4A2C
/* 807F496C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F4970  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F4974  80 63 00 00 */	lwz r3, 0(r3)
/* 807F4978  7F 44 D3 78 */	mr r4, r26
/* 807F497C  4B 81 7A 61 */	bl mDoMtx_YrotS__FPA4_fs
/* 807F4980  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 807F4984  1C 00 2E E0 */	mulli r0, r0, 0x2ee0
/* 807F4988  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F498C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807F4990  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807F4994  7C 43 04 2E */	lfsx f2, r3, r0
/* 807F4998  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 807F499C  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 807F49A0  C8 3E 00 98 */	lfd f1, 0x98(r30)
/* 807F49A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807F49A8  90 01 00 84 */	stw r0, 0x84(r1)
/* 807F49AC  3C 00 43 30 */	lis r0, 0x4330
/* 807F49B0  90 01 00 80 */	stw r0, 0x80(r1)
/* 807F49B4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 807F49B8  EC 20 08 28 */	fsubs f1, f0, f1
/* 807F49BC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 807F49C0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807F49C4  EC 01 00 2A */	fadds f0, f1, f0
/* 807F49C8  FC 00 00 1E */	fctiwz f0, f0
/* 807F49CC  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 807F49D0  80 81 00 8C */	lwz r4, 0x8c(r1)
/* 807F49D4  38 A0 00 02 */	li r5, 2
/* 807F49D8  38 C0 20 00 */	li r6, 0x2000
/* 807F49DC  4B A7 BC 2D */	bl cLib_addCalcAngleS2__FPssss
/* 807F49E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F49E4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807F49E8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807F49EC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807F49F0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807F49F4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807F49F8  38 61 00 74 */	addi r3, r1, 0x74
/* 807F49FC  38 9D 06 78 */	addi r4, r29, 0x678
/* 807F4A00  4B A7 C4 ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F4A04  38 7D 06 78 */	addi r3, r29, 0x678
/* 807F4A08  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807F4A0C  7C 65 1B 78 */	mr r5, r3
/* 807F4A10  4B B5 26 81 */	bl PSVECAdd
/* 807F4A14  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807F4A18  7F 44 D3 78 */	mr r4, r26
/* 807F4A1C  38 A0 00 02 */	li r5, 2
/* 807F4A20  38 C0 10 00 */	li r6, 0x1000
/* 807F4A24  4B A7 BB E5 */	bl cLib_addCalcAngleS2__FPssss
/* 807F4A28  48 00 00 30 */	b lbl_807F4A58
lbl_807F4A2C:
/* 807F4A2C  3B 60 C0 00 */	li r27, -16384
/* 807F4A30  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807F4A34  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F4A38  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807F4A3C  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807F4A40  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807F4A44  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 807F4A48  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807F4A4C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807F4A50  EC 01 00 2A */	fadds f0, f1, f0
/* 807F4A54  D0 1D 06 7C */	stfs f0, 0x67c(r29)
lbl_807F4A58:
/* 807F4A58  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807F4A5C  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807F4A60  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F4A64  C0 7D 06 94 */	lfs f3, 0x694(r29)
/* 807F4A68  4B A7 AF D5 */	bl cLib_addCalc2__FPffff
/* 807F4A6C  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807F4A70  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807F4A74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F4A78  C0 7D 06 94 */	lfs f3, 0x694(r29)
/* 807F4A7C  4B A7 AF C1 */	bl cLib_addCalc2__FPffff
/* 807F4A80  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807F4A84  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807F4A88  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F4A8C  C0 7D 06 94 */	lfs f3, 0x694(r29)
/* 807F4A90  4B A7 AF AD */	bl cLib_addCalc2__FPffff
/* 807F4A94  38 7D 06 94 */	addi r3, r29, 0x694
/* 807F4A98  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 807F4A9C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F4AA0  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 807F4AA4  4B A7 AF 99 */	bl cLib_addCalc2__FPffff
/* 807F4AA8  48 00 00 54 */	b lbl_807F4AFC
lbl_807F4AAC:
/* 807F4AAC  38 00 00 03 */	li r0, 3
/* 807F4AB0  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F4AB4  38 00 FF FF */	li r0, -1
/* 807F4AB8  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F4ABC  7F A3 EB 78 */	mr r3, r29
/* 807F4AC0  38 80 00 11 */	li r4, 0x11
/* 807F4AC4  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807F4AC8  38 A0 00 00 */	li r5, 0
/* 807F4ACC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F4AD0  4B FF E3 51 */	bl anm_init__FP10e_yd_classifUcf
/* 807F4AD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015F@ha */
/* 807F4AD8  38 03 01 5F */	addi r0, r3, 0x015F /* 0x0007015F@l */
/* 807F4ADC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F4AE0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F4AE4  38 81 00 0C */	addi r4, r1, 0xc
/* 807F4AE8  38 A0 FF FF */	li r5, -1
/* 807F4AEC  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F4AF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F4AF4  7D 89 03 A6 */	mtctr r12
/* 807F4AF8  4E 80 04 21 */	bctrl 
lbl_807F4AFC:
/* 807F4AFC  88 1D 0B 10 */	lbz r0, 0xb10(r29)
/* 807F4B00  7C 00 07 75 */	extsb. r0, r0
/* 807F4B04  41 82 00 50 */	beq lbl_807F4B54
/* 807F4B08  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807F4B0C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 807F4B10  EC 00 08 28 */	fsubs f0, f0, f1
/* 807F4B14  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807F4B18  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 807F4B1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 807F4B20  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 807F4B24  38 7D 10 58 */	addi r3, r29, 0x1058
/* 807F4B28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F4B2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F4B30  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807F4B34  4B 88 1F 79 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807F4B38  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807F4B3C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 807F4B40  EC 00 08 2A */	fadds f0, f0, f1
/* 807F4B44  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807F4B48  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 807F4B4C  EC 00 08 2A */	fadds f0, f0, f1
/* 807F4B50  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
lbl_807F4B54:
/* 807F4B54  88 1D 08 55 */	lbz r0, 0x855(r29)
/* 807F4B58  7C 00 07 75 */	extsb. r0, r0
/* 807F4B5C  41 82 00 2C */	beq lbl_807F4B88
/* 807F4B60  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807F4B64  3C 9B 00 01 */	addis r4, r27, 1
/* 807F4B68  38 04 80 00 */	addi r0, r4, -32768
/* 807F4B6C  7C 04 07 34 */	extsh r4, r0
/* 807F4B70  38 A0 00 08 */	li r5, 8
/* 807F4B74  38 C0 04 00 */	li r6, 0x400
/* 807F4B78  4B A7 BA 91 */	bl cLib_addCalcAngleS2__FPssss
/* 807F4B7C  38 00 00 01 */	li r0, 1
/* 807F4B80  98 1D 0B 10 */	stb r0, 0xb10(r29)
/* 807F4B84  48 00 00 1C */	b lbl_807F4BA0
lbl_807F4B88:
/* 807F4B88  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807F4B8C  7C 1B 00 D0 */	neg r0, r27
/* 807F4B90  7C 04 07 34 */	extsh r4, r0
/* 807F4B94  38 A0 00 08 */	li r5, 8
/* 807F4B98  38 C0 04 00 */	li r6, 0x400
/* 807F4B9C  4B A7 BA 6D */	bl cLib_addCalcAngleS2__FPssss
lbl_807F4BA0:
/* 807F4BA0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807F4BA4  4B B6 D6 79 */	bl _restgpr_26
/* 807F4BA8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 807F4BAC  7C 08 03 A6 */	mtlr r0
/* 807F4BB0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 807F4BB4  4E 80 00 20 */	blr 
