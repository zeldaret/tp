lbl_8070E36C:
/* 8070E36C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8070E370  7C 08 02 A6 */	mflr r0
/* 8070E374  90 01 00 44 */	stw r0, 0x44(r1)
/* 8070E378  39 61 00 40 */	addi r11, r1, 0x40
/* 8070E37C  4B C5 3E 5D */	bl _savegpr_28
/* 8070E380  7C 7E 1B 78 */	mr r30, r3
/* 8070E384  3C 80 80 71 */	lis r4, lit_3828@ha /* 0x80713974@ha */
/* 8070E388  3B E4 39 74 */	addi r31, r4, lit_3828@l /* 0x80713974@l */
/* 8070E38C  80 83 05 DC */	lwz r4, 0x5dc(r3)
/* 8070E390  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8070E394  FC 00 00 1E */	fctiwz f0, f0
/* 8070E398  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070E39C  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8070E3A0  38 00 00 01 */	li r0, 1
/* 8070E3A4  98 03 06 D4 */	stb r0, 0x6d4(r3)
/* 8070E3A8  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070E3AC  2C 00 00 01 */	cmpwi r0, 1
/* 8070E3B0  41 82 00 58 */	beq lbl_8070E408
/* 8070E3B4  40 80 01 9C */	bge lbl_8070E550
/* 8070E3B8  2C 00 00 00 */	cmpwi r0, 0
/* 8070E3BC  40 80 00 08 */	bge lbl_8070E3C4
/* 8070E3C0  48 00 01 90 */	b lbl_8070E550
lbl_8070E3C4:
/* 8070E3C4  38 80 00 05 */	li r4, 5
/* 8070E3C8  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8070E3CC  38 A0 00 00 */	li r5, 0
/* 8070E3D0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070E3D4  4B FF C4 59 */	bl anm_init__FP10e_mf_classifUcf
/* 8070E3D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703DB@ha */
/* 8070E3DC  38 03 03 DB */	addi r0, r3, 0x03DB /* 0x000703DB@l */
/* 8070E3E0  90 01 00 08 */	stw r0, 8(r1)
/* 8070E3E4  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070E3E8  38 81 00 08 */	addi r4, r1, 8
/* 8070E3EC  38 A0 FF FF */	li r5, -1
/* 8070E3F0  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070E3F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070E3F8  7D 89 03 A6 */	mtctr r12
/* 8070E3FC  4E 80 04 21 */	bctrl 
/* 8070E400  38 00 00 01 */	li r0, 1
/* 8070E404  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070E408:
/* 8070E408  2C 1D 00 0F */	cmpwi r29, 0xf
/* 8070E40C  41 80 00 14 */	blt lbl_8070E420
/* 8070E410  2C 1D 00 22 */	cmpwi r29, 0x22
/* 8070E414  41 80 00 64 */	blt lbl_8070E478
/* 8070E418  2C 1D 00 2B */	cmpwi r29, 0x2b
/* 8070E41C  41 81 00 5C */	bgt lbl_8070E478
lbl_8070E420:
/* 8070E420  AB 9E 04 DE */	lha r28, 0x4de(r30)
/* 8070E424  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8070E428  A8 9E 06 B4 */	lha r4, 0x6b4(r30)
/* 8070E42C  38 A0 00 02 */	li r5, 2
/* 8070E430  38 C0 08 00 */	li r6, 0x800
/* 8070E434  4B B6 21 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 8070E438  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8070E43C  7F 80 E0 50 */	subf r28, r0, r28
/* 8070E440  57 80 08 3C */	slwi r0, r28, 1
/* 8070E444  7C 1C 07 34 */	extsh r28, r0
/* 8070E448  2C 1C 10 00 */	cmpwi r28, 0x1000
/* 8070E44C  40 81 00 0C */	ble lbl_8070E458
/* 8070E450  3B 80 10 00 */	li r28, 0x1000
/* 8070E454  48 00 00 10 */	b lbl_8070E464
lbl_8070E458:
/* 8070E458  2C 1C F0 00 */	cmpwi r28, -4096
/* 8070E45C  40 80 00 08 */	bge lbl_8070E464
/* 8070E460  3B 80 F0 00 */	li r28, -4096
lbl_8070E464:
/* 8070E464  38 7E 08 06 */	addi r3, r30, 0x806
/* 8070E468  7F 84 E3 78 */	mr r4, r28
/* 8070E46C  38 A0 00 02 */	li r5, 2
/* 8070E470  38 C0 04 00 */	li r6, 0x400
/* 8070E474  4B B6 21 95 */	bl cLib_addCalcAngleS2__FPssss
lbl_8070E478:
/* 8070E478  2C 1D 00 0F */	cmpwi r29, 0xf
/* 8070E47C  41 80 00 1C */	blt lbl_8070E498
/* 8070E480  2C 1D 00 14 */	cmpwi r29, 0x14
/* 8070E484  41 81 00 14 */	bgt lbl_8070E498
/* 8070E488  38 00 00 01 */	li r0, 1
/* 8070E48C  98 1E 06 CF */	stb r0, 0x6cf(r30)
/* 8070E490  38 00 00 00 */	li r0, 0
/* 8070E494  98 1E 06 CE */	stb r0, 0x6ce(r30)
lbl_8070E498:
/* 8070E498  2C 1D 00 22 */	cmpwi r29, 0x22
/* 8070E49C  41 80 00 74 */	blt lbl_8070E510
/* 8070E4A0  2C 1D 00 2B */	cmpwi r29, 0x2b
/* 8070E4A4  41 81 00 6C */	bgt lbl_8070E510
/* 8070E4A8  38 00 00 01 */	li r0, 1
/* 8070E4AC  98 1E 06 CF */	stb r0, 0x6cf(r30)
/* 8070E4B0  98 1E 06 CE */	stb r0, 0x6ce(r30)
/* 8070E4B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070E4B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070E4BC  80 63 00 00 */	lwz r3, 0(r3)
/* 8070E4C0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8070E4C4  4B 8F DF 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 8070E4C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070E4CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070E4D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070E4D4  A8 1E 06 C2 */	lha r0, 0x6c2(r30)
/* 8070E4D8  2C 00 00 00 */	cmpwi r0, 0
/* 8070E4DC  41 82 00 10 */	beq lbl_8070E4EC
/* 8070E4E0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8070E4E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070E4E8  48 00 00 0C */	b lbl_8070E4F4
lbl_8070E4EC:
/* 8070E4EC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8070E4F0  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8070E4F4:
/* 8070E4F4  38 61 00 18 */	addi r3, r1, 0x18
/* 8070E4F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8070E4FC  4B B6 29 F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8070E500  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8070E504  38 81 00 0C */	addi r4, r1, 0xc
/* 8070E508  7C 65 1B 78 */	mr r5, r3
/* 8070E50C  4B C3 8B 85 */	bl PSVECAdd
lbl_8070E510:
/* 8070E510  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070E514  38 80 00 01 */	li r4, 1
/* 8070E518  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070E51C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070E520  40 82 00 18 */	bne lbl_8070E538
/* 8070E524  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070E528  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070E52C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070E530  41 82 00 08 */	beq lbl_8070E538
/* 8070E534  38 80 00 00 */	li r4, 0
lbl_8070E538:
/* 8070E538  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070E53C  41 82 00 14 */	beq lbl_8070E550
/* 8070E540  38 00 00 03 */	li r0, 3
/* 8070E544  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070E548  38 00 00 00 */	li r0, 0
/* 8070E54C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070E550:
/* 8070E550  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070E554  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070E558  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8070E55C  4B B6 15 25 */	bl cLib_addCalc0__FPfff
/* 8070E560  88 1E 06 CF */	lbz r0, 0x6cf(r30)
/* 8070E564  7C 00 07 75 */	extsb. r0, r0
/* 8070E568  41 82 00 60 */	beq lbl_8070E5C8
/* 8070E56C  7F C3 F3 78 */	mr r3, r30
/* 8070E570  4B FF FD 9D */	bl at_hit_check__FP10e_mf_class
/* 8070E574  28 03 00 00 */	cmplwi r3, 0
/* 8070E578  41 82 00 50 */	beq lbl_8070E5C8
/* 8070E57C  A8 03 00 08 */	lha r0, 8(r3)
/* 8070E580  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8070E584  40 82 00 44 */	bne lbl_8070E5C8
/* 8070E588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070E58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070E590  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070E594  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8070E598  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8070E59C  7D 89 03 A6 */	mtctr r12
/* 8070E5A0  4E 80 04 21 */	bctrl 
/* 8070E5A4  2C 03 00 00 */	cmpwi r3, 0
/* 8070E5A8  41 82 00 20 */	beq lbl_8070E5C8
/* 8070E5AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070E5B0  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070E5B4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8070E5B8  38 00 00 03 */	li r0, 3
/* 8070E5BC  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070E5C0  38 00 00 00 */	li r0, 0
/* 8070E5C4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070E5C8:
/* 8070E5C8  39 61 00 40 */	addi r11, r1, 0x40
/* 8070E5CC  4B C5 3C 59 */	bl _restgpr_28
/* 8070E5D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8070E5D4  7C 08 03 A6 */	mtlr r0
/* 8070E5D8  38 21 00 40 */	addi r1, r1, 0x40
/* 8070E5DC  4E 80 00 20 */	blr 
