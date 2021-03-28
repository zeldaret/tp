lbl_807C9A40:
/* 807C9A40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807C9A44  7C 08 02 A6 */	mflr r0
/* 807C9A48  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C9A4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807C9A50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807C9A54  7C 7E 1B 78 */	mr r30, r3
/* 807C9A58  3C 80 80 7D */	lis r4, lit_3907@ha
/* 807C9A5C  3B E4 EC A8 */	addi r31, r4, lit_3907@l
/* 807C9A60  80 03 13 20 */	lwz r0, 0x1320(r3)
/* 807C9A64  2C 00 00 02 */	cmpwi r0, 2
/* 807C9A68  41 82 01 4C */	beq lbl_807C9BB4
/* 807C9A6C  40 80 00 14 */	bge lbl_807C9A80
/* 807C9A70  2C 00 00 00 */	cmpwi r0, 0
/* 807C9A74  41 82 00 24 */	beq lbl_807C9A98
/* 807C9A78  40 80 00 D8 */	bge lbl_807C9B50
/* 807C9A7C  48 00 01 F8 */	b lbl_807C9C74
lbl_807C9A80:
/* 807C9A80  2C 00 00 0B */	cmpwi r0, 0xb
/* 807C9A84  41 82 01 B0 */	beq lbl_807C9C34
/* 807C9A88  40 80 01 EC */	bge lbl_807C9C74
/* 807C9A8C  2C 00 00 0A */	cmpwi r0, 0xa
/* 807C9A90  40 80 01 58 */	bge lbl_807C9BE8
/* 807C9A94  48 00 01 E0 */	b lbl_807C9C74
lbl_807C9A98:
/* 807C9A98  38 00 00 00 */	li r0, 0
/* 807C9A9C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807C9AA0  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807C9AA4  38 04 FD FF */	addi r0, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 807C9AA8  90 1E 1C D8 */	stw r0, 0x1cd8(r30)
/* 807C9AAC  90 1E 1E 14 */	stw r0, 0x1e14(r30)
/* 807C9AB0  38 80 00 09 */	li r4, 9
/* 807C9AB4  38 A0 00 00 */	li r5, 0
/* 807C9AB8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C9ABC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C9AC0  4B FF 9D 59 */	bl setBck__8daE_VA_cFiUcff
/* 807C9AC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070338@ha */
/* 807C9AC8  38 03 03 38 */	addi r0, r3, 0x0338 /* 0x00070338@l */
/* 807C9ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C9AD0  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C9AD4  38 81 00 14 */	addi r4, r1, 0x14
/* 807C9AD8  38 A0 FF FF */	li r5, -1
/* 807C9ADC  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C9AE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C9AE4  7D 89 03 A6 */	mtctr r12
/* 807C9AE8  4E 80 04 21 */	bctrl 
/* 807C9AEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070334@ha */
/* 807C9AF0  38 03 03 34 */	addi r0, r3, 0x0334 /* 0x00070334@l */
/* 807C9AF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C9AF8  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C9AFC  38 81 00 10 */	addi r4, r1, 0x10
/* 807C9B00  38 A0 FF FF */	li r5, -1
/* 807C9B04  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C9B08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C9B0C  7D 89 03 A6 */	mtctr r12
/* 807C9B10  4E 80 04 21 */	bctrl 
/* 807C9B14  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070342@ha */
/* 807C9B18  38 03 03 42 */	addi r0, r3, 0x0342 /* 0x00070342@l */
/* 807C9B1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C9B20  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C9B24  38 81 00 0C */	addi r4, r1, 0xc
/* 807C9B28  38 A0 00 00 */	li r5, 0
/* 807C9B2C  38 C0 FF FF */	li r6, -1
/* 807C9B30  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C9B34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C9B38  7D 89 03 A6 */	mtctr r12
/* 807C9B3C  4E 80 04 21 */	bctrl 
/* 807C9B40  38 00 00 01 */	li r0, 1
/* 807C9B44  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807C9B48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C9B4C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807C9B50:
/* 807C9B50  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C9B54  38 80 00 01 */	li r4, 1
/* 807C9B58  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C9B5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C9B60  40 82 00 18 */	bne lbl_807C9B78
/* 807C9B64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C9B68  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C9B6C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C9B70  41 82 00 08 */	beq lbl_807C9B78
/* 807C9B74  38 80 00 00 */	li r4, 0
lbl_807C9B78:
/* 807C9B78  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C9B7C  41 82 00 F8 */	beq lbl_807C9C74
/* 807C9B80  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807C9B84  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807C9B88  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807C9B8C  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 807C9B90  38 00 00 02 */	li r0, 2
/* 807C9B94  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807C9B98  7F C3 F3 78 */	mr r3, r30
/* 807C9B9C  38 80 00 0A */	li r4, 0xa
/* 807C9BA0  38 A0 00 00 */	li r5, 0
/* 807C9BA4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807C9BA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C9BAC  4B FF 9C 6D */	bl setBck__8daE_VA_cFiUcff
/* 807C9BB0  48 00 00 C4 */	b lbl_807C9C74
lbl_807C9BB4:
/* 807C9BB4  80 1E 15 24 */	lwz r0, 0x1524(r30)
/* 807C9BB8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807C9BBC  40 82 00 18 */	bne lbl_807C9BD4
/* 807C9BC0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807C9BC4  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 807C9BC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9BCC  4C 40 13 82 */	cror 2, 0, 2
/* 807C9BD0  40 82 00 A4 */	bne lbl_807C9C74
lbl_807C9BD4:
/* 807C9BD4  7F C3 F3 78 */	mr r3, r30
/* 807C9BD8  38 80 00 0F */	li r4, 0xf
/* 807C9BDC  38 A0 00 00 */	li r5, 0
/* 807C9BE0  4B FF 9D 39 */	bl setActionMode__8daE_VA_cFii
/* 807C9BE4  48 00 00 90 */	b lbl_807C9C74
lbl_807C9BE8:
/* 807C9BE8  38 00 00 00 */	li r0, 0
/* 807C9BEC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807C9BF0  38 80 00 22 */	li r4, 0x22
/* 807C9BF4  38 A0 00 00 */	li r5, 0
/* 807C9BF8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C9BFC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C9C00  4B FF 9C 19 */	bl setBck__8daE_VA_cFiUcff
/* 807C9C04  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032F@ha */
/* 807C9C08  38 03 03 2F */	addi r0, r3, 0x032F /* 0x0007032F@l */
/* 807C9C0C  90 01 00 08 */	stw r0, 8(r1)
/* 807C9C10  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C9C14  38 81 00 08 */	addi r4, r1, 8
/* 807C9C18  38 A0 FF FF */	li r5, -1
/* 807C9C1C  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C9C20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C9C24  7D 89 03 A6 */	mtctr r12
/* 807C9C28  4E 80 04 21 */	bctrl 
/* 807C9C2C  38 00 00 0B */	li r0, 0xb
/* 807C9C30  90 1E 13 20 */	stw r0, 0x1320(r30)
lbl_807C9C34:
/* 807C9C34  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C9C38  38 80 00 01 */	li r4, 1
/* 807C9C3C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C9C40  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C9C44  40 82 00 18 */	bne lbl_807C9C5C
/* 807C9C48  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C9C4C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C9C50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C9C54  41 82 00 08 */	beq lbl_807C9C5C
/* 807C9C58  38 80 00 00 */	li r4, 0
lbl_807C9C5C:
/* 807C9C5C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C9C60  41 82 00 14 */	beq lbl_807C9C74
/* 807C9C64  7F C3 F3 78 */	mr r3, r30
/* 807C9C68  38 80 00 0C */	li r4, 0xc
/* 807C9C6C  38 A0 00 00 */	li r5, 0
/* 807C9C70  4B FF 9C A9 */	bl setActionMode__8daE_VA_cFii
lbl_807C9C74:
/* 807C9C74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807C9C78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807C9C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C9C80  7C 08 03 A6 */	mtlr r0
/* 807C9C84  38 21 00 20 */	addi r1, r1, 0x20
/* 807C9C88  4E 80 00 20 */	blr 
