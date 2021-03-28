lbl_8082D9B0:
/* 8082D9B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8082D9B4  7C 08 02 A6 */	mflr r0
/* 8082D9B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8082D9BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8082D9C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8082D9C4  7C 7F 1B 78 */	mr r31, r3
/* 8082D9C8  3C 60 80 83 */	lis r3, lit_3778@ha
/* 8082D9CC  3B C3 F2 08 */	addi r30, r3, lit_3778@l
/* 8082D9D0  3C 60 80 83 */	lis r3, s_BallSearch_Tag__FPvPv@ha
/* 8082D9D4  38 63 95 00 */	addi r3, r3, s_BallSearch_Tag__FPvPv@l
/* 8082D9D8  7F E4 FB 78 */	mr r4, r31
/* 8082D9DC  4B 7F 39 5C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8082D9E0  7C 64 1B 79 */	or. r4, r3, r3
/* 8082D9E4  41 82 01 68 */	beq lbl_8082DB4C
/* 8082D9E8  80 7F 07 84 */	lwz r3, 0x784(r31)
/* 8082D9EC  2C 03 00 01 */	cmpwi r3, 1
/* 8082D9F0  41 82 00 1C */	beq lbl_8082DA0C
/* 8082D9F4  40 80 01 58 */	bge lbl_8082DB4C
/* 8082D9F8  2C 03 00 00 */	cmpwi r3, 0
/* 8082D9FC  40 80 00 08 */	bge lbl_8082DA04
/* 8082DA00  48 00 01 4C */	b lbl_8082DB4C
lbl_8082DA04:
/* 8082DA04  38 03 00 01 */	addi r0, r3, 1
/* 8082DA08  90 1F 07 84 */	stw r0, 0x784(r31)
lbl_8082DA0C:
/* 8082DA0C  38 61 00 0C */	addi r3, r1, 0xc
/* 8082DA10  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8082DA14  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8082DA18  4B A3 91 1C */	b __mi__4cXyzCFRC3Vec
/* 8082DA1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8082DA20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8082DA24  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082DA28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8082DA2C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8082DA30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082DA34  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8082DA38  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8082DA3C  38 61 00 18 */	addi r3, r1, 0x18
/* 8082DA40  4B B1 96 F8 */	b PSVECSquareMag
/* 8082DA44  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8082DA48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082DA4C  40 81 00 58 */	ble lbl_8082DAA4
/* 8082DA50  FC 00 08 34 */	frsqrte f0, f1
/* 8082DA54  C8 9E 01 88 */	lfd f4, 0x188(r30)
/* 8082DA58  FC 44 00 32 */	fmul f2, f4, f0
/* 8082DA5C  C8 7E 01 90 */	lfd f3, 0x190(r30)
/* 8082DA60  FC 00 00 32 */	fmul f0, f0, f0
/* 8082DA64  FC 01 00 32 */	fmul f0, f1, f0
/* 8082DA68  FC 03 00 28 */	fsub f0, f3, f0
/* 8082DA6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8082DA70  FC 44 00 32 */	fmul f2, f4, f0
/* 8082DA74  FC 00 00 32 */	fmul f0, f0, f0
/* 8082DA78  FC 01 00 32 */	fmul f0, f1, f0
/* 8082DA7C  FC 03 00 28 */	fsub f0, f3, f0
/* 8082DA80  FC 02 00 32 */	fmul f0, f2, f0
/* 8082DA84  FC 44 00 32 */	fmul f2, f4, f0
/* 8082DA88  FC 00 00 32 */	fmul f0, f0, f0
/* 8082DA8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8082DA90  FC 03 00 28 */	fsub f0, f3, f0
/* 8082DA94  FC 02 00 32 */	fmul f0, f2, f0
/* 8082DA98  FC 21 00 32 */	fmul f1, f1, f0
/* 8082DA9C  FC 20 08 18 */	frsp f1, f1
/* 8082DAA0  48 00 00 88 */	b lbl_8082DB28
lbl_8082DAA4:
/* 8082DAA4  C8 1E 01 98 */	lfd f0, 0x198(r30)
/* 8082DAA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082DAAC  40 80 00 10 */	bge lbl_8082DABC
/* 8082DAB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082DAB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8082DAB8  48 00 00 70 */	b lbl_8082DB28
lbl_8082DABC:
/* 8082DABC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8082DAC0  80 81 00 08 */	lwz r4, 8(r1)
/* 8082DAC4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8082DAC8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8082DACC  7C 03 00 00 */	cmpw r3, r0
/* 8082DAD0  41 82 00 14 */	beq lbl_8082DAE4
/* 8082DAD4  40 80 00 40 */	bge lbl_8082DB14
/* 8082DAD8  2C 03 00 00 */	cmpwi r3, 0
/* 8082DADC  41 82 00 20 */	beq lbl_8082DAFC
/* 8082DAE0  48 00 00 34 */	b lbl_8082DB14
lbl_8082DAE4:
/* 8082DAE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082DAE8  41 82 00 0C */	beq lbl_8082DAF4
/* 8082DAEC  38 00 00 01 */	li r0, 1
/* 8082DAF0  48 00 00 28 */	b lbl_8082DB18
lbl_8082DAF4:
/* 8082DAF4  38 00 00 02 */	li r0, 2
/* 8082DAF8  48 00 00 20 */	b lbl_8082DB18
lbl_8082DAFC:
/* 8082DAFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082DB00  41 82 00 0C */	beq lbl_8082DB0C
/* 8082DB04  38 00 00 05 */	li r0, 5
/* 8082DB08  48 00 00 10 */	b lbl_8082DB18
lbl_8082DB0C:
/* 8082DB0C  38 00 00 03 */	li r0, 3
/* 8082DB10  48 00 00 08 */	b lbl_8082DB18
lbl_8082DB14:
/* 8082DB14  38 00 00 04 */	li r0, 4
lbl_8082DB18:
/* 8082DB18  2C 00 00 01 */	cmpwi r0, 1
/* 8082DB1C  40 82 00 0C */	bne lbl_8082DB28
/* 8082DB20  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082DB24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8082DB28:
/* 8082DB28  C0 1F 07 78 */	lfs f0, 0x778(r31)
/* 8082DB2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082DB30  40 80 00 1C */	bge lbl_8082DB4C
/* 8082DB34  3C 60 80 83 */	lis r3, mStartFlag@ha
/* 8082DB38  84 03 F7 50 */	lwzu r0, mStartFlag@l(r3)
/* 8082DB3C  2C 00 00 00 */	cmpwi r0, 0
/* 8082DB40  40 82 00 0C */	bne lbl_8082DB4C
/* 8082DB44  38 00 00 01 */	li r0, 1
/* 8082DB48  90 03 00 00 */	stw r0, 0(r3)
lbl_8082DB4C:
/* 8082DB4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8082DB50  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8082DB54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8082DB58  7C 08 03 A6 */	mtlr r0
/* 8082DB5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8082DB60  4E 80 00 20 */	blr 
