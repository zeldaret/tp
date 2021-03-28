lbl_80668BA0:
/* 80668BA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80668BA4  7C 08 02 A6 */	mflr r0
/* 80668BA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80668BAC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80668BB0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80668BB4  7C 7F 1B 78 */	mr r31, r3
/* 80668BB8  3C 60 80 67 */	lis r3, lit_3662@ha
/* 80668BBC  3B C3 ED E8 */	addi r30, r3, lit_3662@l
/* 80668BC0  38 61 00 0C */	addi r3, r1, 0xc
/* 80668BC4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80668BC8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80668BCC  4B BF DF 68 */	b __mi__4cXyzCFRC3Vec
/* 80668BD0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80668BD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80668BD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80668BDC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80668BE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80668BE4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80668BE8  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80668BEC  28 00 00 FF */	cmplwi r0, 0xff
/* 80668BF0  41 82 01 54 */	beq lbl_80668D44
/* 80668BF4  38 61 00 18 */	addi r3, r1, 0x18
/* 80668BF8  4B CD E5 40 */	b PSVECSquareMag
/* 80668BFC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80668C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80668C04  40 81 00 58 */	ble lbl_80668C5C
/* 80668C08  FC 00 08 34 */	frsqrte f0, f1
/* 80668C0C  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 80668C10  FC 44 00 32 */	fmul f2, f4, f0
/* 80668C14  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 80668C18  FC 00 00 32 */	fmul f0, f0, f0
/* 80668C1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80668C20  FC 03 00 28 */	fsub f0, f3, f0
/* 80668C24  FC 02 00 32 */	fmul f0, f2, f0
/* 80668C28  FC 44 00 32 */	fmul f2, f4, f0
/* 80668C2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80668C30  FC 01 00 32 */	fmul f0, f1, f0
/* 80668C34  FC 03 00 28 */	fsub f0, f3, f0
/* 80668C38  FC 02 00 32 */	fmul f0, f2, f0
/* 80668C3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80668C40  FC 00 00 32 */	fmul f0, f0, f0
/* 80668C44  FC 01 00 32 */	fmul f0, f1, f0
/* 80668C48  FC 03 00 28 */	fsub f0, f3, f0
/* 80668C4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80668C50  FC 21 00 32 */	fmul f1, f1, f0
/* 80668C54  FC 20 08 18 */	frsp f1, f1
/* 80668C58  48 00 00 88 */	b lbl_80668CE0
lbl_80668C5C:
/* 80668C5C  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 80668C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80668C64  40 80 00 10 */	bge lbl_80668C74
/* 80668C68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80668C6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80668C70  48 00 00 70 */	b lbl_80668CE0
lbl_80668C74:
/* 80668C74  D0 21 00 08 */	stfs f1, 8(r1)
/* 80668C78  80 81 00 08 */	lwz r4, 8(r1)
/* 80668C7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80668C80  3C 00 7F 80 */	lis r0, 0x7f80
/* 80668C84  7C 03 00 00 */	cmpw r3, r0
/* 80668C88  41 82 00 14 */	beq lbl_80668C9C
/* 80668C8C  40 80 00 40 */	bge lbl_80668CCC
/* 80668C90  2C 03 00 00 */	cmpwi r3, 0
/* 80668C94  41 82 00 20 */	beq lbl_80668CB4
/* 80668C98  48 00 00 34 */	b lbl_80668CCC
lbl_80668C9C:
/* 80668C9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80668CA0  41 82 00 0C */	beq lbl_80668CAC
/* 80668CA4  38 00 00 01 */	li r0, 1
/* 80668CA8  48 00 00 28 */	b lbl_80668CD0
lbl_80668CAC:
/* 80668CAC  38 00 00 02 */	li r0, 2
/* 80668CB0  48 00 00 20 */	b lbl_80668CD0
lbl_80668CB4:
/* 80668CB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80668CB8  41 82 00 0C */	beq lbl_80668CC4
/* 80668CBC  38 00 00 05 */	li r0, 5
/* 80668CC0  48 00 00 10 */	b lbl_80668CD0
lbl_80668CC4:
/* 80668CC4  38 00 00 03 */	li r0, 3
/* 80668CC8  48 00 00 08 */	b lbl_80668CD0
lbl_80668CCC:
/* 80668CCC  38 00 00 04 */	li r0, 4
lbl_80668CD0:
/* 80668CD0  2C 00 00 01 */	cmpwi r0, 1
/* 80668CD4  40 82 00 0C */	bne lbl_80668CE0
/* 80668CD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80668CDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80668CE0:
/* 80668CE0  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 80668CE4  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 80668CE8  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80668CEC  C8 5E 00 70 */	lfd f2, 0x70(r30)
/* 80668CF0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80668CF4  3C 00 43 30 */	lis r0, 0x4330
/* 80668CF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80668CFC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80668D00  EC 00 10 28 */	fsubs f0, f0, f2
/* 80668D04  EC 03 00 32 */	fmuls f0, f3, f0
/* 80668D08  EC 04 00 32 */	fmuls f0, f4, f0
/* 80668D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80668D10  40 81 00 34 */	ble lbl_80668D44
/* 80668D14  38 00 00 01 */	li r0, 1
/* 80668D18  B0 1F 05 F2 */	sth r0, 0x5f2(r31)
/* 80668D1C  38 00 FF FF */	li r0, -1
/* 80668D20  B0 1F 05 F6 */	sth r0, 0x5f6(r31)
/* 80668D24  FC 20 18 90 */	fmr f1, f3
/* 80668D28  4B BF EC 2C */	b cM_rndF__Ff
/* 80668D2C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80668D30  EC 00 08 2A */	fadds f0, f0, f1
/* 80668D34  FC 00 00 1E */	fctiwz f0, f0
/* 80668D38  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80668D3C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80668D40  B0 1F 06 00 */	sth r0, 0x600(r31)
lbl_80668D44:
/* 80668D44  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80668D48  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80668D4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80668D50  7C 08 03 A6 */	mtlr r0
/* 80668D54  38 21 00 40 */	addi r1, r1, 0x40
/* 80668D58  4E 80 00 20 */	blr 
