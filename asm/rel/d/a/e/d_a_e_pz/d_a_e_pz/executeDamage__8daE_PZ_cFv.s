lbl_8075CB80:
/* 8075CB80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8075CB84  7C 08 02 A6 */	mflr r0
/* 8075CB88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8075CB8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8075CB90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8075CB94  7C 7F 1B 78 */	mr r31, r3
/* 8075CB98  3C 80 80 76 */	lis r4, lit_3906@ha
/* 8075CB9C  3B C4 14 FC */	addi r30, r4, lit_3906@l
/* 8075CBA0  80 03 06 84 */	lwz r0, 0x684(r3)
/* 8075CBA4  2C 00 00 02 */	cmpwi r0, 2
/* 8075CBA8  41 82 00 88 */	beq lbl_8075CC30
/* 8075CBAC  40 80 00 14 */	bge lbl_8075CBC0
/* 8075CBB0  2C 00 00 00 */	cmpwi r0, 0
/* 8075CBB4  41 82 00 1C */	beq lbl_8075CBD0
/* 8075CBB8  40 80 01 80 */	bge lbl_8075CD38
/* 8075CBBC  48 00 02 94 */	b lbl_8075CE50
lbl_8075CBC0:
/* 8075CBC0  2C 00 00 04 */	cmpwi r0, 4
/* 8075CBC4  41 82 02 08 */	beq lbl_8075CDCC
/* 8075CBC8  40 80 02 88 */	bge lbl_8075CE50
/* 8075CBCC  48 00 00 E8 */	b lbl_8075CCB4
lbl_8075CBD0:
/* 8075CBD0  38 80 00 0E */	li r4, 0xe
/* 8075CBD4  38 A0 00 00 */	li r5, 0
/* 8075CBD8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075CBDC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075CBE0  4B FF BC 21 */	bl setBck__8daE_PZ_cFiUcff
/* 8075CBE4  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha
/* 8075CBE8  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l
/* 8075CBEC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075CBF0  D0 1F 07 9C */	stfs f0, 0x79c(r31)
/* 8075CBF4  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 8075CBF8  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
/* 8075CBFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703EE@ha */
/* 8075CC00  38 03 03 EE */	addi r0, r3, 0x03EE /* 0x000703EE@l */
/* 8075CC04  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075CC08  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8075CC0C  38 81 00 10 */	addi r4, r1, 0x10
/* 8075CC10  38 A0 FF FF */	li r5, -1
/* 8075CC14  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8075CC18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075CC1C  7D 89 03 A6 */	mtctr r12
/* 8075CC20  4E 80 04 21 */	bctrl 
/* 8075CC24  38 00 00 01 */	li r0, 1
/* 8075CC28  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075CC2C  48 00 02 24 */	b lbl_8075CE50
lbl_8075CC30:
/* 8075CC30  88 1F 08 47 */	lbz r0, 0x847(r31)
/* 8075CC34  28 00 00 04 */	cmplwi r0, 4
/* 8075CC38  40 82 00 1C */	bne lbl_8075CC54
/* 8075CC3C  38 80 00 0E */	li r4, 0xe
/* 8075CC40  38 A0 00 00 */	li r5, 0
/* 8075CC44  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075CC48  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075CC4C  4B FF BB B5 */	bl setBck__8daE_PZ_cFiUcff
/* 8075CC50  48 00 00 18 */	b lbl_8075CC68
lbl_8075CC54:
/* 8075CC54  38 80 00 0F */	li r4, 0xf
/* 8075CC58  38 A0 00 00 */	li r5, 0
/* 8075CC5C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075CC60  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075CC64  4B FF BB 9D */	bl setBck__8daE_PZ_cFiUcff
lbl_8075CC68:
/* 8075CC68  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703EE@ha */
/* 8075CC6C  38 03 03 EE */	addi r0, r3, 0x03EE /* 0x000703EE@l */
/* 8075CC70  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075CC74  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8075CC78  38 81 00 0C */	addi r4, r1, 0xc
/* 8075CC7C  38 A0 FF FF */	li r5, -1
/* 8075CC80  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8075CC84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075CC88  7D 89 03 A6 */	mtctr r12
/* 8075CC8C  4E 80 04 21 */	bctrl 
/* 8075CC90  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha
/* 8075CC94  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l
/* 8075CC98  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075CC9C  D0 1F 07 9C */	stfs f0, 0x79c(r31)
/* 8075CCA0  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 8075CCA4  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
/* 8075CCA8  38 00 00 01 */	li r0, 1
/* 8075CCAC  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075CCB0  48 00 01 A0 */	b lbl_8075CE50
lbl_8075CCB4:
/* 8075CCB4  88 1F 08 47 */	lbz r0, 0x847(r31)
/* 8075CCB8  28 00 00 04 */	cmplwi r0, 4
/* 8075CCBC  40 82 00 1C */	bne lbl_8075CCD8
/* 8075CCC0  38 80 00 0E */	li r4, 0xe
/* 8075CCC4  38 A0 00 00 */	li r5, 0
/* 8075CCC8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075CCCC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075CCD0  4B FF BB 31 */	bl setBck__8daE_PZ_cFiUcff
/* 8075CCD4  48 00 00 18 */	b lbl_8075CCEC
lbl_8075CCD8:
/* 8075CCD8  38 80 00 10 */	li r4, 0x10
/* 8075CCDC  38 A0 00 00 */	li r5, 0
/* 8075CCE0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075CCE4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075CCE8  4B FF BB 19 */	bl setBck__8daE_PZ_cFiUcff
lbl_8075CCEC:
/* 8075CCEC  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha
/* 8075CCF0  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l
/* 8075CCF4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075CCF8  D0 1F 07 9C */	stfs f0, 0x79c(r31)
/* 8075CCFC  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 8075CD00  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
/* 8075CD04  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703EE@ha */
/* 8075CD08  38 03 03 EE */	addi r0, r3, 0x03EE /* 0x000703EE@l */
/* 8075CD0C  90 01 00 08 */	stw r0, 8(r1)
/* 8075CD10  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8075CD14  38 81 00 08 */	addi r4, r1, 8
/* 8075CD18  38 A0 FF FF */	li r5, -1
/* 8075CD1C  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8075CD20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075CD24  7D 89 03 A6 */	mtctr r12
/* 8075CD28  4E 80 04 21 */	bctrl 
/* 8075CD2C  38 00 00 01 */	li r0, 1
/* 8075CD30  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075CD34  48 00 01 1C */	b lbl_8075CE50
lbl_8075CD38:
/* 8075CD38  88 1F 08 47 */	lbz r0, 0x847(r31)
/* 8075CD3C  28 00 00 04 */	cmplwi r0, 4
/* 8075CD40  41 80 00 40 */	blt lbl_8075CD80
/* 8075CD44  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 8075CD48  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8075CD4C  80 1F 0B 28 */	lwz r0, 0xb28(r31)
/* 8075CD50  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8075CD54  90 1F 0B 28 */	stw r0, 0xb28(r31)
/* 8075CD58  80 1F 0B 3C */	lwz r0, 0xb3c(r31)
/* 8075CD5C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8075CD60  90 1F 0B 3C */	stw r0, 0xb3c(r31)
/* 8075CD64  38 00 00 0E */	li r0, 0xe
/* 8075CD68  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075CD6C  38 00 00 00 */	li r0, 0
/* 8075CD70  98 1F 08 47 */	stb r0, 0x847(r31)
/* 8075CD74  38 00 00 04 */	li r0, 4
/* 8075CD78  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075CD7C  48 00 00 D4 */	b lbl_8075CE50
lbl_8075CD80:
/* 8075CD80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075CD84  38 80 00 01 */	li r4, 1
/* 8075CD88  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8075CD8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8075CD90  40 82 00 18 */	bne lbl_8075CDA8
/* 8075CD94  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075CD98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8075CD9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075CDA0  41 82 00 08 */	beq lbl_8075CDA8
/* 8075CDA4  38 80 00 00 */	li r4, 0
lbl_8075CDA8:
/* 8075CDA8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8075CDAC  41 82 00 A4 */	beq lbl_8075CE50
/* 8075CDB0  38 00 00 00 */	li r0, 0
/* 8075CDB4  98 1F 08 47 */	stb r0, 0x847(r31)
/* 8075CDB8  7F E3 FB 78 */	mr r3, r31
/* 8075CDBC  38 80 00 02 */	li r4, 2
/* 8075CDC0  38 A0 00 0A */	li r5, 0xa
/* 8075CDC4  4B FF BA E9 */	bl setActionMode__8daE_PZ_cFii
/* 8075CDC8  48 00 00 88 */	b lbl_8075CE50
lbl_8075CDCC:
/* 8075CDCC  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8075CDD0  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8075CDD4  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8075CDD8  4B B1 2C A8 */	b cLib_addCalc0__FPfff
/* 8075CDDC  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075CDE0  28 00 00 00 */	cmplwi r0, 0
/* 8075CDE4  40 82 00 6C */	bne lbl_8075CE50
/* 8075CDE8  7F E3 FB 78 */	mr r3, r31
/* 8075CDEC  38 80 00 01 */	li r4, 1
/* 8075CDF0  4B FF BC A5 */	bl mPzScaleSet__8daE_PZ_cFb
/* 8075CDF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8075CDF8  41 82 00 58 */	beq lbl_8075CE50
/* 8075CDFC  38 00 00 0A */	li r0, 0xa
/* 8075CE00  98 1F 07 D3 */	stb r0, 0x7d3(r31)
/* 8075CE04  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075CE08  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8075CE0C  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 8075CE10  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8075CE14  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 8075CE18  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8075CE1C  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 8075CE20  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8075CE24  7F E3 FB 78 */	mr r3, r31
/* 8075CE28  38 80 00 00 */	li r4, 0
/* 8075CE2C  4B FF BA 8D */	bl mEntrySUB__8daE_PZ_cFb
/* 8075CE30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075CE34  D0 1F 07 9C */	stfs f0, 0x79c(r31)
/* 8075CE38  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 8075CE3C  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
/* 8075CE40  7F E3 FB 78 */	mr r3, r31
/* 8075CE44  38 80 00 02 */	li r4, 2
/* 8075CE48  38 A0 00 14 */	li r5, 0x14
/* 8075CE4C  4B FF BA 61 */	bl setActionMode__8daE_PZ_cFii
lbl_8075CE50:
/* 8075CE50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8075CE54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8075CE58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8075CE5C  7C 08 03 A6 */	mtlr r0
/* 8075CE60  38 21 00 20 */	addi r1, r1, 0x20
/* 8075CE64  4E 80 00 20 */	blr 
