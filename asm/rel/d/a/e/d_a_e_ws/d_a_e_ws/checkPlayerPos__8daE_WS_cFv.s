lbl_807E4224:
/* 807E4224  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807E4228  7C 08 02 A6 */	mflr r0
/* 807E422C  90 01 01 14 */	stw r0, 0x114(r1)
/* 807E4230  39 61 01 10 */	addi r11, r1, 0x110
/* 807E4234  4B B7 DF A9 */	bl _savegpr_29
/* 807E4238  7C 7E 1B 78 */	mr r30, r3
/* 807E423C  3C 60 80 7E */	lis r3, lit_3802@ha /* 0x807E7300@ha */
/* 807E4240  3B E3 73 00 */	addi r31, r3, lit_3802@l /* 0x807E7300@l */
/* 807E4244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E4248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E424C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807E4250  38 80 00 00 */	li r4, 0
/* 807E4254  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E4258  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 807E425C  7D 89 03 A6 */	mtctr r12
/* 807E4260  4E 80 04 21 */	bctrl 
/* 807E4264  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E4268  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E426C  4B B6 22 45 */	bl PSMTXCopy
/* 807E4270  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E4274  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E4278  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807E427C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807E4280  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807E4284  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807E4288  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807E428C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807E4290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E4294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E4298  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E429C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E42A0  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 807E42A4  7D 89 03 A6 */	mtctr r12
/* 807E42A8  4E 80 04 21 */	bctrl 
/* 807E42AC  2C 03 00 00 */	cmpwi r3, 0
/* 807E42B0  40 82 00 74 */	bne lbl_807E4324
/* 807E42B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E42B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E42BC  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 807E42C0  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 807E42C4  40 82 00 60 */	bne lbl_807E4324
/* 807E42C8  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 807E42CC  40 82 00 58 */	bne lbl_807E4324
/* 807E42D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E42D4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807E42D8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E42DC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807E42E0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E42E4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807E42E8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 807E42EC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E42F0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 807E42F4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E42F8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807E42FC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807E4300  7F C3 F3 78 */	mr r3, r30
/* 807E4304  38 81 00 74 */	addi r4, r1, 0x74
/* 807E4308  38 A1 00 68 */	addi r5, r1, 0x68
/* 807E430C  4B FF FC A1 */	bl calcTargetDist__8daE_WS_cF4cXyz4cXyz
/* 807E4310  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807E4314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E4318  7C 00 00 26 */	mfcr r0
/* 807E431C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 807E4320  41 82 02 2C */	beq lbl_807E454C
lbl_807E4324:
/* 807E4324  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 807E4328  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807E432C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 807E4330  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807E4334  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807E4338  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807E433C  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 807E4340  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E4344  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 807E4348  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E434C  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 807E4350  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807E4354  7F C3 F3 78 */	mr r3, r30
/* 807E4358  38 81 00 5C */	addi r4, r1, 0x5c
/* 807E435C  38 A1 00 50 */	addi r5, r1, 0x50
/* 807E4360  4B FF FE 0D */	bl checkInSearchRange__8daE_WS_cF4cXyz4cXyz
/* 807E4364  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E4368  41 82 01 E4 */	beq lbl_807E454C
/* 807E436C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E4370  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807E4374  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E4378  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807E437C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E4380  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807E4384  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 807E4388  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807E438C  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 807E4390  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807E4394  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 807E4398  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807E439C  7F C3 F3 78 */	mr r3, r30
/* 807E43A0  38 81 00 44 */	addi r4, r1, 0x44
/* 807E43A4  38 A1 00 38 */	addi r5, r1, 0x38
/* 807E43A8  4B FF FD C5 */	bl checkInSearchRange__8daE_WS_cF4cXyz4cXyz
/* 807E43AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E43B0  41 82 01 9C */	beq lbl_807E454C
/* 807E43B4  38 61 00 98 */	addi r3, r1, 0x98
/* 807E43B8  4B 89 31 C5 */	bl __ct__11dBgS_GndChkFv
/* 807E43BC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807E43C0  4B 82 89 A5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 807E43C4  38 7E 06 6E */	addi r3, r30, 0x66e
/* 807E43C8  4B 82 8B 7D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807E43CC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807E43D0  4B 82 8B 75 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807E43D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E43D8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807E43DC  FC 60 08 90 */	fmr f3, f1
/* 807E43E0  4B 82 89 BD */	bl transM__14mDoMtx_stack_cFfff
/* 807E43E4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807E43E8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807E43EC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807E43F0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807E43F4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807E43F8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807E43FC  38 61 00 98 */	addi r3, r1, 0x98
/* 807E4400  38 81 00 80 */	addi r4, r1, 0x80
/* 807E4404  4B A8 39 25 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 807E4408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E440C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E4410  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807E4414  38 81 00 98 */	addi r4, r1, 0x98
/* 807E4418  4B 89 00 89 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807E441C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 807E4420  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 807E4424  FC 00 08 18 */	frsp f0, f1
/* 807E4428  EC 22 00 28 */	fsubs f1, f2, f0
/* 807E442C  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E75C8@ha */
/* 807E4430  38 63 75 C8 */	addi r3, r3, l_HIO@l /* 0x807E75C8@l */
/* 807E4434  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E4438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E443C  40 81 01 04 */	ble lbl_807E4540
/* 807E4440  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E4444  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807E4448  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E444C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807E4450  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E4454  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807E4458  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 807E445C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E4460  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 807E4464  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E4468  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807E446C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807E4470  7F C3 F3 78 */	mr r3, r30
/* 807E4474  38 81 00 2C */	addi r4, r1, 0x2c
/* 807E4478  38 A1 00 20 */	addi r5, r1, 0x20
/* 807E447C  4B FF FC 4D */	bl calcTargetAngle__8daE_WS_cF4cXyz4cXyz
/* 807E4480  7C 64 1B 78 */	mr r4, r3
/* 807E4484  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E4488  4B A8 C9 9D */	bl cLib_distanceAngleS__Fss
/* 807E448C  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 807E4490  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 807E4494  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 807E4498  3C 00 43 30 */	lis r0, 0x4330
/* 807E449C  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 807E44A0  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 807E44A4  EC 20 08 28 */	fsubs f1, f0, f1
/* 807E44A8  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E75C8@ha */
/* 807E44AC  38 63 75 C8 */	addi r3, r3, l_HIO@l /* 0x807E75C8@l */
/* 807E44B0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807E44B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E44B8  7C 00 00 26 */	mfcr r0
/* 807E44BC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 807E44C0  41 82 00 18 */	beq lbl_807E44D8
/* 807E44C4  38 61 00 98 */	addi r3, r1, 0x98
/* 807E44C8  38 80 FF FF */	li r4, -1
/* 807E44CC  4B 89 31 25 */	bl __dt__11dBgS_GndChkFv
/* 807E44D0  38 60 00 01 */	li r3, 1
/* 807E44D4  48 00 00 7C */	b lbl_807E4550
lbl_807E44D8:
/* 807E44D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E44DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E44E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E44E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E44E8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E44EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E44F0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 807E44F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E44F8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 807E44FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E4500  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807E4504  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E4508  7F C3 F3 78 */	mr r3, r30
/* 807E450C  38 81 00 14 */	addi r4, r1, 0x14
/* 807E4510  38 A1 00 08 */	addi r5, r1, 8
/* 807E4514  4B FF FA 99 */	bl calcTargetDist__8daE_WS_cF4cXyz4cXyz
/* 807E4518  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807E451C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E4520  7C 00 00 26 */	mfcr r0
/* 807E4524  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 807E4528  41 82 00 18 */	beq lbl_807E4540
/* 807E452C  38 61 00 98 */	addi r3, r1, 0x98
/* 807E4530  38 80 FF FF */	li r4, -1
/* 807E4534  4B 89 30 BD */	bl __dt__11dBgS_GndChkFv
/* 807E4538  38 60 00 02 */	li r3, 2
/* 807E453C  48 00 00 14 */	b lbl_807E4550
lbl_807E4540:
/* 807E4540  38 61 00 98 */	addi r3, r1, 0x98
/* 807E4544  38 80 FF FF */	li r4, -1
/* 807E4548  4B 89 30 A9 */	bl __dt__11dBgS_GndChkFv
lbl_807E454C:
/* 807E454C  38 60 00 00 */	li r3, 0
lbl_807E4550:
/* 807E4550  39 61 01 10 */	addi r11, r1, 0x110
/* 807E4554  4B B7 DC D5 */	bl _restgpr_29
/* 807E4558  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807E455C  7C 08 03 A6 */	mtlr r0
/* 807E4560  38 21 01 10 */	addi r1, r1, 0x110
/* 807E4564  4E 80 00 20 */	blr 
