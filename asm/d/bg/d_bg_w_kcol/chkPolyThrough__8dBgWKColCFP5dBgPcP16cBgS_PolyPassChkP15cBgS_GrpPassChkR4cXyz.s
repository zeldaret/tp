lbl_8007EBC4:
/* 8007EBC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007EBC8  7C 08 02 A6 */	mflr r0
/* 8007EBCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007EBD0  39 61 00 20 */	addi r11, r1, 0x20
/* 8007EBD4  48 2E 36 09 */	bl _savegpr_29
/* 8007EBD8  7C 9D 23 78 */	mr r29, r4
/* 8007EBDC  7C FE 3B 78 */	mr r30, r7
/* 8007EBE0  28 06 00 00 */	cmplwi r6, 0
/* 8007EBE4  41 82 00 3C */	beq lbl_8007EC20
/* 8007EBE8  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8007EBEC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8007EBF0  40 82 00 18 */	bne lbl_8007EC08
/* 8007EBF4  80 06 00 04 */	lwz r0, 4(r6)
/* 8007EBF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007EBFC  40 82 00 24 */	bne lbl_8007EC20
/* 8007EC00  38 60 00 01 */	li r3, 1
/* 8007EC04  48 00 02 18 */	b lbl_8007EE1C
lbl_8007EC08:
/* 8007EC08  41 82 00 18 */	beq lbl_8007EC20
/* 8007EC0C  80 06 00 04 */	lwz r0, 4(r6)
/* 8007EC10  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8007EC14  40 82 00 0C */	bne lbl_8007EC20
/* 8007EC18  38 60 00 01 */	li r3, 1
/* 8007EC1C  48 00 02 00 */	b lbl_8007EE1C
lbl_8007EC20:
/* 8007EC20  28 05 00 00 */	cmplwi r5, 0
/* 8007EC24  41 82 01 F4 */	beq lbl_8007EE18
/* 8007EC28  7C BF 2B 78 */	mr r31, r5
/* 8007EC2C  88 05 00 04 */	lbz r0, 4(r5)
/* 8007EC30  28 00 00 00 */	cmplwi r0, 0
/* 8007EC34  41 82 00 18 */	beq lbl_8007EC4C
/* 8007EC38  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007EC3C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8007EC40  41 82 00 0C */	beq lbl_8007EC4C
/* 8007EC44  38 60 00 01 */	li r3, 1
/* 8007EC48  48 00 01 D4 */	b lbl_8007EE1C
lbl_8007EC4C:
/* 8007EC4C  88 1F 00 05 */	lbz r0, 5(r31)
/* 8007EC50  28 00 00 00 */	cmplwi r0, 0
/* 8007EC54  41 82 00 18 */	beq lbl_8007EC6C
/* 8007EC58  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007EC5C  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 8007EC60  41 82 00 0C */	beq lbl_8007EC6C
/* 8007EC64  38 60 00 01 */	li r3, 1
/* 8007EC68  48 00 01 B4 */	b lbl_8007EE1C
lbl_8007EC6C:
/* 8007EC6C  88 1F 00 06 */	lbz r0, 6(r31)
/* 8007EC70  28 00 00 00 */	cmplwi r0, 0
/* 8007EC74  41 82 00 10 */	beq lbl_8007EC84
/* 8007EC78  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007EC7C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8007EC80  40 82 00 1C */	bne lbl_8007EC9C
lbl_8007EC84:
/* 8007EC84  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8007EC88  28 00 00 00 */	cmplwi r0, 0
/* 8007EC8C  41 82 00 18 */	beq lbl_8007ECA4
/* 8007EC90  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007EC94  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8007EC98  41 82 00 0C */	beq lbl_8007ECA4
lbl_8007EC9C:
/* 8007EC9C  38 60 00 01 */	li r3, 1
/* 8007ECA0  48 00 01 7C */	b lbl_8007EE1C
lbl_8007ECA4:
/* 8007ECA4  88 1F 00 07 */	lbz r0, 7(r31)
/* 8007ECA8  28 00 00 00 */	cmplwi r0, 0
/* 8007ECAC  41 82 00 18 */	beq lbl_8007ECC4
/* 8007ECB0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007ECB4  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8007ECB8  41 82 00 0C */	beq lbl_8007ECC4
/* 8007ECBC  38 60 00 01 */	li r3, 1
/* 8007ECC0  48 00 01 5C */	b lbl_8007EE1C
lbl_8007ECC4:
/* 8007ECC4  88 1F 00 08 */	lbz r0, 8(r31)
/* 8007ECC8  28 00 00 00 */	cmplwi r0, 0
/* 8007ECCC  41 82 00 18 */	beq lbl_8007ECE4
/* 8007ECD0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007ECD4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8007ECD8  41 82 00 0C */	beq lbl_8007ECE4
/* 8007ECDC  38 60 00 01 */	li r3, 1
/* 8007ECE0  48 00 01 3C */	b lbl_8007EE1C
lbl_8007ECE4:
/* 8007ECE4  88 1F 00 09 */	lbz r0, 9(r31)
/* 8007ECE8  28 00 00 00 */	cmplwi r0, 0
/* 8007ECEC  41 82 00 18 */	beq lbl_8007ED04
/* 8007ECF0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007ECF4  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 8007ECF8  41 82 00 0C */	beq lbl_8007ED04
/* 8007ECFC  38 60 00 01 */	li r3, 1
/* 8007ED00  48 00 01 1C */	b lbl_8007EE1C
lbl_8007ED04:
/* 8007ED04  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8007ED08  28 00 00 00 */	cmplwi r0, 0
/* 8007ED0C  41 82 00 18 */	beq lbl_8007ED24
/* 8007ED10  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007ED14  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8007ED18  41 82 00 0C */	beq lbl_8007ED24
/* 8007ED1C  38 60 00 01 */	li r3, 1
/* 8007ED20  48 00 00 FC */	b lbl_8007EE1C
lbl_8007ED24:
/* 8007ED24  88 1F 00 0B */	lbz r0, 0xb(r31)
/* 8007ED28  28 00 00 00 */	cmplwi r0, 0
/* 8007ED2C  41 82 00 18 */	beq lbl_8007ED44
/* 8007ED30  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007ED34  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 8007ED38  41 82 00 0C */	beq lbl_8007ED44
/* 8007ED3C  38 60 00 01 */	li r3, 1
/* 8007ED40  48 00 00 DC */	b lbl_8007EE1C
lbl_8007ED44:
/* 8007ED44  80 1D 00 04 */	lwz r0, 4(r29)
/* 8007ED48  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8007ED4C  2C 00 00 08 */	cmpwi r0, 8
/* 8007ED50  40 82 00 1C */	bne lbl_8007ED6C
/* 8007ED54  7F E3 FB 78 */	mr r3, r31
/* 8007ED58  4B FF A1 AD */	bl ChkNoHorse__16dBgS_PolyPassChkFv
/* 8007ED5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007ED60  41 82 00 0C */	beq lbl_8007ED6C
/* 8007ED64  38 60 00 01 */	li r3, 1
/* 8007ED68  48 00 00 B4 */	b lbl_8007EE1C
lbl_8007ED6C:
/* 8007ED6C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8007ED70  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8007ED74  2C 00 00 09 */	cmpwi r0, 9
/* 8007ED78  40 82 00 5C */	bne lbl_8007EDD4
/* 8007ED7C  7F E3 FB 78 */	mr r3, r31
/* 8007ED80  4B FF A1 85 */	bl ChkNoHorse__16dBgS_PolyPassChkFv
/* 8007ED84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007ED88  41 82 00 0C */	beq lbl_8007ED94
/* 8007ED8C  38 60 00 01 */	li r3, 1
/* 8007ED90  48 00 00 8C */	b lbl_8007EE1C
lbl_8007ED94:
/* 8007ED94  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8007ED98  28 00 00 00 */	cmplwi r0, 0
/* 8007ED9C  41 82 00 38 */	beq lbl_8007EDD4
/* 8007EDA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8007EDA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8007EDA8  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8007EDAC  28 03 00 00 */	cmplwi r3, 0
/* 8007EDB0  41 82 00 24 */	beq lbl_8007EDD4
/* 8007EDB4  7F C4 F3 78 */	mr r4, r30
/* 8007EDB8  39 83 18 B0 */	addi r12, r3, 0x18b0
/* 8007EDBC  48 2E 32 C9 */	bl __ptmf_scall
/* 8007EDC0  60 00 00 00 */	nop 
/* 8007EDC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007EDC8  40 82 00 0C */	bne lbl_8007EDD4
/* 8007EDCC  38 60 00 01 */	li r3, 1
/* 8007EDD0  48 00 00 4C */	b lbl_8007EE1C
lbl_8007EDD4:
/* 8007EDD4  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 8007EDD8  28 00 00 00 */	cmplwi r0, 0
/* 8007EDDC  41 82 00 1C */	beq lbl_8007EDF8
/* 8007EDE0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8007EDE4  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 8007EDE8  2C 00 00 07 */	cmpwi r0, 7
/* 8007EDEC  40 82 00 0C */	bne lbl_8007EDF8
/* 8007EDF0  38 60 00 01 */	li r3, 1
/* 8007EDF4  48 00 00 28 */	b lbl_8007EE1C
lbl_8007EDF8:
/* 8007EDF8  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 8007EDFC  28 00 00 00 */	cmplwi r0, 0
/* 8007EE00  41 82 00 18 */	beq lbl_8007EE18
/* 8007EE04  80 1D 00 04 */	lwz r0, 4(r29)
/* 8007EE08  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 8007EE0C  41 82 00 0C */	beq lbl_8007EE18
/* 8007EE10  38 60 00 01 */	li r3, 1
/* 8007EE14  48 00 00 08 */	b lbl_8007EE1C
lbl_8007EE18:
/* 8007EE18  38 60 00 00 */	li r3, 0
lbl_8007EE1C:
/* 8007EE1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007EE20  48 2E 34 09 */	bl _restgpr_29
/* 8007EE24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007EE28  7C 08 03 A6 */	mtlr r0
/* 8007EE2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8007EE30  4E 80 00 20 */	blr 
