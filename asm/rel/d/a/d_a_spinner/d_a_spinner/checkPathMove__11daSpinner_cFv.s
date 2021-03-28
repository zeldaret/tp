lbl_804D3774:
/* 804D3774  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804D3778  7C 08 02 A6 */	mflr r0
/* 804D377C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804D3780  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804D3784  4B E8 EA 44 */	b _savegpr_24
/* 804D3788  7C 7E 1B 78 */	mr r30, r3
/* 804D378C  3C 60 80 4D */	lis r3, lit_3768@ha
/* 804D3790  3B E3 4D 90 */	addi r31, r3, lit_3768@l
/* 804D3794  80 1E 0A 64 */	lwz r0, 0xa64(r30)
/* 804D3798  28 00 00 00 */	cmplwi r0, 0
/* 804D379C  41 82 00 0C */	beq lbl_804D37A8
/* 804D37A0  38 60 00 01 */	li r3, 1
/* 804D37A4  48 00 05 A4 */	b lbl_804D3D48
lbl_804D37A8:
/* 804D37A8  38 7E 09 80 */	addi r3, r30, 0x980
/* 804D37AC  4B BA FE DC */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 804D37B0  7C 7D 1B 78 */	mr r29, r3
/* 804D37B4  38 7E 09 28 */	addi r3, r30, 0x928
/* 804D37B8  4B BB 0B 08 */	b ChkAtHit__12dCcD_GObjInfFv
/* 804D37BC  28 03 00 00 */	cmplwi r3, 0
/* 804D37C0  41 82 05 7C */	beq lbl_804D3D3C
/* 804D37C4  88 1E 0A 6F */	lbz r0, 0xa6f(r30)
/* 804D37C8  28 00 00 00 */	cmplwi r0, 0
/* 804D37CC  40 82 05 70 */	bne lbl_804D3D3C
/* 804D37D0  28 1D 00 00 */	cmplwi r29, 0
/* 804D37D4  41 82 05 68 */	beq lbl_804D3D3C
/* 804D37D8  A8 1D 00 08 */	lha r0, 8(r29)
/* 804D37DC  2C 00 02 C6 */	cmpwi r0, 0x2c6
/* 804D37E0  40 82 05 5C */	bne lbl_804D3D3C
/* 804D37E4  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 804D37E8  80 1E 0A 68 */	lwz r0, 0xa68(r30)
/* 804D37EC  7C 03 00 40 */	cmplw r3, r0
/* 804D37F0  40 82 00 0C */	bne lbl_804D37FC
/* 804D37F4  38 60 00 00 */	li r3, 0
/* 804D37F8  48 00 05 50 */	b lbl_804D3D48
lbl_804D37FC:
/* 804D37FC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D3800  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804D3804  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804D3808  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D380C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804D3810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D3814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D3818  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804D381C  38 80 00 02 */	li r4, 2
/* 804D3820  38 A0 00 01 */	li r5, 1
/* 804D3824  38 C1 00 18 */	addi r6, r1, 0x18
/* 804D3828  4B B9 C1 FC */	b StartShock__12dVibration_cFii4cXyz
/* 804D382C  80 1D 05 6C */	lwz r0, 0x56c(r29)
/* 804D3830  90 1E 0A 64 */	stw r0, 0xa64(r30)
/* 804D3834  80 1E 0A 64 */	lwz r0, 0xa64(r30)
/* 804D3838  90 1E 0A 68 */	stw r0, 0xa68(r30)
/* 804D383C  38 00 00 00 */	li r0, 0
/* 804D3840  98 1E 0A 6D */	stb r0, 0xa6d(r30)
/* 804D3844  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804D3848  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804D384C  A0 9D 06 EC */	lhz r4, 0x6ec(r29)
/* 804D3850  7C 99 23 78 */	mr r25, r4
/* 804D3854  80 BE 0A 64 */	lwz r5, 0xa64(r30)
/* 804D3858  A0 65 00 00 */	lhz r3, 0(r5)
/* 804D385C  38 03 FF FF */	addi r0, r3, -1
/* 804D3860  7C 04 00 00 */	cmpw r4, r0
/* 804D3864  41 82 00 0C */	beq lbl_804D3870
/* 804D3868  3B 64 00 01 */	addi r27, r4, 1
/* 804D386C  48 00 00 20 */	b lbl_804D388C
lbl_804D3870:
/* 804D3870  88 05 00 05 */	lbz r0, 5(r5)
/* 804D3874  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804D3878  41 82 00 0C */	beq lbl_804D3884
/* 804D387C  3B 60 00 00 */	li r27, 0
/* 804D3880  48 00 00 0C */	b lbl_804D388C
lbl_804D3884:
/* 804D3884  7C 9B 23 78 */	mr r27, r4
/* 804D3888  3B 24 FF FF */	addi r25, r4, -1
lbl_804D388C:
/* 804D388C  80 65 00 08 */	lwz r3, 8(r5)
/* 804D3890  57 20 20 36 */	slwi r0, r25, 4
/* 804D3894  7C 83 02 14 */	add r4, r3, r0
/* 804D3898  57 60 20 36 */	slwi r0, r27, 4
/* 804D389C  7C 63 02 14 */	add r3, r3, r0
/* 804D38A0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 804D38A4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 804D38A8  EC 61 00 28 */	fsubs f3, f1, f0
/* 804D38AC  C0 23 00 08 */	lfs f1, 8(r3)
/* 804D38B0  C0 04 00 08 */	lfs f0, 8(r4)
/* 804D38B4  EC 41 00 28 */	fsubs f2, f1, f0
/* 804D38B8  C0 23 00 04 */	lfs f1, 4(r3)
/* 804D38BC  C0 04 00 04 */	lfs f0, 4(r4)
/* 804D38C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D38C4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804D38C8  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 804D38CC  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 804D38D0  38 61 00 54 */	addi r3, r1, 0x54
/* 804D38D4  4B D9 38 54 */	b atan2sX_Z__4cXyzCFv
/* 804D38D8  7C 7C 1B 78 */	mr r28, r3
/* 804D38DC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804D38E0  4B B3 94 84 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804D38E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D38E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D38EC  7F 84 E3 78 */	mr r4, r28
/* 804D38F0  4B B3 8B 44 */	b mDoMtx_YrotM__FPA4_fs
/* 804D38F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D38F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D38FC  38 9F 00 88 */	addi r4, r31, 0x88
/* 804D3900  38 A1 00 48 */	addi r5, r1, 0x48
/* 804D3904  4B E7 34 68 */	b PSMTXMultVec
/* 804D3908  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D390C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D3910  38 9F 00 94 */	addi r4, r31, 0x94
/* 804D3914  38 A1 00 3C */	addi r5, r1, 0x3c
/* 804D3918  4B E7 34 54 */	b PSMTXMultVec
/* 804D391C  3B 40 00 00 */	li r26, 0
/* 804D3920  3B 00 00 01 */	li r24, 1
/* 804D3924  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804D3928  38 03 4F 3C */	addi r0, r3, __vt__8cM3dGPla@l
/* 804D392C  90 01 00 70 */	stw r0, 0x70(r1)
/* 804D3930  7F C3 F3 78 */	mr r3, r30
/* 804D3934  38 81 00 48 */	addi r4, r1, 0x48
/* 804D3938  38 A1 00 3C */	addi r5, r1, 0x3c
/* 804D393C  4B FF FD B9 */	bl checkLineWallHit__11daSpinner_cFP4cXyzP4cXyz
/* 804D3940  2C 03 00 00 */	cmpwi r3, 0
/* 804D3944  41 82 00 34 */	beq lbl_804D3978
/* 804D3948  3B 40 00 01 */	li r26, 1
/* 804D394C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D3950  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D3954  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 804D3958  38 A1 00 30 */	addi r5, r1, 0x30
/* 804D395C  4B E7 34 10 */	b PSMTXMultVec
/* 804D3960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D3964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D3968  38 9F 00 B8 */	addi r4, r31, 0xb8
/* 804D396C  38 A1 00 24 */	addi r5, r1, 0x24
/* 804D3970  4B E7 33 FC */	b PSMTXMultVec
/* 804D3974  48 00 01 18 */	b lbl_804D3A8C
lbl_804D3978:
/* 804D3978  7F C3 F3 78 */	mr r3, r30
/* 804D397C  38 81 00 3C */	addi r4, r1, 0x3c
/* 804D3980  38 A1 00 48 */	addi r5, r1, 0x48
/* 804D3984  4B FF FD 71 */	bl checkLineWallHit__11daSpinner_cFP4cXyzP4cXyz
/* 804D3988  2C 03 00 00 */	cmpwi r3, 0
/* 804D398C  41 82 00 38 */	beq lbl_804D39C4
/* 804D3990  3B 40 00 01 */	li r26, 1
/* 804D3994  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D3998  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D399C  38 9F 00 AC */	addi r4, r31, 0xac
/* 804D39A0  38 A1 00 30 */	addi r5, r1, 0x30
/* 804D39A4  4B E7 33 C8 */	b PSMTXMultVec
/* 804D39A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D39AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D39B0  38 9F 00 C4 */	addi r4, r31, 0xc4
/* 804D39B4  38 A1 00 24 */	addi r5, r1, 0x24
/* 804D39B8  4B E7 33 B4 */	b PSMTXMultVec
/* 804D39BC  3B 00 00 00 */	li r24, 0
/* 804D39C0  48 00 00 CC */	b lbl_804D3A8C
lbl_804D39C4:
/* 804D39C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D39C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D39CC  38 80 80 00 */	li r4, -32768
/* 804D39D0  4B B3 8A 64 */	b mDoMtx_YrotM__FPA4_fs
/* 804D39D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D39D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D39DC  38 9F 00 94 */	addi r4, r31, 0x94
/* 804D39E0  38 A1 00 48 */	addi r5, r1, 0x48
/* 804D39E4  4B E7 33 88 */	b PSMTXMultVec
/* 804D39E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D39EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D39F0  38 9F 00 88 */	addi r4, r31, 0x88
/* 804D39F4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 804D39F8  4B E7 33 74 */	b PSMTXMultVec
/* 804D39FC  7F C3 F3 78 */	mr r3, r30
/* 804D3A00  38 81 00 48 */	addi r4, r1, 0x48
/* 804D3A04  38 A1 00 3C */	addi r5, r1, 0x3c
/* 804D3A08  4B FF FC ED */	bl checkLineWallHit__11daSpinner_cFP4cXyzP4cXyz
/* 804D3A0C  2C 03 00 00 */	cmpwi r3, 0
/* 804D3A10  41 82 00 34 */	beq lbl_804D3A44
/* 804D3A14  3B 40 00 01 */	li r26, 1
/* 804D3A18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D3A1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D3A20  38 9F 00 AC */	addi r4, r31, 0xac
/* 804D3A24  38 A1 00 30 */	addi r5, r1, 0x30
/* 804D3A28  4B E7 33 44 */	b PSMTXMultVec
/* 804D3A2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D3A30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D3A34  38 9F 00 C4 */	addi r4, r31, 0xc4
/* 804D3A38  38 A1 00 24 */	addi r5, r1, 0x24
/* 804D3A3C  4B E7 33 30 */	b PSMTXMultVec
/* 804D3A40  48 00 00 4C */	b lbl_804D3A8C
lbl_804D3A44:
/* 804D3A44  7F C3 F3 78 */	mr r3, r30
/* 804D3A48  38 81 00 3C */	addi r4, r1, 0x3c
/* 804D3A4C  38 A1 00 48 */	addi r5, r1, 0x48
/* 804D3A50  4B FF FC A5 */	bl checkLineWallHit__11daSpinner_cFP4cXyzP4cXyz
/* 804D3A54  2C 03 00 00 */	cmpwi r3, 0
/* 804D3A58  41 82 00 34 */	beq lbl_804D3A8C
/* 804D3A5C  3B 40 00 01 */	li r26, 1
/* 804D3A60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D3A64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D3A68  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 804D3A6C  38 A1 00 30 */	addi r5, r1, 0x30
/* 804D3A70  4B E7 32 FC */	b PSMTXMultVec
/* 804D3A74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D3A78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D3A7C  38 9F 00 B8 */	addi r4, r31, 0xb8
/* 804D3A80  38 A1 00 24 */	addi r5, r1, 0x24
/* 804D3A84  4B E7 32 E8 */	b PSMTXMultVec
/* 804D3A88  3B 00 00 00 */	li r24, 0
lbl_804D3A8C:
/* 804D3A8C  88 1D 06 E8 */	lbz r0, 0x6e8(r29)
/* 804D3A90  28 00 00 01 */	cmplwi r0, 1
/* 804D3A94  41 82 00 20 */	beq lbl_804D3AB4
/* 804D3A98  28 00 00 00 */	cmplwi r0, 0
/* 804D3A9C  40 82 00 50 */	bne lbl_804D3AEC
/* 804D3AA0  7F 83 E3 78 */	mr r3, r28
/* 804D3AA4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804D3AA8  4B D9 D3 7C */	b cLib_distanceAngleS__Fss
/* 804D3AAC  2C 03 40 00 */	cmpwi r3, 0x4000
/* 804D3AB0  40 80 00 3C */	bge lbl_804D3AEC
lbl_804D3AB4:
/* 804D3AB4  B3 9E 04 DE */	sth r28, 0x4de(r30)
/* 804D3AB8  38 61 00 54 */	addi r3, r1, 0x54
/* 804D3ABC  4B D9 36 94 */	b atan2sY_XZ__4cXyzCFv
/* 804D3AC0  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 804D3AC4  9B 3E 0A 72 */	stb r25, 0xa72(r30)
/* 804D3AC8  38 00 00 01 */	li r0, 1
/* 804D3ACC  98 1E 0A 73 */	stb r0, 0xa73(r30)
/* 804D3AD0  2C 18 00 00 */	cmpwi r24, 0
/* 804D3AD4  41 82 00 10 */	beq lbl_804D3AE4
/* 804D3AD8  38 00 FF FF */	li r0, -1
/* 804D3ADC  98 1E 0A 76 */	stb r0, 0xa76(r30)
/* 804D3AE0  48 00 01 54 */	b lbl_804D3C34
lbl_804D3AE4:
/* 804D3AE4  98 1E 0A 76 */	stb r0, 0xa76(r30)
/* 804D3AE8  48 00 01 4C */	b lbl_804D3C34
lbl_804D3AEC:
/* 804D3AEC  3C 7C 00 01 */	addis r3, r28, 1
/* 804D3AF0  38 03 80 00 */	addi r0, r3, -32768
/* 804D3AF4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804D3AF8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804D3AFC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804D3B00  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804D3B04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804D3B08  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804D3B0C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D3B10  38 61 00 0C */	addi r3, r1, 0xc
/* 804D3B14  4B E7 36 24 */	b PSVECSquareMag
/* 804D3B18  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804D3B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D3B20  40 81 00 58 */	ble lbl_804D3B78
/* 804D3B24  FC 00 08 34 */	frsqrte f0, f1
/* 804D3B28  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 804D3B2C  FC 44 00 32 */	fmul f2, f4, f0
/* 804D3B30  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 804D3B34  FC 00 00 32 */	fmul f0, f0, f0
/* 804D3B38  FC 01 00 32 */	fmul f0, f1, f0
/* 804D3B3C  FC 03 00 28 */	fsub f0, f3, f0
/* 804D3B40  FC 02 00 32 */	fmul f0, f2, f0
/* 804D3B44  FC 44 00 32 */	fmul f2, f4, f0
/* 804D3B48  FC 00 00 32 */	fmul f0, f0, f0
/* 804D3B4C  FC 01 00 32 */	fmul f0, f1, f0
/* 804D3B50  FC 03 00 28 */	fsub f0, f3, f0
/* 804D3B54  FC 02 00 32 */	fmul f0, f2, f0
/* 804D3B58  FC 44 00 32 */	fmul f2, f4, f0
/* 804D3B5C  FC 00 00 32 */	fmul f0, f0, f0
/* 804D3B60  FC 01 00 32 */	fmul f0, f1, f0
/* 804D3B64  FC 03 00 28 */	fsub f0, f3, f0
/* 804D3B68  FC 02 00 32 */	fmul f0, f2, f0
/* 804D3B6C  FC 41 00 32 */	fmul f2, f1, f0
/* 804D3B70  FC 40 10 18 */	frsp f2, f2
/* 804D3B74  48 00 00 90 */	b lbl_804D3C04
lbl_804D3B78:
/* 804D3B78  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 804D3B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D3B80  40 80 00 10 */	bge lbl_804D3B90
/* 804D3B84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D3B88  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 804D3B8C  48 00 00 78 */	b lbl_804D3C04
lbl_804D3B90:
/* 804D3B90  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D3B94  80 81 00 08 */	lwz r4, 8(r1)
/* 804D3B98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D3B9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D3BA0  7C 03 00 00 */	cmpw r3, r0
/* 804D3BA4  41 82 00 14 */	beq lbl_804D3BB8
/* 804D3BA8  40 80 00 40 */	bge lbl_804D3BE8
/* 804D3BAC  2C 03 00 00 */	cmpwi r3, 0
/* 804D3BB0  41 82 00 20 */	beq lbl_804D3BD0
/* 804D3BB4  48 00 00 34 */	b lbl_804D3BE8
lbl_804D3BB8:
/* 804D3BB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D3BBC  41 82 00 0C */	beq lbl_804D3BC8
/* 804D3BC0  38 00 00 01 */	li r0, 1
/* 804D3BC4  48 00 00 28 */	b lbl_804D3BEC
lbl_804D3BC8:
/* 804D3BC8  38 00 00 02 */	li r0, 2
/* 804D3BCC  48 00 00 20 */	b lbl_804D3BEC
lbl_804D3BD0:
/* 804D3BD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D3BD4  41 82 00 0C */	beq lbl_804D3BE0
/* 804D3BD8  38 00 00 05 */	li r0, 5
/* 804D3BDC  48 00 00 10 */	b lbl_804D3BEC
lbl_804D3BE0:
/* 804D3BE0  38 00 00 03 */	li r0, 3
/* 804D3BE4  48 00 00 08 */	b lbl_804D3BEC
lbl_804D3BE8:
/* 804D3BE8  38 00 00 04 */	li r0, 4
lbl_804D3BEC:
/* 804D3BEC  2C 00 00 01 */	cmpwi r0, 1
/* 804D3BF0  40 82 00 10 */	bne lbl_804D3C00
/* 804D3BF4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D3BF8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 804D3BFC  48 00 00 08 */	b lbl_804D3C04
lbl_804D3C00:
/* 804D3C00  FC 40 08 90 */	fmr f2, f1
lbl_804D3C04:
/* 804D3C04  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 804D3C08  4B D9 3A 6C */	b cM_atan2s__Fff
/* 804D3C0C  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 804D3C10  9B 7E 0A 72 */	stb r27, 0xa72(r30)
/* 804D3C14  38 00 FF FF */	li r0, -1
/* 804D3C18  98 1E 0A 73 */	stb r0, 0xa73(r30)
/* 804D3C1C  2C 18 00 00 */	cmpwi r24, 0
/* 804D3C20  41 82 00 10 */	beq lbl_804D3C30
/* 804D3C24  38 00 00 01 */	li r0, 1
/* 804D3C28  98 1E 0A 76 */	stb r0, 0xa76(r30)
/* 804D3C2C  48 00 00 08 */	b lbl_804D3C34
lbl_804D3C30:
/* 804D3C30  98 1E 0A 76 */	stb r0, 0xa76(r30)
lbl_804D3C34:
/* 804D3C34  2C 1A 00 00 */	cmpwi r26, 0
/* 804D3C38  41 82 00 48 */	beq lbl_804D3C80
/* 804D3C3C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804D3C40  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804D3C44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804D3C48  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804D3C4C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804D3C50  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804D3C54  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804D3C58  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 804D3C5C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804D3C60  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 804D3C64  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804D3C68  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 804D3C6C  C0 3E 04 C0 */	lfs f1, 0x4c0(r30)
/* 804D3C70  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804D3C74  EC 01 00 2A */	fadds f0, f1, f0
/* 804D3C78  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 804D3C7C  48 00 00 1C */	b lbl_804D3C98
lbl_804D3C80:
/* 804D3C80  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804D3C84  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804D3C88  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804D3C8C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804D3C90  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804D3C94  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_804D3C98:
/* 804D3C98  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804D3C9C  D0 1E 0A B0 */	stfs f0, 0xab0(r30)
/* 804D3CA0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804D3CA4  D0 1E 0A B4 */	stfs f0, 0xab4(r30)
/* 804D3CA8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804D3CAC  D0 1E 0A B8 */	stfs f0, 0xab8(r30)
/* 804D3CB0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804D3CB4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804D3CB8  EC 01 00 2A */	fadds f0, f1, f0
/* 804D3CBC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804D3CC0  38 7E 05 8C */	addi r3, r30, 0x58c
/* 804D3CC4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804D3CC8  4B BA 22 78 */	b SetWallR__12dBgS_AcchCirFf
/* 804D3CCC  38 7E 0A 4C */	addi r3, r30, 0xa4c
/* 804D3CD0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804D3CD4  4B D9 B5 2C */	b SetR__8cM3dGCylFf
/* 804D3CD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D3CDC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 804D3CE0  80 78 5D B4 */	lwz r3, 0x5db4(r24)
/* 804D3CE4  4B C3 9C 88 */	b getSpinnerRideMoveTime__9daAlink_cFv
/* 804D3CE8  B0 7E 0A 7A */	sth r3, 0xa7a(r30)
/* 804D3CEC  80 7E 0A 64 */	lwz r3, 0xa64(r30)
/* 804D3CF0  88 03 00 07 */	lbz r0, 7(r3)
/* 804D3CF4  28 00 00 FF */	cmplwi r0, 0xff
/* 804D3CF8  40 82 00 14 */	bne lbl_804D3D0C
/* 804D3CFC  80 78 5D B4 */	lwz r3, 0x5db4(r24)
/* 804D3D00  4B C3 9C B0 */	b getSpinnerRideSpeedF__9daAlink_cFv
/* 804D3D04  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 804D3D08  48 00 00 20 */	b lbl_804D3D28
lbl_804D3D0C:
/* 804D3D0C  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 804D3D10  90 01 00 7C */	stw r0, 0x7c(r1)
/* 804D3D14  3C 00 43 30 */	lis r0, 0x4330
/* 804D3D18  90 01 00 78 */	stw r0, 0x78(r1)
/* 804D3D1C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 804D3D20  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D3D24  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_804D3D28:
/* 804D3D28  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804D3D2C  38 03 4F 3C */	addi r0, r3, __vt__8cM3dGPla@l
/* 804D3D30  90 01 00 70 */	stw r0, 0x70(r1)
/* 804D3D34  38 60 00 01 */	li r3, 1
/* 804D3D38  48 00 00 10 */	b lbl_804D3D48
lbl_804D3D3C:
/* 804D3D3C  38 00 00 00 */	li r0, 0
/* 804D3D40  90 1E 0A 68 */	stw r0, 0xa68(r30)
/* 804D3D44  38 60 00 00 */	li r3, 0
lbl_804D3D48:
/* 804D3D48  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804D3D4C  4B E8 E4 C8 */	b _restgpr_24
/* 804D3D50  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804D3D54  7C 08 03 A6 */	mtlr r0
/* 804D3D58  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804D3D5C  4E 80 00 20 */	blr 
