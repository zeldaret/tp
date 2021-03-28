lbl_806D378C:
/* 806D378C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806D3790  7C 08 02 A6 */	mflr r0
/* 806D3794  90 01 00 64 */	stw r0, 0x64(r1)
/* 806D3798  39 61 00 60 */	addi r11, r1, 0x60
/* 806D379C  4B C8 EA 40 */	b _savegpr_29
/* 806D37A0  7C 7D 1B 78 */	mr r29, r3
/* 806D37A4  3C 80 80 6D */	lis r4, lit_3906@ha
/* 806D37A8  3B E4 79 A0 */	addi r31, r4, lit_3906@l
/* 806D37AC  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D37B0  2C 00 00 00 */	cmpwi r0, 0
/* 806D37B4  40 82 01 6C */	bne lbl_806D3920
/* 806D37B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D37BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D37C0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 806D37C4  7F C3 F3 78 */	mr r3, r30
/* 806D37C8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 806D37CC  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 806D37D0  7D 89 03 A6 */	mtctr r12
/* 806D37D4  4E 80 04 21 */	bctrl 
/* 806D37D8  C0 43 00 04 */	lfs f2, 4(r3)
/* 806D37DC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806D37E0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806D37E4  EC 01 00 2A */	fadds f0, f1, f0
/* 806D37E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806D37EC  40 81 00 B4 */	ble lbl_806D38A0
/* 806D37F0  38 61 00 20 */	addi r3, r1, 0x20
/* 806D37F4  38 9D 09 2C */	addi r4, r29, 0x92c
/* 806D37F8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806D37FC  4B B9 33 38 */	b __mi__4cXyzCFRC3Vec
/* 806D3800  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806D3804  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806D3808  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806D380C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806D3810  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806D3814  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806D3818  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806D381C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D3820  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806D3824  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806D3828  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806D382C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806D3830  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 806D3834  EC 01 00 2A */	fadds f0, f1, f0
/* 806D3838  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806D383C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806D3840  38 9D 05 38 */	addi r4, r29, 0x538
/* 806D3844  7C 65 1B 78 */	mr r5, r3
/* 806D3848  4B C7 38 6C */	b PSVECSubtract
/* 806D384C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806D3850  4B B9 37 8C */	b normalizeRS__4cXyzFv
/* 806D3854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806D3858  41 82 00 84 */	beq lbl_806D38DC
/* 806D385C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 806D3860  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 806D3864  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806D3868  EC 02 00 32 */	fmuls f0, f2, f0
/* 806D386C  EC 01 00 2A */	fadds f0, f1, f0
/* 806D3870  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806D3874  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 806D3878  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806D387C  EC 02 00 32 */	fmuls f0, f2, f0
/* 806D3880  EC 01 00 2A */	fadds f0, f1, f0
/* 806D3884  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806D3888  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 806D388C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806D3890  EC 02 00 32 */	fmuls f0, f2, f0
/* 806D3894  EC 01 00 2A */	fadds f0, f1, f0
/* 806D3898  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806D389C  48 00 00 40 */	b lbl_806D38DC
lbl_806D38A0:
/* 806D38A0  7F C3 F3 78 */	mr r3, r30
/* 806D38A4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 806D38A8  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 806D38AC  7D 89 03 A6 */	mtctr r12
/* 806D38B0  4E 80 04 21 */	bctrl 
/* 806D38B4  7C 64 1B 78 */	mr r4, r3
/* 806D38B8  38 61 00 14 */	addi r3, r1, 0x14
/* 806D38BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806D38C0  4B B9 32 74 */	b __mi__4cXyzCFRC3Vec
/* 806D38C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806D38C8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806D38CC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806D38D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806D38D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806D38D8  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_806D38DC:
/* 806D38DC  7F C3 F3 78 */	mr r3, r30
/* 806D38E0  28 1D 00 00 */	cmplwi r29, 0
/* 806D38E4  41 82 00 0C */	beq lbl_806D38F0
/* 806D38E8  80 9D 00 04 */	lwz r4, 4(r29)
/* 806D38EC  48 00 00 08 */	b lbl_806D38F4
lbl_806D38F0:
/* 806D38F0  38 80 FF FF */	li r4, -1
lbl_806D38F4:
/* 806D38F4  38 A1 00 38 */	addi r5, r1, 0x38
/* 806D38F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806D38FC  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 806D3900  7D 89 03 A6 */	mtctr r12
/* 806D3904  4E 80 04 21 */	bctrl 
/* 806D3908  38 00 00 00 */	li r0, 0
/* 806D390C  90 1D 08 30 */	stw r0, 0x830(r29)
/* 806D3910  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D3914  38 03 00 01 */	addi r0, r3, 1
/* 806D3918  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D391C  48 00 00 58 */	b lbl_806D3974
lbl_806D3920:
/* 806D3920  2C 00 FF FF */	cmpwi r0, -1
/* 806D3924  40 82 00 1C */	bne lbl_806D3940
/* 806D3928  38 00 00 0A */	li r0, 0xa
/* 806D392C  98 1D 0A 72 */	stb r0, 0xa72(r29)
/* 806D3930  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 806D3934  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 806D3938  90 1D 08 30 */	stw r0, 0x830(r29)
/* 806D393C  48 00 00 38 */	b lbl_806D3974
lbl_806D3940:
/* 806D3940  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 806D3944  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 806D3948  40 82 00 2C */	bne lbl_806D3974
/* 806D394C  3C 80 80 6D */	lis r4, lit_4892@ha
/* 806D3950  38 A4 7C 64 */	addi r5, r4, lit_4892@l
/* 806D3954  80 85 00 00 */	lwz r4, 0(r5)
/* 806D3958  80 05 00 04 */	lwz r0, 4(r5)
/* 806D395C  90 81 00 08 */	stw r4, 8(r1)
/* 806D3960  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D3964  80 05 00 08 */	lwz r0, 8(r5)
/* 806D3968  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D396C  38 81 00 08 */	addi r4, r1, 8
/* 806D3970  4B FF D9 59 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D3974:
/* 806D3974  39 61 00 60 */	addi r11, r1, 0x60
/* 806D3978  4B C8 E8 B0 */	b _restgpr_29
/* 806D397C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806D3980  7C 08 03 A6 */	mtlr r0
/* 806D3984  38 21 00 60 */	addi r1, r1, 0x60
/* 806D3988  4E 80 00 20 */	blr 
