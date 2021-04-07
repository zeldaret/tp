lbl_807CAA80:
/* 807CAA80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807CAA84  7C 08 02 A6 */	mflr r0
/* 807CAA88  90 01 00 34 */	stw r0, 0x34(r1)
/* 807CAA8C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807CAA90  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807CAA94  7C 7E 1B 78 */	mr r30, r3
/* 807CAA98  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CAA9C  3B E3 EC A8 */	addi r31, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CAAA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CAAA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CAAA8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807CAAAC  88 03 05 69 */	lbz r0, 0x569(r3)
/* 807CAAB0  28 00 00 01 */	cmplwi r0, 1
/* 807CAAB4  41 81 00 10 */	bgt lbl_807CAAC4
/* 807CAAB8  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807CAABC  28 00 00 0A */	cmplwi r0, 0xa
/* 807CAAC0  40 82 00 2C */	bne lbl_807CAAEC
lbl_807CAAC4:
/* 807CAAC4  80 1E 13 4C */	lwz r0, 0x134c(r30)
/* 807CAAC8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807CAACC  40 80 00 0C */	bge lbl_807CAAD8
/* 807CAAD0  38 00 00 1E */	li r0, 0x1e
/* 807CAAD4  90 1E 13 4C */	stw r0, 0x134c(r30)
lbl_807CAAD8:
/* 807CAAD8  80 1E 13 44 */	lwz r0, 0x1344(r30)
/* 807CAADC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807CAAE0  40 80 00 0C */	bge lbl_807CAAEC
/* 807CAAE4  38 00 00 1E */	li r0, 0x1e
/* 807CAAE8  90 1E 13 44 */	stw r0, 0x1344(r30)
lbl_807CAAEC:
/* 807CAAEC  80 1E 13 4C */	lwz r0, 0x134c(r30)
/* 807CAAF0  2C 00 00 00 */	cmpwi r0, 0
/* 807CAAF4  41 82 00 1C */	beq lbl_807CAB10
/* 807CAAF8  80 1E 13 44 */	lwz r0, 0x1344(r30)
/* 807CAAFC  2C 00 00 00 */	cmpwi r0, 0
/* 807CAB00  41 82 00 10 */	beq lbl_807CAB10
/* 807CAB04  80 1E 1E 04 */	lwz r0, 0x1e04(r30)
/* 807CAB08  60 00 00 01 */	ori r0, r0, 1
/* 807CAB0C  90 1E 1E 04 */	stw r0, 0x1e04(r30)
lbl_807CAB10:
/* 807CAB10  80 1E 13 20 */	lwz r0, 0x1320(r30)
/* 807CAB14  2C 00 00 05 */	cmpwi r0, 5
/* 807CAB18  41 82 01 68 */	beq lbl_807CAC80
/* 807CAB1C  40 80 01 AC */	bge lbl_807CACC8
/* 807CAB20  2C 00 00 03 */	cmpwi r0, 3
/* 807CAB24  40 80 01 A4 */	bge lbl_807CACC8
/* 807CAB28  2C 00 00 00 */	cmpwi r0, 0
/* 807CAB2C  40 80 00 08 */	bge lbl_807CAB34
/* 807CAB30  48 00 01 98 */	b lbl_807CACC8
lbl_807CAB34:
/* 807CAB34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CAB38  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807CAB3C  80 7E 13 64 */	lwz r3, 0x1364(r30)
/* 807CAB40  80 1E 13 68 */	lwz r0, 0x1368(r30)
/* 807CAB44  7C 03 02 14 */	add r0, r3, r0
/* 807CAB48  90 1E 13 64 */	stw r0, 0x1364(r30)
/* 807CAB4C  80 1E 13 64 */	lwz r0, 0x1364(r30)
/* 807CAB50  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 807CAB54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807CAB58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807CAB5C  3C 00 43 30 */	lis r0, 0x4330
/* 807CAB60  90 01 00 18 */	stw r0, 0x18(r1)
/* 807CAB64  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 807CAB68  EC 20 08 28 */	fsubs f1, f0, f1
/* 807CAB6C  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CAB70  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CAB74  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 807CAB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CAB7C  40 81 00 20 */	ble lbl_807CAB9C
/* 807CAB80  7F C3 F3 78 */	mr r3, r30
/* 807CAB84  38 80 00 14 */	li r4, 0x14
/* 807CAB88  38 A0 00 00 */	li r5, 0
/* 807CAB8C  4B FF 8D 8D */	bl setActionMode__8daE_VA_cFii
/* 807CAB90  38 00 00 01 */	li r0, 1
/* 807CAB94  98 1E 13 81 */	stb r0, 0x1381(r30)
/* 807CAB98  48 00 01 30 */	b lbl_807CACC8
lbl_807CAB9C:
/* 807CAB9C  80 1E 13 20 */	lwz r0, 0x1320(r30)
/* 807CABA0  2C 00 00 00 */	cmpwi r0, 0
/* 807CABA4  40 82 00 48 */	bne lbl_807CABEC
/* 807CABA8  7F C3 F3 78 */	mr r3, r30
/* 807CABAC  38 80 00 17 */	li r4, 0x17
/* 807CABB0  38 A0 00 00 */	li r5, 0
/* 807CABB4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CABB8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CABBC  4B FF 8C 5D */	bl setBck__8daE_VA_cFiUcff
/* 807CABC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070334@ha */
/* 807CABC4  38 03 03 34 */	addi r0, r3, 0x0334 /* 0x00070334@l */
/* 807CABC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807CABCC  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CABD0  38 81 00 10 */	addi r4, r1, 0x10
/* 807CABD4  38 A0 FF FF */	li r5, -1
/* 807CABD8  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CABDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CABE0  7D 89 03 A6 */	mtctr r12
/* 807CABE4  4E 80 04 21 */	bctrl 
/* 807CABE8  48 00 00 90 */	b lbl_807CAC78
lbl_807CABEC:
/* 807CABEC  2C 00 00 01 */	cmpwi r0, 1
/* 807CABF0  40 82 00 48 */	bne lbl_807CAC38
/* 807CABF4  7F C3 F3 78 */	mr r3, r30
/* 807CABF8  38 80 00 18 */	li r4, 0x18
/* 807CABFC  38 A0 00 00 */	li r5, 0
/* 807CAC00  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CAC04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CAC08  4B FF 8C 11 */	bl setBck__8daE_VA_cFiUcff
/* 807CAC0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070334@ha */
/* 807CAC10  38 03 03 34 */	addi r0, r3, 0x0334 /* 0x00070334@l */
/* 807CAC14  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CAC18  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CAC1C  38 81 00 0C */	addi r4, r1, 0xc
/* 807CAC20  38 A0 FF FF */	li r5, -1
/* 807CAC24  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CAC28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CAC2C  7D 89 03 A6 */	mtctr r12
/* 807CAC30  4E 80 04 21 */	bctrl 
/* 807CAC34  48 00 00 44 */	b lbl_807CAC78
lbl_807CAC38:
/* 807CAC38  7F C3 F3 78 */	mr r3, r30
/* 807CAC3C  38 80 00 1B */	li r4, 0x1b
/* 807CAC40  38 A0 00 00 */	li r5, 0
/* 807CAC44  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CAC48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CAC4C  4B FF 8B CD */	bl setBck__8daE_VA_cFiUcff
/* 807CAC50  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032F@ha */
/* 807CAC54  38 03 03 2F */	addi r0, r3, 0x032F /* 0x0007032F@l */
/* 807CAC58  90 01 00 08 */	stw r0, 8(r1)
/* 807CAC5C  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CAC60  38 81 00 08 */	addi r4, r1, 8
/* 807CAC64  38 A0 FF FF */	li r5, -1
/* 807CAC68  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CAC6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CAC70  7D 89 03 A6 */	mtctr r12
/* 807CAC74  4E 80 04 21 */	bctrl 
lbl_807CAC78:
/* 807CAC78  38 00 00 05 */	li r0, 5
/* 807CAC7C  90 1E 13 20 */	stw r0, 0x1320(r30)
lbl_807CAC80:
/* 807CAC80  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CAC84  38 80 00 01 */	li r4, 1
/* 807CAC88  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CAC8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CAC90  40 82 00 18 */	bne lbl_807CACA8
/* 807CAC94  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CAC98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CAC9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CACA0  41 82 00 08 */	beq lbl_807CACA8
/* 807CACA4  38 80 00 00 */	li r4, 0
lbl_807CACA8:
/* 807CACA8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CACAC  41 82 00 1C */	beq lbl_807CACC8
/* 807CACB0  7F C3 F3 78 */	mr r3, r30
/* 807CACB4  38 80 00 0D */	li r4, 0xd
/* 807CACB8  38 A0 00 01 */	li r5, 1
/* 807CACBC  4B FF 8C 5D */	bl setActionMode__8daE_VA_cFii
/* 807CACC0  38 00 00 01 */	li r0, 1
/* 807CACC4  98 1E 13 81 */	stb r0, 0x1381(r30)
lbl_807CACC8:
/* 807CACC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807CACCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807CACD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807CACD4  7C 08 03 A6 */	mtlr r0
/* 807CACD8  38 21 00 30 */	addi r1, r1, 0x30
/* 807CACDC  4E 80 00 20 */	blr 
