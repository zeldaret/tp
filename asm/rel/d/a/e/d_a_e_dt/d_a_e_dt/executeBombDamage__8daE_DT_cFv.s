lbl_806B1D48:
/* 806B1D48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B1D4C  7C 08 02 A6 */	mflr r0
/* 806B1D50  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B1D54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806B1D58  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806B1D5C  7C 7E 1B 78 */	mr r30, r3
/* 806B1D60  3C 80 80 6B */	lis r4, lit_3792@ha /* 0x806B5CD4@ha */
/* 806B1D64  3B E4 5C D4 */	addi r31, r4, lit_3792@l /* 0x806B5CD4@l */
/* 806B1D68  80 03 0E E4 */	lwz r0, 0xee4(r3)
/* 806B1D6C  60 00 00 01 */	ori r0, r0, 1
/* 806B1D70  90 03 0E E4 */	stw r0, 0xee4(r3)
/* 806B1D74  80 03 10 1C */	lwz r0, 0x101c(r3)
/* 806B1D78  60 00 00 01 */	ori r0, r0, 1
/* 806B1D7C  90 03 10 1C */	stw r0, 0x101c(r3)
/* 806B1D80  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 806B1D84  2C 00 00 01 */	cmpwi r0, 1
/* 806B1D88  41 82 00 6C */	beq lbl_806B1DF4
/* 806B1D8C  40 80 01 D4 */	bge lbl_806B1F60
/* 806B1D90  2C 00 00 00 */	cmpwi r0, 0
/* 806B1D94  40 80 00 08 */	bge lbl_806B1D9C
/* 806B1D98  48 00 01 C8 */	b lbl_806B1F60
lbl_806B1D9C:
/* 806B1D9C  4B FF D9 A5 */	bl setBombEffect__8daE_DT_cFv
/* 806B1DA0  7F C3 F3 78 */	mr r3, r30
/* 806B1DA4  4B FF DA A5 */	bl setBombSmokeEffect__8daE_DT_cFv
/* 806B1DA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070318@ha */
/* 806B1DAC  38 03 03 18 */	addi r0, r3, 0x0318 /* 0x00070318@l */
/* 806B1DB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B1DB4  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B1DB8  38 81 00 10 */	addi r4, r1, 0x10
/* 806B1DBC  38 A0 FF FF */	li r5, -1
/* 806B1DC0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B1DC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B1DC8  7D 89 03 A6 */	mtctr r12
/* 806B1DCC  4E 80 04 21 */	bctrl 
/* 806B1DD0  7F C3 F3 78 */	mr r3, r30
/* 806B1DD4  38 80 00 05 */	li r4, 5
/* 806B1DD8  38 A0 00 00 */	li r5, 0
/* 806B1DDC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B1DE0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B1DE4  4B FF C8 69 */	bl setBck__8daE_DT_cFiUcff
/* 806B1DE8  38 00 00 01 */	li r0, 1
/* 806B1DEC  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B1DF0  48 00 01 70 */	b lbl_806B1F60
lbl_806B1DF4:
/* 806B1DF4  4B FF D9 4D */	bl setBombEffect__8daE_DT_cFv
/* 806B1DF8  7F C3 F3 78 */	mr r3, r30
/* 806B1DFC  4B FF DA 4D */	bl setBombSmokeEffect__8daE_DT_cFv
/* 806B1E00  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B1E04  38 63 00 0C */	addi r3, r3, 0xc
/* 806B1E08  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 806B1E0C  4B C7 66 21 */	bl checkPass__12J3DFrameCtrlFf
/* 806B1E10  2C 03 00 00 */	cmpwi r3, 0
/* 806B1E14  41 82 00 38 */	beq lbl_806B1E4C
/* 806B1E18  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070319@ha */
/* 806B1E1C  38 03 03 19 */	addi r0, r3, 0x0319 /* 0x00070319@l */
/* 806B1E20  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B1E24  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B1E28  38 81 00 0C */	addi r4, r1, 0xc
/* 806B1E2C  38 A0 00 00 */	li r5, 0
/* 806B1E30  38 C0 FF FF */	li r6, -1
/* 806B1E34  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B1E38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B1E3C  7D 89 03 A6 */	mtctr r12
/* 806B1E40  4E 80 04 21 */	bctrl 
/* 806B1E44  7F C3 F3 78 */	mr r3, r30
/* 806B1E48  4B FF E0 65 */	bl setStayOtamaDelete__8daE_DT_cFv
lbl_806B1E4C:
/* 806B1E4C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B1E50  38 63 00 0C */	addi r3, r3, 0xc
/* 806B1E54  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 806B1E58  4B C7 65 D5 */	bl checkPass__12J3DFrameCtrlFf
/* 806B1E5C  2C 03 00 00 */	cmpwi r3, 0
/* 806B1E60  41 82 00 38 */	beq lbl_806B1E98
/* 806B1E64  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023B@ha */
/* 806B1E68  38 03 02 3B */	addi r0, r3, 0x023B /* 0x0007023B@l */
/* 806B1E6C  90 01 00 08 */	stw r0, 8(r1)
/* 806B1E70  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B1E74  38 81 00 08 */	addi r4, r1, 8
/* 806B1E78  38 A0 00 00 */	li r5, 0
/* 806B1E7C  38 C0 FF FF */	li r6, -1
/* 806B1E80  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B1E84  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B1E88  7D 89 03 A6 */	mtctr r12
/* 806B1E8C  4E 80 04 21 */	bctrl 
/* 806B1E90  7F C3 F3 78 */	mr r3, r30
/* 806B1E94  4B FF D1 55 */	bl setSmallWaterEffect__8daE_DT_cFv
lbl_806B1E98:
/* 806B1E98  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B1E9C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B1EA0  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 806B1EA4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806B1EA8  4C 41 13 82 */	cror 2, 1, 2
/* 806B1EAC  40 82 00 74 */	bne lbl_806B1F20
/* 806B1EB0  38 63 00 0C */	addi r3, r3, 0xc
/* 806B1EB4  4B C7 65 79 */	bl checkPass__12J3DFrameCtrlFf
/* 806B1EB8  2C 03 00 00 */	cmpwi r3, 0
/* 806B1EBC  41 82 00 1C */	beq lbl_806B1ED8
/* 806B1EC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806B1EC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806B1EC8  80 63 00 00 */	lwz r3, 0(r3)
/* 806B1ECC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B1ED0  38 80 00 03 */	li r4, 3
/* 806B1ED4  4B BF FF 21 */	bl changeSubBgmStatus__8Z2SeqMgrFl
lbl_806B1ED8:
/* 806B1ED8  3C 60 80 6B */	lis r3, l_HIO@ha /* 0x806B62AC@ha */
/* 806B1EDC  38 63 62 AC */	addi r3, r3, l_HIO@l /* 0x806B62AC@l */
/* 806B1EE0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B1EE4  FC 00 00 1E */	fctiwz f0, f0
/* 806B1EE8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806B1EEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806B1EF0  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B1EF4  38 00 00 01 */	li r0, 1
/* 806B1EF8  98 1E 07 70 */	stb r0, 0x770(r30)
/* 806B1EFC  80 1E 0E D0 */	lwz r0, 0xed0(r30)
/* 806B1F00  60 00 00 01 */	ori r0, r0, 1
/* 806B1F04  90 1E 0E D0 */	stw r0, 0xed0(r30)
/* 806B1F08  80 1E 0E E4 */	lwz r0, 0xee4(r30)
/* 806B1F0C  60 00 00 01 */	ori r0, r0, 1
/* 806B1F10  90 1E 0E E4 */	stw r0, 0xee4(r30)
/* 806B1F14  80 1E 10 1C */	lwz r0, 0x101c(r30)
/* 806B1F18  60 00 00 01 */	ori r0, r0, 1
/* 806B1F1C  90 1E 10 1C */	stw r0, 0x101c(r30)
lbl_806B1F20:
/* 806B1F20  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B1F24  38 80 00 01 */	li r4, 1
/* 806B1F28  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B1F2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B1F30  40 82 00 18 */	bne lbl_806B1F48
/* 806B1F34  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B1F38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B1F3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B1F40  41 82 00 08 */	beq lbl_806B1F48
/* 806B1F44  38 80 00 00 */	li r4, 0
lbl_806B1F48:
/* 806B1F48  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B1F4C  41 82 00 14 */	beq lbl_806B1F60
/* 806B1F50  7F C3 F3 78 */	mr r3, r30
/* 806B1F54  38 80 00 05 */	li r4, 5
/* 806B1F58  38 A0 00 00 */	li r5, 0
/* 806B1F5C  4B FF C7 F1 */	bl setActionMode__8daE_DT_cFii
lbl_806B1F60:
/* 806B1F60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806B1F64  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806B1F68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B1F6C  7C 08 03 A6 */	mtlr r0
/* 806B1F70  38 21 00 30 */	addi r1, r1, 0x30
/* 806B1F74  4E 80 00 20 */	blr 
