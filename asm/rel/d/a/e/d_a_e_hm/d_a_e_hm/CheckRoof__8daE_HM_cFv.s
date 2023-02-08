lbl_806E4620:
/* 806E4620  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 806E4624  7C 08 02 A6 */	mflr r0
/* 806E4628  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806E462C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806E4630  4B C7 DB AD */	bl _savegpr_29
/* 806E4634  7C 7F 1B 78 */	mr r31, r3
/* 806E4638  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E463C  3B C3 59 20 */	addi r30, r3, lit_3791@l /* 0x806E5920@l */
/* 806E4640  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806E4644  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 806E4648  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806E464C  EC 21 00 2A */	fadds f1, f1, f0
/* 806E4650  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E4654  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E4658  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806E465C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 806E4660  38 61 00 5C */	addi r3, r1, 0x5c
/* 806E4664  4B 99 36 05 */	bl __ct__11dBgS_LinChkFv
/* 806E4668  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806E466C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806E4670  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 806E4674  EC 21 00 28 */	fsubs f1, f1, f0
/* 806E4678  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E467C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E4680  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806E4684  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806E4688  38 61 00 5C */	addi r3, r1, 0x5c
/* 806E468C  38 81 00 30 */	addi r4, r1, 0x30
/* 806E4690  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806E4694  38 C0 00 00 */	li r6, 0
/* 806E4698  4B 99 36 CD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E469C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E46A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E46A4  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806E46A8  7F A3 EB 78 */	mr r3, r29
/* 806E46AC  38 81 00 5C */	addi r4, r1, 0x5c
/* 806E46B0  4B 98 FD 05 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806E46B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E46B8  41 82 01 90 */	beq lbl_806E4848
/* 806E46BC  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha /* 0x806E5BAC@ha */
/* 806E46C0  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x806E5BAC@l */
/* 806E46C4  90 01 00 58 */	stw r0, 0x58(r1)
/* 806E46C8  7F A3 EB 78 */	mr r3, r29
/* 806E46CC  38 81 00 70 */	addi r4, r1, 0x70
/* 806E46D0  38 A1 00 48 */	addi r5, r1, 0x48
/* 806E46D4  4B 99 00 71 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E46D8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806E46DC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806E46E0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806E46E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E46E8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806E46EC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806E46F0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806E46F4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806E46F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806E46FC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806E4700  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806E4704  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806E4708  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E470C  38 61 00 18 */	addi r3, r1, 0x18
/* 806E4710  38 81 00 0C */	addi r4, r1, 0xc
/* 806E4714  4B C6 2C 89 */	bl PSVECSquareDistance
/* 806E4718  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E471C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E4720  40 81 00 58 */	ble lbl_806E4778
/* 806E4724  FC 00 08 34 */	frsqrte f0, f1
/* 806E4728  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806E472C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4730  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806E4734  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4738  FC 01 00 32 */	fmul f0, f1, f0
/* 806E473C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4740  FC 02 00 32 */	fmul f0, f2, f0
/* 806E4744  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4748  FC 00 00 32 */	fmul f0, f0, f0
/* 806E474C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4750  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4754  FC 02 00 32 */	fmul f0, f2, f0
/* 806E4758  FC 44 00 32 */	fmul f2, f4, f0
/* 806E475C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4760  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4764  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4768  FC 02 00 32 */	fmul f0, f2, f0
/* 806E476C  FC 41 00 32 */	fmul f2, f1, f0
/* 806E4770  FC 40 10 18 */	frsp f2, f2
/* 806E4774  48 00 00 90 */	b lbl_806E4804
lbl_806E4778:
/* 806E4778  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806E477C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E4780  40 80 00 10 */	bge lbl_806E4790
/* 806E4784  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E4788  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E478C  48 00 00 78 */	b lbl_806E4804
lbl_806E4790:
/* 806E4790  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E4794  80 81 00 08 */	lwz r4, 8(r1)
/* 806E4798  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E479C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E47A0  7C 03 00 00 */	cmpw r3, r0
/* 806E47A4  41 82 00 14 */	beq lbl_806E47B8
/* 806E47A8  40 80 00 40 */	bge lbl_806E47E8
/* 806E47AC  2C 03 00 00 */	cmpwi r3, 0
/* 806E47B0  41 82 00 20 */	beq lbl_806E47D0
/* 806E47B4  48 00 00 34 */	b lbl_806E47E8
lbl_806E47B8:
/* 806E47B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E47BC  41 82 00 0C */	beq lbl_806E47C8
/* 806E47C0  38 00 00 01 */	li r0, 1
/* 806E47C4  48 00 00 28 */	b lbl_806E47EC
lbl_806E47C8:
/* 806E47C8  38 00 00 02 */	li r0, 2
/* 806E47CC  48 00 00 20 */	b lbl_806E47EC
lbl_806E47D0:
/* 806E47D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E47D4  41 82 00 0C */	beq lbl_806E47E0
/* 806E47D8  38 00 00 05 */	li r0, 5
/* 806E47DC  48 00 00 10 */	b lbl_806E47EC
lbl_806E47E0:
/* 806E47E0  38 00 00 03 */	li r0, 3
/* 806E47E4  48 00 00 08 */	b lbl_806E47EC
lbl_806E47E8:
/* 806E47E8  38 00 00 04 */	li r0, 4
lbl_806E47EC:
/* 806E47EC  2C 00 00 01 */	cmpwi r0, 1
/* 806E47F0  40 82 00 10 */	bne lbl_806E4800
/* 806E47F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E47F8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E47FC  48 00 00 08 */	b lbl_806E4804
lbl_806E4800:
/* 806E4800  FC 40 08 90 */	fmr f2, f1
lbl_806E4804:
/* 806E4804  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 806E4808  4B B8 2E 6D */	bl cM_atan2s__Fff
/* 806E480C  7C 03 00 D0 */	neg r0, r3
/* 806E4810  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 806E4814  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 806E4818  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 806E481C  4B B8 2E 59 */	bl cM_atan2s__Fff
/* 806E4820  B0 7F 05 CC */	sth r3, 0x5cc(r31)
/* 806E4824  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 806E4828  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806E482C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 806E4830  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806E4834  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 806E4838  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806E483C  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha /* 0x806E5BAC@ha */
/* 806E4840  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x806E5BAC@l */
/* 806E4844  90 01 00 58 */	stw r0, 0x58(r1)
lbl_806E4848:
/* 806E4848  38 61 00 5C */	addi r3, r1, 0x5c
/* 806E484C  38 80 FF FF */	li r4, -1
/* 806E4850  4B 99 34 8D */	bl __dt__11dBgS_LinChkFv
/* 806E4854  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806E4858  4B C7 D9 D1 */	bl _restgpr_29
/* 806E485C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 806E4860  7C 08 03 A6 */	mtlr r0
/* 806E4864  38 21 00 E0 */	addi r1, r1, 0xe0
/* 806E4868  4E 80 00 20 */	blr 
