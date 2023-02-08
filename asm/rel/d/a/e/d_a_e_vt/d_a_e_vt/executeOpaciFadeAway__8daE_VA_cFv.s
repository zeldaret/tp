lbl_807CADB8:
/* 807CADB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807CADBC  7C 08 02 A6 */	mflr r0
/* 807CADC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807CADC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807CADC8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807CADCC  7C 7E 1B 78 */	mr r30, r3
/* 807CADD0  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807CADD4  3B E4 EC A8 */	addi r31, r4, lit_3907@l /* 0x807CECA8@l */
/* 807CADD8  38 A0 00 00 */	li r5, 0
/* 807CADDC  90 A3 05 5C */	stw r5, 0x55c(r3)
/* 807CADE0  38 00 00 03 */	li r0, 3
/* 807CADE4  B0 03 13 3C */	sth r0, 0x133c(r3)
/* 807CADE8  B0 03 13 3A */	sth r0, 0x133a(r3)
/* 807CADEC  B0 03 13 38 */	sth r0, 0x1338(r3)
/* 807CADF0  80 03 13 20 */	lwz r0, 0x1320(r3)
/* 807CADF4  28 00 00 0A */	cmplwi r0, 0xa
/* 807CADF8  41 81 03 8C */	bgt lbl_807CB184
/* 807CADFC  3C 80 80 7D */	lis r4, lit_7741@ha /* 0x807CF2D8@ha */
/* 807CAE00  38 84 F2 D8 */	addi r4, r4, lit_7741@l /* 0x807CF2D8@l */
/* 807CAE04  54 00 10 3A */	slwi r0, r0, 2
/* 807CAE08  7C 04 00 2E */	lwzx r0, r4, r0
/* 807CAE0C  7C 09 03 A6 */	mtctr r0
/* 807CAE10  4E 80 04 20 */	bctr 
lbl_807CAE14:
/* 807CAE14  38 80 00 27 */	li r4, 0x27
/* 807CAE18  4B FF 8A A5 */	bl checkBck__8daE_VA_cFi
/* 807CAE1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807CAE20  41 82 00 B4 */	beq lbl_807CAED4
/* 807CAE24  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CAE28  38 63 00 0C */	addi r3, r3, 0xc
/* 807CAE2C  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 807CAE30  4B B5 D5 FD */	bl checkPass__12J3DFrameCtrlFf
/* 807CAE34  2C 03 00 00 */	cmpwi r3, 0
/* 807CAE38  41 82 00 30 */	beq lbl_807CAE68
/* 807CAE3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033C@ha */
/* 807CAE40  38 03 03 3C */	addi r0, r3, 0x033C /* 0x0007033C@l */
/* 807CAE44  90 01 00 20 */	stw r0, 0x20(r1)
/* 807CAE48  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CAE4C  38 81 00 20 */	addi r4, r1, 0x20
/* 807CAE50  38 A0 00 00 */	li r5, 0
/* 807CAE54  38 C0 FF FF */	li r6, -1
/* 807CAE58  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CAE5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CAE60  7D 89 03 A6 */	mtctr r12
/* 807CAE64  4E 80 04 21 */	bctrl 
lbl_807CAE68:
/* 807CAE68  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CAE6C  38 63 00 0C */	addi r3, r3, 0xc
/* 807CAE70  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 807CAE74  4B B5 D5 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 807CAE78  2C 03 00 00 */	cmpwi r3, 0
/* 807CAE7C  41 82 00 58 */	beq lbl_807CAED4
/* 807CAE80  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033D@ha */
/* 807CAE84  38 03 03 3D */	addi r0, r3, 0x033D /* 0x0007033D@l */
/* 807CAE88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807CAE8C  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CAE90  38 81 00 1C */	addi r4, r1, 0x1c
/* 807CAE94  38 A0 00 00 */	li r5, 0
/* 807CAE98  38 C0 FF FF */	li r6, -1
/* 807CAE9C  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CAEA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CAEA4  7D 89 03 A6 */	mtctr r12
/* 807CAEA8  4E 80 04 21 */	bctrl 
/* 807CAEAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032D@ha */
/* 807CAEB0  38 03 03 2D */	addi r0, r3, 0x032D /* 0x0007032D@l */
/* 807CAEB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 807CAEB8  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CAEBC  38 81 00 18 */	addi r4, r1, 0x18
/* 807CAEC0  38 A0 FF FF */	li r5, -1
/* 807CAEC4  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CAEC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CAECC  7D 89 03 A6 */	mtctr r12
/* 807CAED0  4E 80 04 21 */	bctrl 
lbl_807CAED4:
/* 807CAED4  38 60 00 00 */	li r3, 0
/* 807CAED8  90 7E 13 70 */	stw r3, 0x1370(r30)
/* 807CAEDC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CAEE0  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 807CAEE4  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 807CAEE8  38 A0 00 01 */	li r5, 1
/* 807CAEEC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 807CAEF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CAEF4  40 82 00 14 */	bne lbl_807CAF08
/* 807CAEF8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 807CAEFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CAF00  41 82 00 08 */	beq lbl_807CAF08
/* 807CAF04  7C 65 1B 78 */	mr r5, r3
lbl_807CAF08:
/* 807CAF08  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 807CAF0C  41 82 02 78 */	beq lbl_807CB184
/* 807CAF10  7F C3 F3 78 */	mr r3, r30
/* 807CAF14  38 80 00 02 */	li r4, 2
/* 807CAF18  38 A0 00 00 */	li r5, 0
/* 807CAF1C  4B FF 89 FD */	bl setActionMode__8daE_VA_cFii
/* 807CAF20  48 00 02 64 */	b lbl_807CB184
lbl_807CAF24:
/* 807CAF24  90 BE 13 70 */	stw r5, 0x1370(r30)
/* 807CAF28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CAF2C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807CAF30  38 80 00 02 */	li r4, 2
/* 807CAF34  38 A0 00 00 */	li r5, 0
/* 807CAF38  4B FF 89 E1 */	bl setActionMode__8daE_VA_cFii
/* 807CAF3C  48 00 02 48 */	b lbl_807CB184
lbl_807CAF40:
/* 807CAF40  38 80 00 20 */	li r4, 0x20
/* 807CAF44  4B FF 89 79 */	bl checkBck__8daE_VA_cFi
/* 807CAF48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807CAF4C  41 82 00 28 */	beq lbl_807CAF74
/* 807CAF50  7F C3 F3 78 */	mr r3, r30
/* 807CAF54  38 80 00 21 */	li r4, 0x21
/* 807CAF58  38 A0 00 00 */	li r5, 0
/* 807CAF5C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CAF60  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CAF64  4B FF 88 B5 */	bl setBck__8daE_VA_cFiUcff
/* 807CAF68  38 00 00 05 */	li r0, 5
/* 807CAF6C  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807CAF70  48 00 00 88 */	b lbl_807CAFF8
lbl_807CAF74:
/* 807CAF74  7F C3 F3 78 */	mr r3, r30
/* 807CAF78  38 80 00 23 */	li r4, 0x23
/* 807CAF7C  38 A0 00 00 */	li r5, 0
/* 807CAF80  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807CAF84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CAF88  4B FF 88 91 */	bl setBck__8daE_VA_cFiUcff
/* 807CAF8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070330@ha */
/* 807CAF90  38 03 03 30 */	addi r0, r3, 0x0330 /* 0x00070330@l */
/* 807CAF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CAF98  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CAF9C  38 81 00 14 */	addi r4, r1, 0x14
/* 807CAFA0  38 A0 FF FF */	li r5, -1
/* 807CAFA4  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CAFA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CAFAC  7D 89 03 A6 */	mtctr r12
/* 807CAFB0  4E 80 04 21 */	bctrl 
/* 807CAFB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033E@ha */
/* 807CAFB8  38 03 03 3E */	addi r0, r3, 0x033E /* 0x0007033E@l */
/* 807CAFBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807CAFC0  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CAFC4  38 81 00 10 */	addi r4, r1, 0x10
/* 807CAFC8  38 A0 00 00 */	li r5, 0
/* 807CAFCC  38 C0 FF FF */	li r6, -1
/* 807CAFD0  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CAFD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CAFD8  7D 89 03 A6 */	mtctr r12
/* 807CAFDC  4E 80 04 21 */	bctrl 
/* 807CAFE0  38 00 00 03 */	li r0, 3
/* 807CAFE4  90 1E 13 70 */	stw r0, 0x1370(r30)
/* 807CAFE8  38 00 00 04 */	li r0, 4
/* 807CAFEC  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807CAFF0  38 00 00 02 */	li r0, 2
/* 807CAFF4  90 1E 13 74 */	stw r0, 0x1374(r30)
lbl_807CAFF8:
/* 807CAFF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CAFFC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807CB000  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807CB004  48 00 01 80 */	b lbl_807CB184
lbl_807CB008:
/* 807CB008  38 80 00 1C */	li r4, 0x1c
/* 807CB00C  38 A0 00 00 */	li r5, 0
/* 807CB010  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807CB014  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CB018  4B FF 88 01 */	bl setBck__8daE_VA_cFiUcff
/* 807CB01C  38 00 00 03 */	li r0, 3
/* 807CB020  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807CB024  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB028  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807CB02C  48 00 01 58 */	b lbl_807CB184
lbl_807CB030:
/* 807CB030  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CB034  38 80 00 01 */	li r4, 1
/* 807CB038  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CB03C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CB040  40 82 00 18 */	bne lbl_807CB058
/* 807CB044  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CB048  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CB04C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CB050  41 82 00 08 */	beq lbl_807CB058
/* 807CB054  7C A4 2B 78 */	mr r4, r5
lbl_807CB058:
/* 807CB058  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CB05C  41 82 01 28 */	beq lbl_807CB184
/* 807CB060  7F C3 F3 78 */	mr r3, r30
/* 807CB064  38 80 00 23 */	li r4, 0x23
/* 807CB068  38 A0 00 00 */	li r5, 0
/* 807CB06C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CB070  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CB074  4B FF 87 A5 */	bl setBck__8daE_VA_cFiUcff
/* 807CB078  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070330@ha */
/* 807CB07C  38 03 03 30 */	addi r0, r3, 0x0330 /* 0x00070330@l */
/* 807CB080  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CB084  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CB088  38 81 00 0C */	addi r4, r1, 0xc
/* 807CB08C  38 A0 FF FF */	li r5, -1
/* 807CB090  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CB094  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CB098  7D 89 03 A6 */	mtctr r12
/* 807CB09C  4E 80 04 21 */	bctrl 
/* 807CB0A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033E@ha */
/* 807CB0A4  38 03 03 3E */	addi r0, r3, 0x033E /* 0x0007033E@l */
/* 807CB0A8  90 01 00 08 */	stw r0, 8(r1)
/* 807CB0AC  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CB0B0  38 81 00 08 */	addi r4, r1, 8
/* 807CB0B4  38 A0 00 00 */	li r5, 0
/* 807CB0B8  38 C0 FF FF */	li r6, -1
/* 807CB0BC  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CB0C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CB0C4  7D 89 03 A6 */	mtctr r12
/* 807CB0C8  4E 80 04 21 */	bctrl 
/* 807CB0CC  38 00 00 04 */	li r0, 4
/* 807CB0D0  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807CB0D4  38 00 00 03 */	li r0, 3
/* 807CB0D8  90 1E 13 70 */	stw r0, 0x1370(r30)
/* 807CB0DC  38 00 00 02 */	li r0, 2
/* 807CB0E0  90 1E 13 74 */	stw r0, 0x1374(r30)
/* 807CB0E4  48 00 00 A0 */	b lbl_807CB184
lbl_807CB0E8:
/* 807CB0E8  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807CB0EC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CB0F0  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807CB0F4  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 807CB0F8  C0 9F 00 08 */	lfs f4, 8(r31)
/* 807CB0FC  4B AA 48 81 */	bl cLib_addCalc__FPfffff
/* 807CB100  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CB104  38 80 00 01 */	li r4, 1
/* 807CB108  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CB10C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CB110  40 82 00 18 */	bne lbl_807CB128
/* 807CB114  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CB118  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CB11C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CB120  41 82 00 08 */	beq lbl_807CB128
/* 807CB124  38 80 00 00 */	li r4, 0
lbl_807CB128:
/* 807CB128  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CB12C  41 82 00 58 */	beq lbl_807CB184
/* 807CB130  7F C3 F3 78 */	mr r3, r30
/* 807CB134  38 80 00 02 */	li r4, 2
/* 807CB138  38 A0 00 01 */	li r5, 1
/* 807CB13C  4B FF 87 DD */	bl setActionMode__8daE_VA_cFii
/* 807CB140  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB144  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807CB148  48 00 00 3C */	b lbl_807CB184
lbl_807CB14C:
/* 807CB14C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CB150  38 80 00 01 */	li r4, 1
/* 807CB154  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CB158  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CB15C  40 82 00 18 */	bne lbl_807CB174
/* 807CB160  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CB164  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CB168  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CB16C  41 82 00 08 */	beq lbl_807CB174
/* 807CB170  7C A4 2B 78 */	mr r4, r5
lbl_807CB174:
/* 807CB174  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CB178  41 82 00 0C */	beq lbl_807CB184
/* 807CB17C  38 00 00 01 */	li r0, 1
/* 807CB180  90 1E 13 20 */	stw r0, 0x1320(r30)
lbl_807CB184:
/* 807CB184  4B 99 42 A1 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807CB188  2C 03 00 00 */	cmpwi r3, 0
/* 807CB18C  41 82 00 20 */	beq lbl_807CB1AC
/* 807CB190  80 1E 13 58 */	lwz r0, 0x1358(r30)
/* 807CB194  2C 00 00 00 */	cmpwi r0, 0
/* 807CB198  40 82 00 14 */	bne lbl_807CB1AC
/* 807CB19C  7F C3 F3 78 */	mr r3, r30
/* 807CB1A0  38 80 00 05 */	li r4, 5
/* 807CB1A4  38 A0 00 00 */	li r5, 0
/* 807CB1A8  4B FF 87 71 */	bl setActionMode__8daE_VA_cFii
lbl_807CB1AC:
/* 807CB1AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807CB1B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807CB1B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807CB1B8  7C 08 03 A6 */	mtlr r0
/* 807CB1BC  38 21 00 30 */	addi r1, r1, 0x30
/* 807CB1C0  4E 80 00 20 */	blr 
