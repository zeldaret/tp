lbl_806BC0A8:
/* 806BC0A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806BC0AC  7C 08 02 A6 */	mflr r0
/* 806BC0B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806BC0B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806BC0B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806BC0BC  7C 7F 1B 78 */	mr r31, r3
/* 806BC0C0  3C 60 80 6C */	lis r3, lit_3917@ha /* 0x806BE48C@ha */
/* 806BC0C4  3B C3 E4 8C */	addi r30, r3, lit_3917@l /* 0x806BE48C@l */
/* 806BC0C8  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 806BC0CC  38 81 00 10 */	addi r4, r1, 0x10
/* 806BC0D0  4B 95 D8 ED */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806BC0D4  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 806BC0D8  2C 00 00 00 */	cmpwi r0, 0
/* 806BC0DC  41 82 00 28 */	beq lbl_806BC104
/* 806BC0E0  40 80 00 10 */	bge lbl_806BC0F0
/* 806BC0E4  2C 00 FF FF */	cmpwi r0, -1
/* 806BC0E8  40 80 00 14 */	bge lbl_806BC0FC
/* 806BC0EC  48 00 00 F4 */	b lbl_806BC1E0
lbl_806BC0F0:
/* 806BC0F0  2C 00 00 02 */	cmpwi r0, 2
/* 806BC0F4  40 80 00 EC */	bge lbl_806BC1E0
/* 806BC0F8  48 00 00 50 */	b lbl_806BC148
lbl_806BC0FC:
/* 806BC0FC  38 00 00 02 */	li r0, 2
/* 806BC100  B0 1F 06 8A */	sth r0, 0x68a(r31)
lbl_806BC104:
/* 806BC104  7F E3 FB 78 */	mr r3, r31
/* 806BC108  38 80 00 09 */	li r4, 9
/* 806BC10C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806BC110  38 A0 00 02 */	li r5, 2
/* 806BC114  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806BC118  4B FF F9 F9 */	bl anm_init__FP10e_fs_classifUcf
/* 806BC11C  38 00 00 01 */	li r0, 1
/* 806BC120  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 806BC124  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806BC128  4B BA B8 2D */	bl cM_rndF__Ff
/* 806BC12C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 806BC130  EC 00 08 2A */	fadds f0, f0, f1
/* 806BC134  FC 00 00 1E */	fctiwz f0, f0
/* 806BC138  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806BC13C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806BC140  B0 1F 06 88 */	sth r0, 0x688(r31)
/* 806BC144  48 00 00 9C */	b lbl_806BC1E0
lbl_806BC148:
/* 806BC148  A8 1F 06 8A */	lha r0, 0x68a(r31)
/* 806BC14C  2C 00 00 01 */	cmpwi r0, 1
/* 806BC150  40 82 00 30 */	bne lbl_806BC180
/* 806BC154  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D9@ha */
/* 806BC158  38 03 00 D9 */	addi r0, r3, 0x00D9 /* 0x000700D9@l */
/* 806BC15C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BC160  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806BC164  38 81 00 0C */	addi r4, r1, 0xc
/* 806BC168  38 A0 00 00 */	li r5, 0
/* 806BC16C  38 C0 FF FF */	li r6, -1
/* 806BC170  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806BC174  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BC178  7D 89 03 A6 */	mtctr r12
/* 806BC17C  4E 80 04 21 */	bctrl 
lbl_806BC180:
/* 806BC180  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806BC184  38 63 00 0C */	addi r3, r3, 0xc
/* 806BC188  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806BC18C  4B C6 C2 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 806BC190  2C 03 00 00 */	cmpwi r3, 0
/* 806BC194  41 82 00 30 */	beq lbl_806BC1C4
/* 806BC198  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DA@ha */
/* 806BC19C  38 03 00 DA */	addi r0, r3, 0x00DA /* 0x000700DA@l */
/* 806BC1A0  90 01 00 08 */	stw r0, 8(r1)
/* 806BC1A4  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806BC1A8  38 81 00 08 */	addi r4, r1, 8
/* 806BC1AC  38 A0 00 00 */	li r5, 0
/* 806BC1B0  38 C0 FF FF */	li r6, -1
/* 806BC1B4  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806BC1B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BC1BC  7D 89 03 A6 */	mtctr r12
/* 806BC1C0  4E 80 04 21 */	bctrl 
lbl_806BC1C4:
/* 806BC1C4  A8 1F 06 88 */	lha r0, 0x688(r31)
/* 806BC1C8  2C 00 00 00 */	cmpwi r0, 0
/* 806BC1CC  40 82 00 14 */	bne lbl_806BC1E0
/* 806BC1D0  38 00 00 02 */	li r0, 2
/* 806BC1D4  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 806BC1D8  38 00 00 00 */	li r0, 0
/* 806BC1DC  B0 1F 06 80 */	sth r0, 0x680(r31)
lbl_806BC1E0:
/* 806BC1E0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 806BC1E4  A8 9F 05 C6 */	lha r4, 0x5c6(r31)
/* 806BC1E8  38 A0 00 10 */	li r5, 0x10
/* 806BC1EC  38 C0 04 00 */	li r6, 0x400
/* 806BC1F0  4B BB 44 19 */	bl cLib_addCalcAngleS2__FPssss
/* 806BC1F4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 806BC1F8  28 03 00 00 */	cmplwi r3, 0
/* 806BC1FC  41 82 00 50 */	beq lbl_806BC24C
/* 806BC200  88 03 06 1A */	lbz r0, 0x61a(r3)
/* 806BC204  28 00 00 00 */	cmplwi r0, 0
/* 806BC208  41 82 00 44 */	beq lbl_806BC24C
/* 806BC20C  28 00 00 04 */	cmplwi r0, 4
/* 806BC210  41 82 00 3C */	beq lbl_806BC24C
/* 806BC214  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 806BC218  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806BC21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC220  40 81 00 2C */	ble lbl_806BC24C
/* 806BC224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BC228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BC22C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806BC230  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 806BC234  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806BC238  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806BC23C  EC 20 00 72 */	fmuls f1, f0, f1
/* 806BC240  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806BC244  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 806BC248  4B BB 37 F5 */	bl cLib_addCalc2__FPffff
lbl_806BC24C:
/* 806BC24C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806BC250  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806BC254  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BC258  7C 08 03 A6 */	mtlr r0
/* 806BC25C  38 21 00 30 */	addi r1, r1, 0x30
/* 806BC260  4E 80 00 20 */	blr 
