lbl_8050DE00:
/* 8050DE00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050DE04  7C 08 02 A6 */	mflr r0
/* 8050DE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050DE0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050DE10  7C 7F 1B 78 */	mr r31, r3
/* 8050DE14  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 8050DE18  38 C4 85 84 */	addi r6, r4, lit_4208@l /* 0x80518584@l */
/* 8050DE1C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8050DE20  54 00 00 3E */	slwi r0, r0, 0
/* 8050DE24  90 03 04 9C */	stw r0, 0x49c(r3)
/* 8050DE28  38 80 00 00 */	li r4, 0
/* 8050DE2C  90 83 05 5C */	stw r4, 0x55c(r3)
/* 8050DE30  38 00 00 0A */	li r0, 0xa
/* 8050DE34  B0 03 09 98 */	sth r0, 0x998(r3)
/* 8050DE38  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8050DE3C  2C 00 00 02 */	cmpwi r0, 2
/* 8050DE40  41 82 00 48 */	beq lbl_8050DE88
/* 8050DE44  40 80 00 10 */	bge lbl_8050DE54
/* 8050DE48  2C 00 00 00 */	cmpwi r0, 0
/* 8050DE4C  41 82 00 18 */	beq lbl_8050DE64
/* 8050DE50  48 00 00 D4 */	b lbl_8050DF24
lbl_8050DE54:
/* 8050DE54  2C 00 00 04 */	cmpwi r0, 4
/* 8050DE58  41 82 00 CC */	beq lbl_8050DF24
/* 8050DE5C  40 80 00 C8 */	bge lbl_8050DF24
/* 8050DE60  48 00 00 74 */	b lbl_8050DED4
lbl_8050DE64:
/* 8050DE64  38 80 00 36 */	li r4, 0x36
/* 8050DE68  C0 26 00 08 */	lfs f1, 8(r6)
/* 8050DE6C  38 A0 00 02 */	li r5, 2
/* 8050DE70  FC 40 08 90 */	fmr f2, f1
/* 8050DE74  4B FF 6D 61 */	bl anm_init__FP10e_rd_classifUcf
/* 8050DE78  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 8050DE7C  38 03 00 01 */	addi r0, r3, 1
/* 8050DE80  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8050DE84  48 00 00 A0 */	b lbl_8050DF24
lbl_8050DE88:
/* 8050DE88  38 80 00 35 */	li r4, 0x35
/* 8050DE8C  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 8050DE90  38 A0 00 00 */	li r5, 0
/* 8050DE94  C0 46 00 08 */	lfs f2, 8(r6)
/* 8050DE98  4B FF 6D 3D */	bl anm_init__FP10e_rd_classifUcf
/* 8050DE9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007057F@ha */
/* 8050DEA0  38 03 05 7F */	addi r0, r3, 0x057F /* 0x0007057F@l */
/* 8050DEA4  90 01 00 08 */	stw r0, 8(r1)
/* 8050DEA8  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 8050DEAC  38 81 00 08 */	addi r4, r1, 8
/* 8050DEB0  38 A0 FF FF */	li r5, -1
/* 8050DEB4  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 8050DEB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050DEBC  7D 89 03 A6 */	mtctr r12
/* 8050DEC0  4E 80 04 21 */	bctrl 
/* 8050DEC4  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 8050DEC8  38 03 00 01 */	addi r0, r3, 1
/* 8050DECC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8050DED0  48 00 00 54 */	b lbl_8050DF24
lbl_8050DED4:
/* 8050DED4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8050DED8  38 A0 00 01 */	li r5, 1
/* 8050DEDC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050DEE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050DEE4  40 82 00 18 */	bne lbl_8050DEFC
/* 8050DEE8  C0 26 00 04 */	lfs f1, 4(r6)
/* 8050DEEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050DEF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050DEF4  41 82 00 08 */	beq lbl_8050DEFC
/* 8050DEF8  7C 85 23 78 */	mr r5, r4
lbl_8050DEFC:
/* 8050DEFC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8050DF00  41 82 00 24 */	beq lbl_8050DF24
/* 8050DF04  7F E3 FB 78 */	mr r3, r31
/* 8050DF08  38 80 00 36 */	li r4, 0x36
/* 8050DF0C  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 8050DF10  38 A0 00 02 */	li r5, 2
/* 8050DF14  C0 46 00 08 */	lfs f2, 8(r6)
/* 8050DF18  4B FF 6C BD */	bl anm_init__FP10e_rd_classifUcf
/* 8050DF1C  38 00 00 04 */	li r0, 4
/* 8050DF20  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_8050DF24:
/* 8050DF24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050DF28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050DF2C  7C 08 03 A6 */	mtlr r0
/* 8050DF30  38 21 00 20 */	addi r1, r1, 0x20
/* 8050DF34  4E 80 00 20 */	blr 
