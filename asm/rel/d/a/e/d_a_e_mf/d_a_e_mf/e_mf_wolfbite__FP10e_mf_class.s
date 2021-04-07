lbl_8070CCB8:
/* 8070CCB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8070CCBC  7C 08 02 A6 */	mflr r0
/* 8070CCC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8070CCC4  39 61 00 30 */	addi r11, r1, 0x30
/* 8070CCC8  4B C5 55 15 */	bl _savegpr_29
/* 8070CCCC  7C 7E 1B 78 */	mr r30, r3
/* 8070CCD0  3C 60 80 71 */	lis r3, lit_3828@ha /* 0x80713974@ha */
/* 8070CCD4  3B E3 39 74 */	addi r31, r3, lit_3828@l /* 0x80713974@l */
/* 8070CCD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070CCDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070CCE0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8070CCE4  38 00 00 0A */	li r0, 0xa
/* 8070CCE8  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 8070CCEC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070CCF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070CCF4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 8070CCF8  4B B6 2D 89 */	bl cLib_addCalc0__FPfff
/* 8070CCFC  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8070CD00  2C 00 00 02 */	cmpwi r0, 2
/* 8070CD04  41 82 00 D8 */	beq lbl_8070CDDC
/* 8070CD08  40 80 00 14 */	bge lbl_8070CD1C
/* 8070CD0C  2C 00 00 00 */	cmpwi r0, 0
/* 8070CD10  41 82 00 18 */	beq lbl_8070CD28
/* 8070CD14  40 80 00 74 */	bge lbl_8070CD88
/* 8070CD18  48 00 03 60 */	b lbl_8070D078
lbl_8070CD1C:
/* 8070CD1C  2C 00 00 04 */	cmpwi r0, 4
/* 8070CD20  40 80 03 58 */	bge lbl_8070D078
/* 8070CD24  48 00 02 EC */	b lbl_8070D010
lbl_8070CD28:
/* 8070CD28  7F C3 F3 78 */	mr r3, r30
/* 8070CD2C  38 80 00 17 */	li r4, 0x17
/* 8070CD30  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070CD34  38 A0 00 00 */	li r5, 0
/* 8070CD38  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070CD3C  4B FF DA F1 */	bl anm_init__FP10e_mf_classifUcf
/* 8070CD40  38 00 00 01 */	li r0, 1
/* 8070CD44  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070CD48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D1@ha */
/* 8070CD4C  38 03 03 D1 */	addi r0, r3, 0x03D1 /* 0x000703D1@l */
/* 8070CD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070CD54  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070CD58  38 81 00 14 */	addi r4, r1, 0x14
/* 8070CD5C  38 A0 FF FF */	li r5, -1
/* 8070CD60  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070CD64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070CD68  7D 89 03 A6 */	mtctr r12
/* 8070CD6C  4E 80 04 21 */	bctrl 
/* 8070CD70  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8070CD74  38 03 FF F6 */	addi r0, r3, -10
/* 8070CD78  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8070CD7C  38 00 00 00 */	li r0, 0
/* 8070CD80  98 1E 10 B8 */	stb r0, 0x10b8(r30)
/* 8070CD84  48 00 02 F4 */	b lbl_8070D078
lbl_8070CD88:
/* 8070CD88  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070CD8C  38 80 00 01 */	li r4, 1
/* 8070CD90  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070CD94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070CD98  40 82 00 18 */	bne lbl_8070CDB0
/* 8070CD9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070CDA0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070CDA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070CDA8  41 82 00 08 */	beq lbl_8070CDB0
/* 8070CDAC  38 80 00 00 */	li r4, 0
lbl_8070CDB0:
/* 8070CDB0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070CDB4  41 82 02 C4 */	beq lbl_8070D078
/* 8070CDB8  7F C3 F3 78 */	mr r3, r30
/* 8070CDBC  38 80 00 1A */	li r4, 0x1a
/* 8070CDC0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070CDC4  38 A0 00 02 */	li r5, 2
/* 8070CDC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070CDCC  4B FF DA 61 */	bl anm_init__FP10e_mf_classifUcf
/* 8070CDD0  38 00 00 02 */	li r0, 2
/* 8070CDD4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070CDD8  48 00 02 A0 */	b lbl_8070D078
lbl_8070CDDC:
/* 8070CDDC  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 8070CDE0  2C 00 00 18 */	cmpwi r0, 0x18
/* 8070CDE4  40 82 00 4C */	bne lbl_8070CE30
/* 8070CDE8  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070CDEC  38 80 00 01 */	li r4, 1
/* 8070CDF0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070CDF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070CDF8  40 82 00 18 */	bne lbl_8070CE10
/* 8070CDFC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070CE00  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070CE04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070CE08  41 82 00 08 */	beq lbl_8070CE10
/* 8070CE0C  38 80 00 00 */	li r4, 0
lbl_8070CE10:
/* 8070CE10  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070CE14  41 82 00 1C */	beq lbl_8070CE30
/* 8070CE18  7F C3 F3 78 */	mr r3, r30
/* 8070CE1C  38 80 00 1A */	li r4, 0x1a
/* 8070CE20  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070CE24  38 A0 00 02 */	li r5, 2
/* 8070CE28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070CE2C  4B FF DA 01 */	bl anm_init__FP10e_mf_classifUcf
lbl_8070CE30:
/* 8070CE30  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8070CE34  2C 00 00 00 */	cmpwi r0, 0
/* 8070CE38  40 81 00 10 */	ble lbl_8070CE48
/* 8070CE3C  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8070CE40  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8070CE44  41 82 01 88 */	beq lbl_8070CFCC
lbl_8070CE48:
/* 8070CE48  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8070CE4C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8070CE50  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 8070CE54  7F C3 F3 78 */	mr r3, r30
/* 8070CE58  38 80 00 18 */	li r4, 0x18
/* 8070CE5C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8070CE60  38 A0 00 00 */	li r5, 0
/* 8070CE64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070CE68  4B FF D9 C5 */	bl anm_init__FP10e_mf_classifUcf
/* 8070CE6C  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8070CE70  38 03 FF F6 */	addi r0, r3, -10
/* 8070CE74  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8070CE78  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8070CE7C  2C 00 00 00 */	cmpwi r0, 0
/* 8070CE80  41 81 00 C0 */	bgt lbl_8070CF40
/* 8070CE84  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8070CE88  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8070CE8C  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8070CE90  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8070CE94  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8070CE98  38 03 80 00 */	addi r0, r3, -32768
/* 8070CE9C  7C 04 00 50 */	subf r0, r4, r0
/* 8070CEA0  B0 1E 07 30 */	sth r0, 0x730(r30)
/* 8070CEA4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8070CEA8  D0 1E 07 2C */	stfs f0, 0x72c(r30)
/* 8070CEAC  38 00 00 15 */	li r0, 0x15
/* 8070CEB0  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070CEB4  38 00 00 00 */	li r0, 0
/* 8070CEB8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070CEBC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8070CEC0  3C 63 00 01 */	addis r3, r3, 1
/* 8070CEC4  38 03 80 00 */	addi r0, r3, -32768
/* 8070CEC8  B0 1E 07 06 */	sth r0, 0x706(r30)
/* 8070CECC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070CED0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8070CED4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8070CED8  D0 1E 06 E4 */	stfs f0, 0x6e4(r30)
/* 8070CEDC  38 00 00 32 */	li r0, 0x32
/* 8070CEE0  B0 1E 08 08 */	sth r0, 0x808(r30)
/* 8070CEE4  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070CEE8  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8070CEEC  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8070CEF0  38 A0 00 20 */	li r5, 0x20
/* 8070CEF4  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070CEF8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8070CEFC  7D 89 03 A6 */	mtctr r12
/* 8070CF00  4E 80 04 21 */	bctrl 
/* 8070CF04  38 00 00 01 */	li r0, 1
/* 8070CF08  98 1E 06 F0 */	stb r0, 0x6f0(r30)
/* 8070CF0C  38 00 03 E8 */	li r0, 0x3e8
/* 8070CF10  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 8070CF14  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703CA@ha */
/* 8070CF18  38 03 03 CA */	addi r0, r3, 0x03CA /* 0x000703CA@l */
/* 8070CF1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070CF20  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070CF24  38 81 00 10 */	addi r4, r1, 0x10
/* 8070CF28  38 A0 FF FF */	li r5, -1
/* 8070CF2C  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070CF30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070CF34  7D 89 03 A6 */	mtctr r12
/* 8070CF38  4E 80 04 21 */	bctrl 
/* 8070CF3C  48 00 01 3C */	b lbl_8070D078
lbl_8070CF40:
/* 8070CF40  88 7E 10 B8 */	lbz r3, 0x10b8(r30)
/* 8070CF44  38 03 00 01 */	addi r0, r3, 1
/* 8070CF48  98 1E 10 B8 */	stb r0, 0x10b8(r30)
/* 8070CF4C  88 1E 10 B8 */	lbz r0, 0x10b8(r30)
/* 8070CF50  28 00 00 04 */	cmplwi r0, 4
/* 8070CF54  41 80 00 30 */	blt lbl_8070CF84
/* 8070CF58  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8070CF5C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8070CF60  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8070CF64  7F C3 F3 78 */	mr r3, r30
/* 8070CF68  38 80 00 19 */	li r4, 0x19
/* 8070CF6C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070CF70  38 A0 00 00 */	li r5, 0
/* 8070CF74  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070CF78  4B FF D8 B5 */	bl anm_init__FP10e_mf_classifUcf
/* 8070CF7C  38 00 00 03 */	li r0, 3
/* 8070CF80  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070CF84:
/* 8070CF84  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070CF88  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8070CF8C  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8070CF90  38 A0 00 1E */	li r5, 0x1e
/* 8070CF94  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070CF98  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8070CF9C  7D 89 03 A6 */	mtctr r12
/* 8070CFA0  4E 80 04 21 */	bctrl 
/* 8070CFA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703CB@ha */
/* 8070CFA8  38 03 03 CB */	addi r0, r3, 0x03CB /* 0x000703CB@l */
/* 8070CFAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070CFB0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070CFB4  38 81 00 0C */	addi r4, r1, 0xc
/* 8070CFB8  38 A0 FF FF */	li r5, -1
/* 8070CFBC  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070CFC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070CFC4  7D 89 03 A6 */	mtctr r12
/* 8070CFC8  4E 80 04 21 */	bctrl 
lbl_8070CFCC:
/* 8070CFCC  7F A3 EB 78 */	mr r3, r29
/* 8070CFD0  7F C4 F3 78 */	mr r4, r30
/* 8070CFD4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8070CFD8  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 8070CFDC  7D 89 03 A6 */	mtctr r12
/* 8070CFE0  4E 80 04 21 */	bctrl 
/* 8070CFE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070CFE8  40 82 00 90 */	bne lbl_8070D078
/* 8070CFEC  7F C3 F3 78 */	mr r3, r30
/* 8070CFF0  38 80 00 19 */	li r4, 0x19
/* 8070CFF4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070CFF8  38 A0 00 00 */	li r5, 0
/* 8070CFFC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070D000  4B FF D8 2D */	bl anm_init__FP10e_mf_classifUcf
/* 8070D004  38 00 00 03 */	li r0, 3
/* 8070D008  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D00C  48 00 00 6C */	b lbl_8070D078
lbl_8070D010:
/* 8070D010  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070D014  38 80 00 01 */	li r4, 1
/* 8070D018  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070D01C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070D020  40 82 00 18 */	bne lbl_8070D038
/* 8070D024  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070D028  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070D02C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070D030  41 82 00 08 */	beq lbl_8070D038
/* 8070D034  38 80 00 00 */	li r4, 0
lbl_8070D038:
/* 8070D038  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070D03C  41 82 00 3C */	beq lbl_8070D078
/* 8070D040  38 00 00 03 */	li r0, 3
/* 8070D044  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070D048  38 00 00 00 */	li r0, 0
/* 8070D04C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D050  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D2@ha */
/* 8070D054  38 03 03 D2 */	addi r0, r3, 0x03D2 /* 0x000703D2@l */
/* 8070D058  90 01 00 08 */	stw r0, 8(r1)
/* 8070D05C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070D060  38 81 00 08 */	addi r4, r1, 8
/* 8070D064  38 A0 FF FF */	li r5, -1
/* 8070D068  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070D06C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070D070  7D 89 03 A6 */	mtctr r12
/* 8070D074  4E 80 04 21 */	bctrl 
lbl_8070D078:
/* 8070D078  39 61 00 30 */	addi r11, r1, 0x30
/* 8070D07C  4B C5 51 AD */	bl _restgpr_29
/* 8070D080  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070D084  7C 08 03 A6 */	mtlr r0
/* 8070D088  38 21 00 30 */	addi r1, r1, 0x30
/* 8070D08C  4E 80 00 20 */	blr 
