lbl_807E4AB8:
/* 807E4AB8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807E4ABC  7C 08 02 A6 */	mflr r0
/* 807E4AC0  90 01 00 84 */	stw r0, 0x84(r1)
/* 807E4AC4  39 61 00 80 */	addi r11, r1, 0x80
/* 807E4AC8  4B B7 D7 14 */	b _savegpr_29
/* 807E4ACC  7C 7E 1B 78 */	mr r30, r3
/* 807E4AD0  3C 60 80 7E */	lis r3, lit_3802@ha
/* 807E4AD4  3B E3 73 00 */	addi r31, r3, lit_3802@l
/* 807E4AD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E4ADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E4AE0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807E4AE4  38 80 00 00 */	li r4, 0
/* 807E4AE8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E4AEC  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 807E4AF0  7D 89 03 A6 */	mtctr r12
/* 807E4AF4  4E 80 04 21 */	bctrl 
/* 807E4AF8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807E4AFC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807E4B00  4B B6 19 B0 */	b PSMTXCopy
/* 807E4B04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E4B08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E4B0C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807E4B10  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807E4B14  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807E4B18  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807E4B1C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807E4B20  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807E4B24  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 807E4B28  2C 00 00 02 */	cmpwi r0, 2
/* 807E4B2C  41 82 01 14 */	beq lbl_807E4C40
/* 807E4B30  40 80 00 14 */	bge lbl_807E4B44
/* 807E4B34  2C 00 00 00 */	cmpwi r0, 0
/* 807E4B38  41 82 00 1C */	beq lbl_807E4B54
/* 807E4B3C  40 80 00 40 */	bge lbl_807E4B7C
/* 807E4B40  48 00 03 08 */	b lbl_807E4E48
lbl_807E4B44:
/* 807E4B44  2C 00 00 04 */	cmpwi r0, 4
/* 807E4B48  41 82 02 84 */	beq lbl_807E4DCC
/* 807E4B4C  40 80 02 FC */	bge lbl_807E4E48
/* 807E4B50  48 00 01 48 */	b lbl_807E4C98
lbl_807E4B54:
/* 807E4B54  7F C3 F3 78 */	mr r3, r30
/* 807E4B58  38 80 00 08 */	li r4, 8
/* 807E4B5C  38 A0 00 02 */	li r5, 2
/* 807E4B60  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E4B64  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807E4B68  4B FF F0 B9 */	bl setBck__8daE_WS_cFiUcff
/* 807E4B6C  38 00 00 01 */	li r0, 1
/* 807E4B70  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E4B74  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E4B78  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807E4B7C:
/* 807E4B7C  7F C3 F3 78 */	mr r3, r30
/* 807E4B80  4B FF F1 45 */	bl setFootSound__8daE_WS_cFv
/* 807E4B84  7F C3 F3 78 */	mr r3, r30
/* 807E4B88  4B FF F9 E1 */	bl checkAttackEnd__8daE_WS_cFv
/* 807E4B8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E4B90  40 82 02 C0 */	bne lbl_807E4E50
/* 807E4B94  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E4B98  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807E4B9C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E4BA0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E4BA4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E4BA8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E4BAC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807E4BB0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807E4BB4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807E4BB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807E4BBC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807E4BC0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807E4BC4  7F C3 F3 78 */	mr r3, r30
/* 807E4BC8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807E4BCC  38 A1 00 40 */	addi r5, r1, 0x40
/* 807E4BD0  4B FF F4 F9 */	bl calcTargetAngle__8daE_WS_cF4cXyz4cXyz
/* 807E4BD4  7C 64 1B 78 */	mr r4, r3
/* 807E4BD8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807E4BDC  38 A0 03 00 */	li r5, 0x300
/* 807E4BE0  4B A8 BF B0 */	b cLib_chaseAngleS__FPsss
/* 807E4BE4  2C 03 00 00 */	cmpwi r3, 0
/* 807E4BE8  41 82 02 60 */	beq lbl_807E4E48
/* 807E4BEC  38 00 00 02 */	li r0, 2
/* 807E4BF0  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E4BF4  7F C3 F3 78 */	mr r3, r30
/* 807E4BF8  38 80 00 0A */	li r4, 0xa
/* 807E4BFC  38 A0 00 02 */	li r5, 2
/* 807E4C00  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E4C04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E4C08  4B FF F0 19 */	bl setBck__8daE_WS_cFiUcff
/* 807E4C0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070147@ha */
/* 807E4C10  38 03 01 47 */	addi r0, r3, 0x0147 /* 0x00070147@l */
/* 807E4C14  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E4C18  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E4C1C  38 81 00 0C */	addi r4, r1, 0xc
/* 807E4C20  38 A0 FF FF */	li r5, -1
/* 807E4C24  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E4C28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E4C2C  7D 89 03 A6 */	mtctr r12
/* 807E4C30  4E 80 04 21 */	bctrl 
/* 807E4C34  38 00 00 0A */	li r0, 0xa
/* 807E4C38  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E4C3C  48 00 02 0C */	b lbl_807E4E48
lbl_807E4C40:
/* 807E4C40  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 807E4C44  28 00 00 00 */	cmplwi r0, 0
/* 807E4C48  40 82 00 3C */	bne lbl_807E4C84
/* 807E4C4C  3C 60 80 7E */	lis r3, l_HIO@ha
/* 807E4C50  38 63 75 C8 */	addi r3, r3, l_HIO@l
/* 807E4C54  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 807E4C58  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 807E4C5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807E4C60  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E4C64  7F C3 F3 78 */	mr r3, r30
/* 807E4C68  38 80 00 07 */	li r4, 7
/* 807E4C6C  38 A0 00 02 */	li r5, 2
/* 807E4C70  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E4C74  FC 40 08 90 */	fmr f2, f1
/* 807E4C78  4B FF EF A9 */	bl setBck__8daE_WS_cFiUcff
/* 807E4C7C  38 00 00 03 */	li r0, 3
/* 807E4C80  90 1E 06 80 */	stw r0, 0x680(r30)
lbl_807E4C84:
/* 807E4C84  7F C3 F3 78 */	mr r3, r30
/* 807E4C88  4B FF F8 E1 */	bl checkAttackEnd__8daE_WS_cFv
/* 807E4C8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E4C90  41 82 01 B8 */	beq lbl_807E4E48
/* 807E4C94  48 00 01 BC */	b lbl_807E4E50
lbl_807E4C98:
/* 807E4C98  7F C3 F3 78 */	mr r3, r30
/* 807E4C9C  4B FF F0 29 */	bl setFootSound__8daE_WS_cFv
/* 807E4CA0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E4CA4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807E4CA8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E4CAC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807E4CB0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E4CB4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807E4CB8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807E4CBC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807E4CC0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807E4CC4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807E4CC8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807E4CCC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807E4CD0  7F C3 F3 78 */	mr r3, r30
/* 807E4CD4  38 81 00 34 */	addi r4, r1, 0x34
/* 807E4CD8  38 A1 00 28 */	addi r5, r1, 0x28
/* 807E4CDC  4B FF F3 ED */	bl calcTargetAngle__8daE_WS_cF4cXyz4cXyz
/* 807E4CE0  7C 64 1B 78 */	mr r4, r3
/* 807E4CE4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807E4CE8  38 A0 04 00 */	li r5, 0x400
/* 807E4CEC  4B A8 BE A4 */	b cLib_chaseAngleS__FPsss
/* 807E4CF0  3B A0 00 00 */	li r29, 0
/* 807E4CF4  7F C3 F3 78 */	mr r3, r30
/* 807E4CF8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807E4CFC  48 00 12 BD */	bl checkBeforeBg__8daE_WS_cFs
/* 807E4D00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E4D04  41 82 00 08 */	beq lbl_807E4D0C
/* 807E4D08  3B A0 00 01 */	li r29, 1
lbl_807E4D0C:
/* 807E4D0C  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 807E4D10  4B 89 F5 B0 */	b ChkAtHit__12dCcD_GObjInfFv
/* 807E4D14  28 03 00 00 */	cmplwi r3, 0
/* 807E4D18  41 82 00 20 */	beq lbl_807E4D38
/* 807E4D1C  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 807E4D20  4B 89 F6 38 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 807E4D24  4B A7 ED 24 */	b GetAc__8cCcD_ObjFv
/* 807E4D28  A8 03 00 08 */	lha r0, 8(r3)
/* 807E4D2C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 807E4D30  40 82 00 08 */	bne lbl_807E4D38
/* 807E4D34  3B A0 00 01 */	li r29, 1
lbl_807E4D38:
/* 807E4D38  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E4D3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E4D40  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E4D44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E4D48  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E4D4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E4D50  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 807E4D54  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E4D58  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 807E4D5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E4D60  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 807E4D64  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E4D68  7F C3 F3 78 */	mr r3, r30
/* 807E4D6C  38 81 00 1C */	addi r4, r1, 0x1c
/* 807E4D70  38 A1 00 10 */	addi r5, r1, 0x10
/* 807E4D74  4B FF F3 F9 */	bl checkInSearchRange__8daE_WS_cF4cXyz4cXyz
/* 807E4D78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E4D7C  40 82 00 08 */	bne lbl_807E4D84
/* 807E4D80  3B A0 00 01 */	li r29, 1
lbl_807E4D84:
/* 807E4D84  2C 1D 00 00 */	cmpwi r29, 0
/* 807E4D88  41 82 00 30 */	beq lbl_807E4DB8
/* 807E4D8C  38 00 00 04 */	li r0, 4
/* 807E4D90  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E4D94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E4D98  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E4D9C  7F C3 F3 78 */	mr r3, r30
/* 807E4DA0  38 80 00 04 */	li r4, 4
/* 807E4DA4  38 A0 00 00 */	li r5, 0
/* 807E4DA8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E4DAC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E4DB0  4B FF EE 71 */	bl setBck__8daE_WS_cFiUcff
/* 807E4DB4  48 00 00 94 */	b lbl_807E4E48
lbl_807E4DB8:
/* 807E4DB8  7F C3 F3 78 */	mr r3, r30
/* 807E4DBC  4B FF F7 AD */	bl checkAttackEnd__8daE_WS_cFv
/* 807E4DC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E4DC4  41 82 00 84 */	beq lbl_807E4E48
/* 807E4DC8  48 00 00 88 */	b lbl_807E4E50
lbl_807E4DCC:
/* 807E4DCC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E4DD0  38 63 00 0C */	addi r3, r3, 0xc
/* 807E4DD4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807E4DD8  4B B4 36 54 */	b checkPass__12J3DFrameCtrlFf
/* 807E4DDC  2C 03 00 00 */	cmpwi r3, 0
/* 807E4DE0  41 82 00 2C */	beq lbl_807E4E0C
/* 807E4DE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070148@ha */
/* 807E4DE8  38 03 01 48 */	addi r0, r3, 0x0148 /* 0x00070148@l */
/* 807E4DEC  90 01 00 08 */	stw r0, 8(r1)
/* 807E4DF0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E4DF4  38 81 00 08 */	addi r4, r1, 8
/* 807E4DF8  38 A0 FF FF */	li r5, -1
/* 807E4DFC  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E4E00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E4E04  7D 89 03 A6 */	mtctr r12
/* 807E4E08  4E 80 04 21 */	bctrl 
lbl_807E4E0C:
/* 807E4E0C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E4E10  38 80 00 01 */	li r4, 1
/* 807E4E14  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807E4E18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807E4E1C  40 82 00 18 */	bne lbl_807E4E34
/* 807E4E20  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E4E24  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E4E28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E4E2C  41 82 00 08 */	beq lbl_807E4E34
/* 807E4E30  38 80 00 00 */	li r4, 0
lbl_807E4E34:
/* 807E4E34  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807E4E38  41 82 00 10 */	beq lbl_807E4E48
/* 807E4E3C  7F C3 F3 78 */	mr r3, r30
/* 807E4E40  38 80 00 00 */	li r4, 0
/* 807E4E44  4B FF F1 4D */	bl setActionMode__8daE_WS_cFi
lbl_807E4E48:
/* 807E4E48  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807E4E4C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_807E4E50:
/* 807E4E50  39 61 00 80 */	addi r11, r1, 0x80
/* 807E4E54  4B B7 D3 D4 */	b _restgpr_29
/* 807E4E58  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807E4E5C  7C 08 03 A6 */	mtlr r0
/* 807E4E60  38 21 00 80 */	addi r1, r1, 0x80
/* 807E4E64  4E 80 00 20 */	blr 
