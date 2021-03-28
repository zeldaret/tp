lbl_807ACAE4:
/* 807ACAE4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 807ACAE8  7C 08 02 A6 */	mflr r0
/* 807ACAEC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 807ACAF0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807ACAF4  4B BB 56 E4 */	b _savegpr_28
/* 807ACAF8  7C 7E 1B 78 */	mr r30, r3
/* 807ACAFC  3C 60 80 7B */	lis r3, cNullVec__6Z2Calc@ha
/* 807ACB00  3B E3 FE 7C */	addi r31, r3, cNullVec__6Z2Calc@l
/* 807ACB04  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807ACB08  3B A3 FD 2C */	addi r29, r3, lit_3909@l
/* 807ACB0C  80 7F 01 48 */	lwz r3, 0x148(r31)
/* 807ACB10  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 807ACB14  90 61 00 2C */	stw r3, 0x2c(r1)
/* 807ACB18  90 01 00 30 */	stw r0, 0x30(r1)
/* 807ACB1C  80 1F 01 50 */	lwz r0, 0x150(r31)
/* 807ACB20  90 01 00 34 */	stw r0, 0x34(r1)
/* 807ACB24  38 7E 0A FC */	addi r3, r30, 0xafc
/* 807ACB28  38 81 00 2C */	addi r4, r1, 0x2c
/* 807ACB2C  4B BB 55 1C */	b __ptmf_cmpr
/* 807ACB30  2C 03 00 00 */	cmpwi r3, 0
/* 807ACB34  41 82 01 64 */	beq lbl_807ACC98
/* 807ACB38  80 7F 01 54 */	lwz r3, 0x154(r31)
/* 807ACB3C  80 1F 01 58 */	lwz r0, 0x158(r31)
/* 807ACB40  90 61 00 20 */	stw r3, 0x20(r1)
/* 807ACB44  90 01 00 24 */	stw r0, 0x24(r1)
/* 807ACB48  80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 807ACB4C  90 01 00 28 */	stw r0, 0x28(r1)
/* 807ACB50  38 7E 0A FC */	addi r3, r30, 0xafc
/* 807ACB54  38 81 00 20 */	addi r4, r1, 0x20
/* 807ACB58  4B BB 54 F0 */	b __ptmf_cmpr
/* 807ACB5C  2C 03 00 00 */	cmpwi r3, 0
/* 807ACB60  41 82 01 38 */	beq lbl_807ACC98
/* 807ACB64  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 807ACB68  80 1F 01 64 */	lwz r0, 0x164(r31)
/* 807ACB6C  90 61 00 14 */	stw r3, 0x14(r1)
/* 807ACB70  90 01 00 18 */	stw r0, 0x18(r1)
/* 807ACB74  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 807ACB78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807ACB7C  38 7E 0A FC */	addi r3, r30, 0xafc
/* 807ACB80  38 81 00 14 */	addi r4, r1, 0x14
/* 807ACB84  4B BB 54 C4 */	b __ptmf_cmpr
/* 807ACB88  2C 03 00 00 */	cmpwi r3, 0
/* 807ACB8C  40 82 00 08 */	bne lbl_807ACB94
/* 807ACB90  48 00 01 08 */	b lbl_807ACC98
lbl_807ACB94:
/* 807ACB94  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807ACB98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807ACB9C  40 82 00 FC */	bne lbl_807ACC98
/* 807ACBA0  38 61 00 44 */	addi r3, r1, 0x44
/* 807ACBA4  4B 8C A9 D8 */	b __ct__11dBgS_GndChkFv
/* 807ACBA8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807ACBAC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807ACBB0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807ACBB4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807ACBB8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807ACBBC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807ACBC0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 807ACBC4  EC 01 00 2A */	fadds f0, f1, f0
/* 807ACBC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807ACBCC  38 61 00 44 */	addi r3, r1, 0x44
/* 807ACBD0  38 81 00 38 */	addi r4, r1, 0x38
/* 807ACBD4  4B AB B1 54 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807ACBD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807ACBDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807ACBE0  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 807ACBE4  7F 83 E3 78 */	mr r3, r28
/* 807ACBE8  38 81 00 44 */	addi r4, r1, 0x44
/* 807ACBEC  4B 8C 78 B4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807ACBF0  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 807ACBF4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807ACBF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807ACBFC  40 80 00 90 */	bge lbl_807ACC8C
/* 807ACC00  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 807ACC04  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807ACC08  41 82 00 60 */	beq lbl_807ACC68
/* 807ACC0C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807ACC10  EC 01 00 28 */	fsubs f0, f1, f0
/* 807ACC14  FC 00 02 10 */	fabs f0, f0
/* 807ACC18  FC 20 00 18 */	frsp f1, f0
/* 807ACC1C  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 807ACC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ACC24  41 81 00 44 */	bgt lbl_807ACC68
/* 807ACC28  7F 83 E3 78 */	mr r3, r28
/* 807ACC2C  3B A1 00 58 */	addi r29, r1, 0x58
/* 807ACC30  7F A4 EB 78 */	mr r4, r29
/* 807ACC34  4B 8C 82 BC */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 807ACC38  2C 03 00 04 */	cmpwi r3, 4
/* 807ACC3C  41 82 00 2C */	beq lbl_807ACC68
/* 807ACC40  7F 83 E3 78 */	mr r3, r28
/* 807ACC44  7F A4 EB 78 */	mr r4, r29
/* 807ACC48  4B 8C 82 A8 */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 807ACC4C  2C 03 00 0A */	cmpwi r3, 0xa
/* 807ACC50  41 82 00 18 */	beq lbl_807ACC68
/* 807ACC54  7F 83 E3 78 */	mr r3, r28
/* 807ACC58  7F A4 EB 78 */	mr r4, r29
/* 807ACC5C  4B 8C 82 94 */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 807ACC60  2C 03 00 05 */	cmpwi r3, 5
/* 807ACC64  40 82 00 28 */	bne lbl_807ACC8C
lbl_807ACC68:
/* 807ACC68  80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 807ACC6C  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 807ACC70  90 61 00 08 */	stw r3, 8(r1)
/* 807ACC74  90 01 00 0C */	stw r0, 0xc(r1)
/* 807ACC78  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 807ACC7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807ACC80  7F C3 F3 78 */	mr r3, r30
/* 807ACC84  38 81 00 08 */	addi r4, r1, 8
/* 807ACC88  4B FF FD B9 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
lbl_807ACC8C:
/* 807ACC8C  38 61 00 44 */	addi r3, r1, 0x44
/* 807ACC90  38 80 FF FF */	li r4, -1
/* 807ACC94  4B 8C A9 5C */	b __dt__11dBgS_GndChkFv
lbl_807ACC98:
/* 807ACC98  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807ACC9C  4B BB 55 88 */	b _restgpr_28
/* 807ACCA0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 807ACCA4  7C 08 03 A6 */	mtlr r0
/* 807ACCA8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 807ACCAC  4E 80 00 20 */	blr 
