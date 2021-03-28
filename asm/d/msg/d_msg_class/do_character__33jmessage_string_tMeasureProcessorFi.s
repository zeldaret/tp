lbl_8022FC28:
/* 8022FC28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8022FC2C  7C 08 02 A6 */	mflr r0
/* 8022FC30  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022FC34  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8022FC38  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8022FC3C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8022FC40  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8022FC44  39 61 00 30 */	addi r11, r1, 0x30
/* 8022FC48  48 13 25 95 */	bl _savegpr_29
/* 8022FC4C  7C 7F 1B 78 */	mr r31, r3
/* 8022FC50  7C 9D 23 78 */	mr r29, r4
/* 8022FC54  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8022FC58  83 C3 00 14 */	lwz r30, 0x14(r3)
/* 8022FC5C  38 00 00 00 */	li r0, 0
/* 8022FC60  2C 1D 00 81 */	cmpwi r29, 0x81
/* 8022FC64  41 80 00 0C */	blt lbl_8022FC70
/* 8022FC68  2C 1D 00 9F */	cmpwi r29, 0x9f
/* 8022FC6C  40 81 00 14 */	ble lbl_8022FC80
lbl_8022FC70:
/* 8022FC70  2C 1D 00 E0 */	cmpwi r29, 0xe0
/* 8022FC74  41 80 00 10 */	blt lbl_8022FC84
/* 8022FC78  2C 1D 00 FC */	cmpwi r29, 0xfc
/* 8022FC7C  41 81 00 08 */	bgt lbl_8022FC84
lbl_8022FC80:
/* 8022FC80  38 00 00 01 */	li r0, 1
lbl_8022FC84:
/* 8022FC84  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8022FC88  41 82 00 34 */	beq lbl_8022FCBC
/* 8022FC8C  7F A3 EB 78 */	mr r3, r29
/* 8022FC90  4B FF 8C 19 */	bl isOutfontKanjiCode__Fi
/* 8022FC94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022FC98  40 82 00 58 */	bne lbl_8022FCF0
/* 8022FC9C  7F A3 EB 78 */	mr r3, r29
/* 8022FCA0  4B FF 89 69 */	bl change1ByteTo2Bytes__Fi
/* 8022FCA4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022FCA8  4B FF 8B 91 */	bl changeKataToHira__Fi
/* 8022FCAC  7C 64 1B 78 */	mr r4, r3
/* 8022FCB0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022FCB4  4B FF FD 79 */	bl setCharactor__26jmessage_string_tReferenceFUs
/* 8022FCB8  48 00 00 38 */	b lbl_8022FCF0
lbl_8022FCBC:
/* 8022FCBC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008800@ha */
/* 8022FCC0  38 03 88 00 */	addi r0, r3, 0x8800 /* 0x00008800@l */
/* 8022FCC4  7C 1D 00 00 */	cmpw r29, r0
/* 8022FCC8  40 80 00 28 */	bge lbl_8022FCF0
/* 8022FCCC  7F A3 EB 78 */	mr r3, r29
/* 8022FCD0  4B FF 8B D9 */	bl isOutfontKanjiCode__Fi
/* 8022FCD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022FCD8  40 82 00 18 */	bne lbl_8022FCF0
/* 8022FCDC  7F A3 EB 78 */	mr r3, r29
/* 8022FCE0  4B FF 8B 59 */	bl changeKataToHira__Fi
/* 8022FCE4  7C 64 1B 78 */	mr r4, r3
/* 8022FCE8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022FCEC  4B FF FD 41 */	bl setCharactor__26jmessage_string_tReferenceFUs
lbl_8022FCF0:
/* 8022FCF0  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8022FCF4  80 64 00 08 */	lwz r3, 8(r4)
/* 8022FCF8  28 03 00 00 */	cmplwi r3, 0
/* 8022FCFC  41 82 00 10 */	beq lbl_8022FD0C
/* 8022FD00  C3 C3 01 14 */	lfs f30, 0x114(r3)
/* 8022FD04  C3 E3 01 1C */	lfs f31, 0x11c(r3)
/* 8022FD08  48 00 00 0C */	b lbl_8022FD14
lbl_8022FD0C:
/* 8022FD0C  C3 C2 B0 60 */	lfs f30, lit_4027(r2)
/* 8022FD10  C3 E2 B0 98 */	lfs f31, lit_7190(r2)
lbl_8022FD14:
/* 8022FD14  2C 1D 00 0A */	cmpwi r29, 0xa
/* 8022FD18  40 82 00 14 */	bne lbl_8022FD2C
/* 8022FD1C  A8 64 00 80 */	lha r3, 0x80(r4)
/* 8022FD20  38 03 00 01 */	addi r0, r3, 1
/* 8022FD24  B0 04 00 80 */	sth r0, 0x80(r4)
/* 8022FD28  48 00 00 A0 */	b lbl_8022FDC8
lbl_8022FD2C:
/* 8022FD2C  7F C3 F3 78 */	mr r3, r30
/* 8022FD30  7F A4 EB 78 */	mr r4, r29
/* 8022FD34  38 A1 00 08 */	addi r5, r1, 8
/* 8022FD38  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022FD3C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022FD40  7D 89 03 A6 */	mtctr r12
/* 8022FD44  4E 80 04 21 */	bctrl 
/* 8022FD48  8B A1 00 09 */	lbz r29, 9(r1)
/* 8022FD4C  7F C3 F3 78 */	mr r3, r30
/* 8022FD50  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022FD54  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022FD58  7D 89 03 A6 */	mtctr r12
/* 8022FD5C  4E 80 04 21 */	bctrl 
/* 8022FD60  C8 42 B0 70 */	lfd f2, lit_4198(r2)
/* 8022FD64  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022FD68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022FD6C  3C 60 43 30 */	lis r3, 0x4330
/* 8022FD70  90 61 00 10 */	stw r3, 0x10(r1)
/* 8022FD74  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8022FD78  EC 20 10 28 */	fsubs f1, f0, f2
/* 8022FD7C  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 8022FD80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022FD84  90 61 00 18 */	stw r3, 0x18(r1)
/* 8022FD88  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022FD8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8022FD90  EC 00 08 24 */	fdivs f0, f0, f1
/* 8022FD94  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8022FD98  EF DE 00 2A */	fadds f30, f30, f0
/* 8022FD9C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022FDA0  4B FF FD 85 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 8022FDA4  7C 64 07 34 */	extsh r4, r3
/* 8022FDA8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022FDAC  FC 20 F0 90 */	fmr f1, f30
/* 8022FDB0  4B FF FC BD */	bl addLineLength__26jmessage_string_tReferenceFif
/* 8022FDB4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022FDB8  4B FF FD 6D */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 8022FDBC  7C 64 07 34 */	extsh r4, r3
/* 8022FDC0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022FDC4  4B FF FD 2D */	bl clearOutfontLength__26jmessage_string_tReferenceFi
lbl_8022FDC8:
/* 8022FDC8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8022FDCC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8022FDD0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8022FDD4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8022FDD8  39 61 00 30 */	addi r11, r1, 0x30
/* 8022FDDC  48 13 24 4D */	bl _restgpr_29
/* 8022FDE0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022FDE4  7C 08 03 A6 */	mtlr r0
/* 8022FDE8  38 21 00 50 */	addi r1, r1, 0x50
/* 8022FDEC  4E 80 00 20 */	blr 
