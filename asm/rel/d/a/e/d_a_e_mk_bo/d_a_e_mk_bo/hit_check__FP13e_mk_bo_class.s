lbl_8071CE30:
/* 8071CE30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8071CE34  7C 08 02 A6 */	mflr r0
/* 8071CE38  90 01 00 54 */	stw r0, 0x54(r1)
/* 8071CE3C  39 61 00 50 */	addi r11, r1, 0x50
/* 8071CE40  4B C4 53 9D */	bl _savegpr_29
/* 8071CE44  7C 7D 1B 78 */	mr r29, r3
/* 8071CE48  3C 60 80 72 */	lis r3, lit_3776@ha /* 0x8071F640@ha */
/* 8071CE4C  3B E3 F6 40 */	addi r31, r3, lit_3776@l /* 0x8071F640@l */
/* 8071CE50  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 8071CE54  90 01 00 08 */	stw r0, 8(r1)
/* 8071CE58  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8071CE5C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8071CE60  38 81 00 08 */	addi r4, r1, 8
/* 8071CE64  4B 8F C9 95 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8071CE68  7C 7E 1B 78 */	mr r30, r3
/* 8071CE6C  38 7D 08 58 */	addi r3, r29, 0x858
/* 8071CE70  4B 96 75 F1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8071CE74  28 03 00 00 */	cmplwi r3, 0
/* 8071CE78  40 82 00 48 */	bne lbl_8071CEC0
/* 8071CE7C  80 7D 06 70 */	lwz r3, 0x670(r29)
/* 8071CE80  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8071CE84  40 82 00 3C */	bne lbl_8071CEC0
/* 8071CE88  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8071CE8C  40 82 00 34 */	bne lbl_8071CEC0
/* 8071CE90  28 1E 00 00 */	cmplwi r30, 0
/* 8071CE94  41 82 00 20 */	beq lbl_8071CEB4
/* 8071CE98  A8 1E 0C 30 */	lha r0, 0xc30(r30)
/* 8071CE9C  2C 00 00 01 */	cmpwi r0, 1
/* 8071CEA0  40 82 00 14 */	bne lbl_8071CEB4
/* 8071CEA4  38 7D 08 58 */	addi r3, r29, 0x858
/* 8071CEA8  4B 96 74 19 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8071CEAC  28 03 00 00 */	cmplwi r3, 0
/* 8071CEB0  40 82 00 10 */	bne lbl_8071CEC0
lbl_8071CEB4:
/* 8071CEB4  80 1D 08 B4 */	lwz r0, 0x8b4(r29)
/* 8071CEB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8071CEBC  41 82 01 B0 */	beq lbl_8071D06C
lbl_8071CEC0:
/* 8071CEC0  38 00 00 14 */	li r0, 0x14
/* 8071CEC4  B0 1D 05 F8 */	sth r0, 0x5f8(r29)
/* 8071CEC8  38 7D 08 58 */	addi r3, r29, 0x858
/* 8071CECC  4B 96 75 95 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8071CED0  28 03 00 00 */	cmplwi r3, 0
/* 8071CED4  41 82 00 30 */	beq lbl_8071CF04
/* 8071CED8  3C 60 00 04 */	lis r3, 0x0004 /* 0x0004001B@ha */
/* 8071CEDC  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0004001B@l */
/* 8071CEE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071CEE4  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 8071CEE8  38 81 00 0C */	addi r4, r1, 0xc
/* 8071CEEC  38 A0 00 00 */	li r5, 0
/* 8071CEF0  38 C0 FF FF */	li r6, -1
/* 8071CEF4  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 8071CEF8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8071CEFC  7D 89 03 A6 */	mtctr r12
/* 8071CF00  4E 80 04 21 */	bctrl 
lbl_8071CF04:
/* 8071CF04  38 7D 08 58 */	addi r3, r29, 0x858
/* 8071CF08  4B 96 73 B9 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8071CF0C  28 03 00 00 */	cmplwi r3, 0
/* 8071CF10  41 82 00 78 */	beq lbl_8071CF88
/* 8071CF14  38 7D 08 58 */	addi r3, r29, 0x858
/* 8071CF18  4B 96 74 41 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 8071CF1C  4B B4 6B 2D */	bl GetAc__8cCcD_ObjFv
/* 8071CF20  28 03 00 00 */	cmplwi r3, 0
/* 8071CF24  41 82 00 64 */	beq lbl_8071CF88
/* 8071CF28  A8 03 00 08 */	lha r0, 8(r3)
/* 8071CF2C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8071CF30  40 82 00 58 */	bne lbl_8071CF88
/* 8071CF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8071CF38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071CF3C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8071CF40  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8071CF44  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8071CF48  7D 89 03 A6 */	mtctr r12
/* 8071CF4C  4E 80 04 21 */	bctrl 
/* 8071CF50  2C 03 00 00 */	cmpwi r3, 0
/* 8071CF54  41 82 00 34 */	beq lbl_8071CF88
/* 8071CF58  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8071CF5C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8071CF60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8071CF64  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8071CF68  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8071CF6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8071CF70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071CF74  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8071CF78  38 80 00 04 */	li r4, 4
/* 8071CF7C  38 A0 00 1F */	li r5, 0x1f
/* 8071CF80  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8071CF84  4B 95 2A A1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_8071CF88:
/* 8071CF88  88 1D 09 98 */	lbz r0, 0x998(r29)
/* 8071CF8C  2C 00 00 01 */	cmpwi r0, 1
/* 8071CF90  40 82 00 0C */	bne lbl_8071CF9C
/* 8071CF94  38 00 00 02 */	li r0, 2
/* 8071CF98  98 1D 09 98 */	stb r0, 0x998(r29)
lbl_8071CF9C:
/* 8071CF9C  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 8071CFA0  2C 00 00 02 */	cmpwi r0, 2
/* 8071CFA4  41 81 00 C8 */	bgt lbl_8071D06C
/* 8071CFA8  38 00 00 03 */	li r0, 3
/* 8071CFAC  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8071CFB0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8071CFB4  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 8071CFB8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8071CFBC  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071CFC0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8071CFC4  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 8071CFC8  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 8071CFCC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8071CFD0  EC 01 00 2A */	fadds f0, f1, f0
/* 8071CFD4  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071CFD8  38 61 00 10 */	addi r3, r1, 0x10
/* 8071CFDC  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8071CFE0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8071CFE4  4B B4 9B 51 */	bl __mi__4cXyzCFRC3Vec
/* 8071CFE8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8071CFEC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8071CFF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8071CFF4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8071CFF8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8071CFFC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8071D000  4B B4 A6 75 */	bl cM_atan2s__Fff
/* 8071D004  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8071D008  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8071D00C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8071D010  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8071D014  EC 00 00 32 */	fmuls f0, f0, f0
/* 8071D018  EC 41 00 2A */	fadds f2, f1, f0
/* 8071D01C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071D020  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8071D024  40 81 00 0C */	ble lbl_8071D030
/* 8071D028  FC 00 10 34 */	frsqrte f0, f2
/* 8071D02C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8071D030:
/* 8071D030  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8071D034  4B B4 A6 41 */	bl cM_atan2s__Fff
/* 8071D038  7C 03 00 D0 */	neg r0, r3
/* 8071D03C  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8071D040  80 1D 06 70 */	lwz r0, 0x670(r29)
/* 8071D044  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8071D048  41 82 00 24 */	beq lbl_8071D06C
/* 8071D04C  38 7D 09 90 */	addi r3, r29, 0x990
/* 8071D050  38 9D 09 94 */	addi r4, r29, 0x994
/* 8071D054  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8071D058  38 DD 04 DC */	addi r6, r29, 0x4dc
/* 8071D05C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8071D060  38 FD 01 0C */	addi r7, r29, 0x10c
/* 8071D064  39 00 00 00 */	li r8, 0
/* 8071D068  4B 8F FF B9 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_8071D06C:
/* 8071D06C  39 61 00 50 */	addi r11, r1, 0x50
/* 8071D070  4B C4 51 B9 */	bl _restgpr_29
/* 8071D074  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8071D078  7C 08 03 A6 */	mtlr r0
/* 8071D07C  38 21 00 50 */	addi r1, r1, 0x50
/* 8071D080  4E 80 00 20 */	blr 
