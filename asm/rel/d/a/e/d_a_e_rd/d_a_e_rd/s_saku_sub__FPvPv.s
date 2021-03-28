lbl_8050C4B0:
/* 8050C4B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050C4B4  7C 08 02 A6 */	mflr r0
/* 8050C4B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050C4BC  39 61 00 40 */	addi r11, r1, 0x40
/* 8050C4C0  4B E5 5D 1C */	b _savegpr_29
/* 8050C4C4  7C 7D 1B 78 */	mr r29, r3
/* 8050C4C8  7C 9E 23 78 */	mr r30, r4
/* 8050C4CC  3C 80 80 52 */	lis r4, lit_4208@ha
/* 8050C4D0  3B E4 85 84 */	addi r31, r4, lit_4208@l
/* 8050C4D4  4B B0 C8 0C */	b fopAc_IsActor__FPv
/* 8050C4D8  2C 03 00 00 */	cmpwi r3, 0
/* 8050C4DC  41 82 01 38 */	beq lbl_8050C614
/* 8050C4E0  A8 1D 00 08 */	lha r0, 8(r29)
/* 8050C4E4  2C 00 01 4C */	cmpwi r0, 0x14c
/* 8050C4E8  40 82 01 2C */	bne lbl_8050C614
/* 8050C4EC  38 61 00 0C */	addi r3, r1, 0xc
/* 8050C4F0  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8050C4F4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8050C4F8  4B D5 A6 3C */	b __mi__4cXyzCFRC3Vec
/* 8050C4FC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8050C500  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8050C504  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8050C508  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050C50C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8050C510  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050C514  38 61 00 18 */	addi r3, r1, 0x18
/* 8050C518  4B E3 AC 20 */	b PSVECSquareMag
/* 8050C51C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050C520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050C524  40 81 00 58 */	ble lbl_8050C57C
/* 8050C528  FC 00 08 34 */	frsqrte f0, f1
/* 8050C52C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8050C530  FC 44 00 32 */	fmul f2, f4, f0
/* 8050C534  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8050C538  FC 00 00 32 */	fmul f0, f0, f0
/* 8050C53C  FC 01 00 32 */	fmul f0, f1, f0
/* 8050C540  FC 03 00 28 */	fsub f0, f3, f0
/* 8050C544  FC 02 00 32 */	fmul f0, f2, f0
/* 8050C548  FC 44 00 32 */	fmul f2, f4, f0
/* 8050C54C  FC 00 00 32 */	fmul f0, f0, f0
/* 8050C550  FC 01 00 32 */	fmul f0, f1, f0
/* 8050C554  FC 03 00 28 */	fsub f0, f3, f0
/* 8050C558  FC 02 00 32 */	fmul f0, f2, f0
/* 8050C55C  FC 44 00 32 */	fmul f2, f4, f0
/* 8050C560  FC 00 00 32 */	fmul f0, f0, f0
/* 8050C564  FC 01 00 32 */	fmul f0, f1, f0
/* 8050C568  FC 03 00 28 */	fsub f0, f3, f0
/* 8050C56C  FC 02 00 32 */	fmul f0, f2, f0
/* 8050C570  FC 21 00 32 */	fmul f1, f1, f0
/* 8050C574  FC 20 08 18 */	frsp f1, f1
/* 8050C578  48 00 00 88 */	b lbl_8050C600
lbl_8050C57C:
/* 8050C57C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8050C580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050C584  40 80 00 10 */	bge lbl_8050C594
/* 8050C588  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8050C58C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8050C590  48 00 00 70 */	b lbl_8050C600
lbl_8050C594:
/* 8050C594  D0 21 00 08 */	stfs f1, 8(r1)
/* 8050C598  80 81 00 08 */	lwz r4, 8(r1)
/* 8050C59C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8050C5A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8050C5A4  7C 03 00 00 */	cmpw r3, r0
/* 8050C5A8  41 82 00 14 */	beq lbl_8050C5BC
/* 8050C5AC  40 80 00 40 */	bge lbl_8050C5EC
/* 8050C5B0  2C 03 00 00 */	cmpwi r3, 0
/* 8050C5B4  41 82 00 20 */	beq lbl_8050C5D4
/* 8050C5B8  48 00 00 34 */	b lbl_8050C5EC
lbl_8050C5BC:
/* 8050C5BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050C5C0  41 82 00 0C */	beq lbl_8050C5CC
/* 8050C5C4  38 00 00 01 */	li r0, 1
/* 8050C5C8  48 00 00 28 */	b lbl_8050C5F0
lbl_8050C5CC:
/* 8050C5CC  38 00 00 02 */	li r0, 2
/* 8050C5D0  48 00 00 20 */	b lbl_8050C5F0
lbl_8050C5D4:
/* 8050C5D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050C5D8  41 82 00 0C */	beq lbl_8050C5E4
/* 8050C5DC  38 00 00 05 */	li r0, 5
/* 8050C5E0  48 00 00 10 */	b lbl_8050C5F0
lbl_8050C5E4:
/* 8050C5E4  38 00 00 03 */	li r0, 3
/* 8050C5E8  48 00 00 08 */	b lbl_8050C5F0
lbl_8050C5EC:
/* 8050C5EC  38 00 00 04 */	li r0, 4
lbl_8050C5F0:
/* 8050C5F0  2C 00 00 01 */	cmpwi r0, 1
/* 8050C5F4  40 82 00 0C */	bne lbl_8050C600
/* 8050C5F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8050C5FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8050C600:
/* 8050C600  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8050C604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050C608  40 80 00 0C */	bge lbl_8050C614
/* 8050C60C  7F A3 EB 78 */	mr r3, r29
/* 8050C610  48 00 00 08 */	b lbl_8050C618
lbl_8050C614:
/* 8050C614  38 60 00 00 */	li r3, 0
lbl_8050C618:
/* 8050C618  39 61 00 40 */	addi r11, r1, 0x40
/* 8050C61C  4B E5 5C 0C */	b _restgpr_29
/* 8050C620  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050C624  7C 08 03 A6 */	mtlr r0
/* 8050C628  38 21 00 40 */	addi r1, r1, 0x40
/* 8050C62C  4E 80 00 20 */	blr 
