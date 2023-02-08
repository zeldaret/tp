lbl_80CBAFC4:
/* 80CBAFC4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CBAFC8  7C 08 02 A6 */	mflr r0
/* 80CBAFCC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CBAFD0  39 61 00 70 */	addi r11, r1, 0x70
/* 80CBAFD4  4B 6A 72 09 */	bl _savegpr_29
/* 80CBAFD8  7C 7D 1B 78 */	mr r29, r3
/* 80CBAFDC  3C 60 80 CC */	lis r3, l_cull_box@ha /* 0x80CBC368@ha */
/* 80CBAFE0  3B E3 C3 68 */	addi r31, r3, l_cull_box@l /* 0x80CBC368@l */
/* 80CBAFE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBAFE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBAFEC  88 03 09 74 */	lbz r0, 0x974(r3)
/* 80CBAFF0  28 00 00 00 */	cmplwi r0, 0
/* 80CBAFF4  40 82 00 0C */	bne lbl_80CBB000
/* 80CBAFF8  38 60 00 00 */	li r3, 0
/* 80CBAFFC  48 00 00 DC */	b lbl_80CBB0D8
lbl_80CBB000:
/* 80CBB000  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80CBB004  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80CBB008  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80CBB00C  7C 03 00 50 */	subf r0, r3, r0
/* 80CBB010  7C 03 07 34 */	extsh r3, r0
/* 80CBB014  4B 6A A0 BD */	bl abs
/* 80CBB018  2C 03 50 00 */	cmpwi r3, 0x5000
/* 80CBB01C  40 80 00 0C */	bge lbl_80CBB028
/* 80CBB020  38 60 00 00 */	li r3, 0
/* 80CBB024  48 00 00 B4 */	b lbl_80CBB0D8
lbl_80CBB028:
/* 80CBB028  38 7D 0B 14 */	addi r3, r29, 0xb14
/* 80CBB02C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBB030  4B 68 B5 81 */	bl PSMTXInverse
/* 80CBB034  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CBB038  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CBB03C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CBB040  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CBB044  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CBB048  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CBB04C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CBB050  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBB054  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBB058  4B 68 B4 59 */	bl PSMTXCopy
/* 80CBB05C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBB060  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBB064  38 81 00 20 */	addi r4, r1, 0x20
/* 80CBB068  7C 85 23 78 */	mr r5, r4
/* 80CBB06C  4B 68 BD 01 */	bl PSMTXMultVec
/* 80CBB070  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80CBB074  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CBB078  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80CBB07C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CBB080  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CBB084  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80CBB088  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CBB08C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CBB090  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBB094  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80CBB098  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80CBB09C  4C 40 13 82 */	cror 2, 0, 2
/* 80CBB0A0  40 82 00 34 */	bne lbl_80CBB0D4
/* 80CBB0A4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CBB0A8  4C 40 13 82 */	cror 2, 0, 2
/* 80CBB0AC  40 82 00 28 */	bne lbl_80CBB0D4
/* 80CBB0B0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80CBB0B4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80CBB0B8  4C 40 13 82 */	cror 2, 0, 2
/* 80CBB0BC  40 82 00 18 */	bne lbl_80CBB0D4
/* 80CBB0C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CBB0C4  4C 40 13 82 */	cror 2, 0, 2
/* 80CBB0C8  40 82 00 0C */	bne lbl_80CBB0D4
/* 80CBB0CC  38 60 00 01 */	li r3, 1
/* 80CBB0D0  48 00 00 08 */	b lbl_80CBB0D8
lbl_80CBB0D4:
/* 80CBB0D4  38 60 00 00 */	li r3, 0
lbl_80CBB0D8:
/* 80CBB0D8  39 61 00 70 */	addi r11, r1, 0x70
/* 80CBB0DC  4B 6A 71 4D */	bl _restgpr_29
/* 80CBB0E0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CBB0E4  7C 08 03 A6 */	mtlr r0
/* 80CBB0E8  38 21 00 70 */	addi r1, r1, 0x70
/* 80CBB0EC  4E 80 00 20 */	blr 
