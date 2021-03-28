lbl_80035CC8:
/* 80035CC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80035CCC  7C 08 02 A6 */	mflr r0
/* 80035CD0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80035CD4  39 61 00 60 */	addi r11, r1, 0x60
/* 80035CD8  48 32 C5 05 */	bl _savegpr_29
/* 80035CDC  7C 7D 1B 78 */	mr r29, r3
/* 80035CE0  7C 9E 23 78 */	mr r30, r4
/* 80035CE4  7C DF 33 78 */	mr r31, r6
/* 80035CE8  28 05 00 00 */	cmplwi r5, 0
/* 80035CEC  41 82 00 28 */	beq lbl_80035D14
/* 80035CF0  7C A3 2B 78 */	mr r3, r5
/* 80035CF4  4B FD 72 19 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80035CF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80035CFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80035D00  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 80035D04  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 80035D08  7F E5 FB 78 */	mr r5, r31
/* 80035D0C  48 31 10 61 */	bl PSMTXMultVec
/* 80035D10  48 00 00 20 */	b lbl_80035D30
lbl_80035D14:
/* 80035D14  3C 60 80 43 */	lis r3, BaseZ__4cXyz@ha
/* 80035D18  C4 03 0D 3C */	lfsu f0, BaseZ__4cXyz@l(r3)
/* 80035D1C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80035D20  C0 03 00 04 */	lfs f0, 4(r3)
/* 80035D24  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80035D28  C0 03 00 08 */	lfs f0, 8(r3)
/* 80035D2C  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80035D30:
/* 80035D30  38 61 00 2C */	addi r3, r1, 0x2c
/* 80035D34  7F E4 FB 78 */	mr r4, r31
/* 80035D38  C0 22 83 60 */	lfs f1, lit_3655(r2)
/* 80035D3C  48 23 0E 49 */	bl __ml__4cXyzCFf
/* 80035D40  38 61 00 20 */	addi r3, r1, 0x20
/* 80035D44  7F C4 F3 78 */	mr r4, r30
/* 80035D48  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80035D4C  48 23 0D E9 */	bl __mi__4cXyzCFRC3Vec
/* 80035D50  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80035D54  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80035D58  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80035D5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80035D60  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80035D64  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80035D68  38 61 00 14 */	addi r3, r1, 0x14
/* 80035D6C  7F E4 FB 78 */	mr r4, r31
/* 80035D70  C0 22 83 60 */	lfs f1, lit_3655(r2)
/* 80035D74  48 23 0E 11 */	bl __ml__4cXyzCFf
/* 80035D78  38 61 00 08 */	addi r3, r1, 8
/* 80035D7C  7F C4 F3 78 */	mr r4, r30
/* 80035D80  38 A1 00 14 */	addi r5, r1, 0x14
/* 80035D84  48 23 0D 61 */	bl __pl__4cXyzCFRC3Vec
/* 80035D88  C0 01 00 08 */	lfs f0, 8(r1)
/* 80035D8C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80035D90  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80035D94  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80035D98  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80035D9C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80035DA0  7F A3 EB 78 */	mr r3, r29
/* 80035DA4  38 81 00 44 */	addi r4, r1, 0x44
/* 80035DA8  38 A1 00 38 */	addi r5, r1, 0x38
/* 80035DAC  48 23 95 3D */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80035DB0  39 61 00 60 */	addi r11, r1, 0x60
/* 80035DB4  48 32 C4 75 */	bl _restgpr_29
/* 80035DB8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80035DBC  7C 08 03 A6 */	mtlr r0
/* 80035DC0  38 21 00 60 */	addi r1, r1, 0x60
/* 80035DC4  4E 80 00 20 */	blr 
