lbl_80D5B460:
/* 80D5B460  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D5B464  7C 08 02 A6 */	mflr r0
/* 80D5B468  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D5B46C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D5B470  4B 60 6D 6D */	bl _savegpr_29
/* 80D5B474  7C 7D 1B 78 */	mr r29, r3
/* 80D5B478  3C 60 80 D6 */	lis r3, lit_3724@ha /* 0x80D5B7EC@ha */
/* 80D5B47C  3B E3 B7 EC */	addi r31, r3, lit_3724@l /* 0x80D5B7EC@l */
/* 80D5B480  3B C0 00 00 */	li r30, 0
/* 80D5B484  3C 60 80 D6 */	lis r3, searchSekizoAct__13daLv6CstaSw_cFPvPv@ha /* 0x80D5B410@ha */
/* 80D5B488  38 63 B4 10 */	addi r3, r3, searchSekizoAct__13daLv6CstaSw_cFPvPv@l /* 0x80D5B410@l */
/* 80D5B48C  7F A4 EB 78 */	mr r4, r29
/* 80D5B490  4B 2B E3 69 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D5B494  7C 65 1B 79 */	or. r5, r3, r3
/* 80D5B498  40 82 00 0C */	bne lbl_80D5B4A4
/* 80D5B49C  38 60 00 00 */	li r3, 0
/* 80D5B4A0  48 00 01 48 */	b lbl_80D5B5E8
lbl_80D5B4A4:
/* 80D5B4A4  38 61 00 18 */	addi r3, r1, 0x18
/* 80D5B4A8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D5B4AC  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80D5B4B0  4B 50 B6 85 */	bl __mi__4cXyzCFRC3Vec
/* 80D5B4B4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80D5B4B8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D5B4BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D5B4C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D5B4C4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80D5B4C8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D5B4CC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80D5B4D0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D5B4D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D5B4D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D5B4DC  38 61 00 0C */	addi r3, r1, 0xc
/* 80D5B4E0  4B 5E BC 59 */	bl PSVECSquareMag
/* 80D5B4E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D5B4E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5B4EC  40 81 00 58 */	ble lbl_80D5B544
/* 80D5B4F0  FC 00 08 34 */	frsqrte f0, f1
/* 80D5B4F4  C8 9F 00 08 */	lfd f4, 8(r31)
/* 80D5B4F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5B4FC  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 80D5B500  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5B504  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5B508  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5B50C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5B510  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5B514  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5B518  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5B51C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5B520  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5B524  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5B528  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5B52C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5B530  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5B534  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5B538  FC 21 00 32 */	fmul f1, f1, f0
/* 80D5B53C  FC 20 08 18 */	frsp f1, f1
/* 80D5B540  48 00 00 88 */	b lbl_80D5B5C8
lbl_80D5B544:
/* 80D5B544  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80D5B548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5B54C  40 80 00 10 */	bge lbl_80D5B55C
/* 80D5B550  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5B554  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D5B558  48 00 00 70 */	b lbl_80D5B5C8
lbl_80D5B55C:
/* 80D5B55C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D5B560  80 81 00 08 */	lwz r4, 8(r1)
/* 80D5B564  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D5B568  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D5B56C  7C 03 00 00 */	cmpw r3, r0
/* 80D5B570  41 82 00 14 */	beq lbl_80D5B584
/* 80D5B574  40 80 00 40 */	bge lbl_80D5B5B4
/* 80D5B578  2C 03 00 00 */	cmpwi r3, 0
/* 80D5B57C  41 82 00 20 */	beq lbl_80D5B59C
/* 80D5B580  48 00 00 34 */	b lbl_80D5B5B4
lbl_80D5B584:
/* 80D5B584  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5B588  41 82 00 0C */	beq lbl_80D5B594
/* 80D5B58C  38 00 00 01 */	li r0, 1
/* 80D5B590  48 00 00 28 */	b lbl_80D5B5B8
lbl_80D5B594:
/* 80D5B594  38 00 00 02 */	li r0, 2
/* 80D5B598  48 00 00 20 */	b lbl_80D5B5B8
lbl_80D5B59C:
/* 80D5B59C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5B5A0  41 82 00 0C */	beq lbl_80D5B5AC
/* 80D5B5A4  38 00 00 05 */	li r0, 5
/* 80D5B5A8  48 00 00 10 */	b lbl_80D5B5B8
lbl_80D5B5AC:
/* 80D5B5AC  38 00 00 03 */	li r0, 3
/* 80D5B5B0  48 00 00 08 */	b lbl_80D5B5B8
lbl_80D5B5B4:
/* 80D5B5B4  38 00 00 04 */	li r0, 4
lbl_80D5B5B8:
/* 80D5B5B8  2C 00 00 01 */	cmpwi r0, 1
/* 80D5B5BC  40 82 00 0C */	bne lbl_80D5B5C8
/* 80D5B5C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5B5C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D5B5C8:
/* 80D5B5C8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80D5B5CC  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80D5B5D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5B5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5B5D8  4C 40 13 82 */	cror 2, 0, 2
/* 80D5B5DC  40 82 00 08 */	bne lbl_80D5B5E4
/* 80D5B5E0  3B C0 00 01 */	li r30, 1
lbl_80D5B5E4:
/* 80D5B5E4  7F C3 F3 78 */	mr r3, r30
lbl_80D5B5E8:
/* 80D5B5E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80D5B5EC  4B 60 6C 3D */	bl _restgpr_29
/* 80D5B5F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D5B5F4  7C 08 03 A6 */	mtlr r0
/* 80D5B5F8  38 21 00 40 */	addi r1, r1, 0x40
/* 80D5B5FC  4E 80 00 20 */	blr 
