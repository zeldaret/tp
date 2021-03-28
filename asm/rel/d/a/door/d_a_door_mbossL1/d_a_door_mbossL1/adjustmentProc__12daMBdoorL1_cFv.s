lbl_80675B30:
/* 80675B30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80675B34  7C 08 02 A6 */	mflr r0
/* 80675B38  90 01 00 64 */	stw r0, 0x64(r1)
/* 80675B3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80675B40  4B CE C6 9C */	b _savegpr_29
/* 80675B44  7C 7D 1B 78 */	mr r29, r3
/* 80675B48  3C 80 80 67 */	lis r4, l_staff_name@ha
/* 80675B4C  3B E4 75 58 */	addi r31, r4, l_staff_name@l
/* 80675B50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80675B54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80675B58  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80675B5C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80675B60  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80675B64  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80675B68  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80675B6C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80675B70  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80675B74  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80675B78  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80675B7C  88 03 05 DF */	lbz r0, 0x5df(r3)
/* 80675B80  28 00 00 00 */	cmplwi r0, 0
/* 80675B84  40 82 00 A4 */	bne lbl_80675C28
/* 80675B88  4B FF D3 FD */	bl getDoorType__12daMBdoorL1_cFv
/* 80675B8C  2C 03 00 02 */	cmpwi r3, 2
/* 80675B90  40 82 00 30 */	bne lbl_80675BC0
/* 80675B94  88 1D 05 DE */	lbz r0, 0x5de(r29)
/* 80675B98  28 00 00 00 */	cmplwi r0, 0
/* 80675B9C  41 82 00 0C */	beq lbl_80675BA8
/* 80675BA0  28 00 00 02 */	cmplwi r0, 2
/* 80675BA4  40 82 00 10 */	bne lbl_80675BB4
lbl_80675BA8:
/* 80675BA8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80675BAC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80675BB0  48 00 00 6C */	b lbl_80675C1C
lbl_80675BB4:
/* 80675BB4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80675BB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80675BBC  48 00 00 60 */	b lbl_80675C1C
lbl_80675BC0:
/* 80675BC0  38 61 00 14 */	addi r3, r1, 0x14
/* 80675BC4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80675BC8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80675BCC  4B BF 0F 68 */	b __mi__4cXyzCFRC3Vec
/* 80675BD0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80675BD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80675BD8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80675BDC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80675BE0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80675BE4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80675BE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675BEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675BF0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80675BF4  7C 00 00 D0 */	neg r0, r0
/* 80675BF8  7C 04 07 34 */	extsh r4, r0
/* 80675BFC  4B 99 67 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 80675C00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675C04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675C08  38 81 00 2C */	addi r4, r1, 0x2c
/* 80675C0C  7C 85 23 78 */	mr r5, r4
/* 80675C10  4B CD 11 5C */	b PSMTXMultVec
/* 80675C14  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80675C18  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_80675C1C:
/* 80675C1C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80675C20  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80675C24  48 00 00 A0 */	b lbl_80675CC4
lbl_80675C28:
/* 80675C28  4B FF D3 5D */	bl getDoorType__12daMBdoorL1_cFv
/* 80675C2C  2C 03 00 02 */	cmpwi r3, 2
/* 80675C30  40 82 00 30 */	bne lbl_80675C60
/* 80675C34  88 1D 05 DE */	lbz r0, 0x5de(r29)
/* 80675C38  28 00 00 00 */	cmplwi r0, 0
/* 80675C3C  41 82 00 0C */	beq lbl_80675C48
/* 80675C40  28 00 00 02 */	cmplwi r0, 2
/* 80675C44  40 82 00 10 */	bne lbl_80675C54
lbl_80675C48:
/* 80675C48  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80675C4C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80675C50  48 00 00 6C */	b lbl_80675CBC
lbl_80675C54:
/* 80675C54  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80675C58  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80675C5C  48 00 00 60 */	b lbl_80675CBC
lbl_80675C60:
/* 80675C60  38 61 00 08 */	addi r3, r1, 8
/* 80675C64  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80675C68  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80675C6C  4B BF 0E C8 */	b __mi__4cXyzCFRC3Vec
/* 80675C70  C0 01 00 08 */	lfs f0, 8(r1)
/* 80675C74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80675C78  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80675C7C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80675C80  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80675C84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80675C88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675C8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675C90  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80675C94  7C 00 00 D0 */	neg r0, r0
/* 80675C98  7C 04 07 34 */	extsh r4, r0
/* 80675C9C  4B 99 67 40 */	b mDoMtx_YrotS__FPA4_fs
/* 80675CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675CA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675CA8  38 81 00 20 */	addi r4, r1, 0x20
/* 80675CAC  7C 85 23 78 */	mr r5, r4
/* 80675CB0  4B CD 10 BC */	b PSMTXMultVec
/* 80675CB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80675CB8  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_80675CBC:
/* 80675CBC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80675CC0  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80675CC4:
/* 80675CC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675CC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675CCC  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80675CD0  4B 99 67 0C */	b mDoMtx_YrotS__FPA4_fs
/* 80675CD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675CD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675CDC  38 81 00 44 */	addi r4, r1, 0x44
/* 80675CE0  7C 85 23 78 */	mr r5, r4
/* 80675CE4  4B CD 10 88 */	b PSMTXMultVec
/* 80675CE8  38 61 00 44 */	addi r3, r1, 0x44
/* 80675CEC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80675CF0  7C 65 1B 78 */	mr r5, r3
/* 80675CF4  4B CD 13 9C */	b PSVECAdd
/* 80675CF8  88 1D 05 CD */	lbz r0, 0x5cd(r29)
/* 80675CFC  28 00 00 00 */	cmplwi r0, 0
/* 80675D00  41 82 00 6C */	beq lbl_80675D6C
/* 80675D04  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 80675D08  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80675D0C  EC 23 00 32 */	fmuls f1, f3, f0
/* 80675D10  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 80675D14  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80675D18  EC 02 00 32 */	fmuls f0, f2, f0
/* 80675D1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80675D20  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80675D24  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80675D28  EC 23 00 32 */	fmuls f1, f3, f0
/* 80675D2C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80675D30  EC 02 00 32 */	fmuls f0, f2, f0
/* 80675D34  EC 01 00 2A */	fadds f0, f1, f0
/* 80675D38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80675D3C  7F C3 F3 78 */	mr r3, r30
/* 80675D40  38 81 00 38 */	addi r4, r1, 0x38
/* 80675D44  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80675D48  38 C0 00 00 */	li r6, 0
/* 80675D4C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80675D50  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80675D54  7D 89 03 A6 */	mtctr r12
/* 80675D58  4E 80 04 21 */	bctrl 
/* 80675D5C  88 7D 05 CD */	lbz r3, 0x5cd(r29)
/* 80675D60  38 03 FF FF */	addi r0, r3, -1
/* 80675D64  98 1D 05 CD */	stb r0, 0x5cd(r29)
/* 80675D68  48 00 00 2C */	b lbl_80675D94
lbl_80675D6C:
/* 80675D6C  7F C3 F3 78 */	mr r3, r30
/* 80675D70  38 81 00 44 */	addi r4, r1, 0x44
/* 80675D74  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80675D78  38 C0 00 00 */	li r6, 0
/* 80675D7C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80675D80  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80675D84  7D 89 03 A6 */	mtctr r12
/* 80675D88  4E 80 04 21 */	bctrl 
/* 80675D8C  38 60 00 01 */	li r3, 1
/* 80675D90  48 00 00 08 */	b lbl_80675D98
lbl_80675D94:
/* 80675D94  38 60 00 00 */	li r3, 0
lbl_80675D98:
/* 80675D98  39 61 00 60 */	addi r11, r1, 0x60
/* 80675D9C  4B CE C4 8C */	b _restgpr_29
/* 80675DA0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80675DA4  7C 08 03 A6 */	mtlr r0
/* 80675DA8  38 21 00 60 */	addi r1, r1, 0x60
/* 80675DAC  4E 80 00 20 */	blr 
