lbl_8019CE5C:
/* 8019CE5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8019CE60  7C 08 02 A6 */	mflr r0
/* 8019CE64  90 01 00 44 */	stw r0, 0x44(r1)
/* 8019CE68  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8019CE6C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8019CE70  7C 67 1B 78 */	mr r7, r3
/* 8019CE74  7C 80 23 78 */	mr r0, r4
/* 8019CE78  7C BE 2B 78 */	mr r30, r5
/* 8019CE7C  7C DF 33 78 */	mr r31, r6
/* 8019CE80  38 61 00 18 */	addi r3, r1, 0x18
/* 8019CE84  7C E4 3B 78 */	mr r4, r7
/* 8019CE88  7C 05 03 78 */	mr r5, r0
/* 8019CE8C  48 0C 9C A9 */	bl __mi__4cXyzCFRC3Vec
/* 8019CE90  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8019CE94  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8019CE98  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8019CE9C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8019CEA0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8019CEA4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8019CEA8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8019CEAC  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019CEB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8019CEB4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8019CEB8  38 61 00 0C */	addi r3, r1, 0xc
/* 8019CEBC  48 1A A2 7D */	bl PSVECSquareMag
/* 8019CEC0  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019CEC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019CEC8  40 81 00 58 */	ble lbl_8019CF20
/* 8019CECC  FC 00 08 34 */	frsqrte f0, f1
/* 8019CED0  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 8019CED4  FC 44 00 32 */	fmul f2, f4, f0
/* 8019CED8  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 8019CEDC  FC 00 00 32 */	fmul f0, f0, f0
/* 8019CEE0  FC 01 00 32 */	fmul f0, f1, f0
/* 8019CEE4  FC 03 00 28 */	fsub f0, f3, f0
/* 8019CEE8  FC 02 00 32 */	fmul f0, f2, f0
/* 8019CEEC  FC 44 00 32 */	fmul f2, f4, f0
/* 8019CEF0  FC 00 00 32 */	fmul f0, f0, f0
/* 8019CEF4  FC 01 00 32 */	fmul f0, f1, f0
/* 8019CEF8  FC 03 00 28 */	fsub f0, f3, f0
/* 8019CEFC  FC 02 00 32 */	fmul f0, f2, f0
/* 8019CF00  FC 44 00 32 */	fmul f2, f4, f0
/* 8019CF04  FC 00 00 32 */	fmul f0, f0, f0
/* 8019CF08  FC 01 00 32 */	fmul f0, f1, f0
/* 8019CF0C  FC 03 00 28 */	fsub f0, f3, f0
/* 8019CF10  FC 02 00 32 */	fmul f0, f2, f0
/* 8019CF14  FC 41 00 32 */	fmul f2, f1, f0
/* 8019CF18  FC 40 10 18 */	frsp f2, f2
/* 8019CF1C  48 00 00 90 */	b lbl_8019CFAC
lbl_8019CF20:
/* 8019CF20  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 8019CF24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019CF28  40 80 00 10 */	bge lbl_8019CF38
/* 8019CF2C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8019CF30  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8019CF34  48 00 00 78 */	b lbl_8019CFAC
lbl_8019CF38:
/* 8019CF38  D0 21 00 08 */	stfs f1, 8(r1)
/* 8019CF3C  80 81 00 08 */	lwz r4, 8(r1)
/* 8019CF40  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8019CF44  3C 00 7F 80 */	lis r0, 0x7f80
/* 8019CF48  7C 03 00 00 */	cmpw r3, r0
/* 8019CF4C  41 82 00 14 */	beq lbl_8019CF60
/* 8019CF50  40 80 00 40 */	bge lbl_8019CF90
/* 8019CF54  2C 03 00 00 */	cmpwi r3, 0
/* 8019CF58  41 82 00 20 */	beq lbl_8019CF78
/* 8019CF5C  48 00 00 34 */	b lbl_8019CF90
lbl_8019CF60:
/* 8019CF60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019CF64  41 82 00 0C */	beq lbl_8019CF70
/* 8019CF68  38 00 00 01 */	li r0, 1
/* 8019CF6C  48 00 00 28 */	b lbl_8019CF94
lbl_8019CF70:
/* 8019CF70  38 00 00 02 */	li r0, 2
/* 8019CF74  48 00 00 20 */	b lbl_8019CF94
lbl_8019CF78:
/* 8019CF78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019CF7C  41 82 00 0C */	beq lbl_8019CF88
/* 8019CF80  38 00 00 05 */	li r0, 5
/* 8019CF84  48 00 00 10 */	b lbl_8019CF94
lbl_8019CF88:
/* 8019CF88  38 00 00 03 */	li r0, 3
/* 8019CF8C  48 00 00 08 */	b lbl_8019CF94
lbl_8019CF90:
/* 8019CF90  38 00 00 04 */	li r0, 4
lbl_8019CF94:
/* 8019CF94  2C 00 00 01 */	cmpwi r0, 1
/* 8019CF98  40 82 00 10 */	bne lbl_8019CFA8
/* 8019CF9C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8019CFA0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8019CFA4  48 00 00 08 */	b lbl_8019CFAC
lbl_8019CFA8:
/* 8019CFA8  FC 40 08 90 */	fmr f2, f1
lbl_8019CFAC:
/* 8019CFAC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8019CFB0  FC 20 00 50 */	fneg f1, f0
/* 8019CFB4  48 0C A6 C1 */	bl cM_atan2s__Fff
/* 8019CFB8  B0 7E 00 00 */	sth r3, 0(r30)
/* 8019CFBC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8019CFC0  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8019CFC4  48 0C A6 B1 */	bl cM_atan2s__Fff
/* 8019CFC8  B0 7F 00 00 */	sth r3, 0(r31)
/* 8019CFCC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8019CFD0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8019CFD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8019CFD8  7C 08 03 A6 */	mtlr r0
/* 8019CFDC  38 21 00 40 */	addi r1, r1, 0x40
/* 8019CFE0  4E 80 00 20 */	blr 
