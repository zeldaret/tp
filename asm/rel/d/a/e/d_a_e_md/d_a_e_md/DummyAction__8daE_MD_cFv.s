lbl_80709ABC:
/* 80709ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80709AC0  7C 08 02 A6 */	mflr r0
/* 80709AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80709AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80709ACC  7C 7F 1B 78 */	mr r31, r3
/* 80709AD0  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80709AD4  2C 00 00 02 */	cmpwi r0, 2
/* 80709AD8  41 82 00 58 */	beq lbl_80709B30
/* 80709ADC  40 80 00 14 */	bge lbl_80709AF0
/* 80709AE0  2C 00 00 00 */	cmpwi r0, 0
/* 80709AE4  41 82 00 1C */	beq lbl_80709B00
/* 80709AE8  40 80 00 30 */	bge lbl_80709B18
/* 80709AEC  48 00 00 B4 */	b lbl_80709BA0
lbl_80709AF0:
/* 80709AF0  2C 00 00 04 */	cmpwi r0, 4
/* 80709AF4  41 82 00 80 */	beq lbl_80709B74
/* 80709AF8  40 80 00 A8 */	bge lbl_80709BA0
/* 80709AFC  48 00 00 68 */	b lbl_80709B64
lbl_80709B00:
/* 80709B00  4B FF FE 2D */	bl WaitAction__8daE_MD_cFv
/* 80709B04  7F E3 FB 78 */	mr r3, r31
/* 80709B08  3C 80 80 71 */	lis r4, lit_4064@ha /* 0x8070A54C@ha */
/* 80709B0C  C0 24 A5 4C */	lfs f1, lit_4064@l(r4)  /* 0x8070A54C@l */
/* 80709B10  4B FF F3 61 */	bl setCcCylinder__8daE_MD_cFf
/* 80709B14  48 00 00 8C */	b lbl_80709BA0
lbl_80709B18:
/* 80709B18  4B FF FE 35 */	bl HalfBreakAction__8daE_MD_cFv
/* 80709B1C  7F E3 FB 78 */	mr r3, r31
/* 80709B20  3C 80 80 71 */	lis r4, lit_4065@ha /* 0x8070A550@ha */
/* 80709B24  C0 24 A5 50 */	lfs f1, lit_4065@l(r4)  /* 0x8070A550@l */
/* 80709B28  4B FF F3 49 */	bl setCcCylinder__8daE_MD_cFf
/* 80709B2C  48 00 00 74 */	b lbl_80709BA0
lbl_80709B30:
/* 80709B30  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80709B34  38 04 FF FF */	addi r0, r4, -1
/* 80709B38  90 1F 05 D4 */	stw r0, 0x5d4(r31)
/* 80709B3C  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 80709B40  2C 00 00 00 */	cmpwi r0, 0
/* 80709B44  40 80 00 5C */	bge lbl_80709BA0
/* 80709B48  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80709B4C  2C 00 00 02 */	cmpwi r0, 2
/* 80709B50  40 82 00 0C */	bne lbl_80709B5C
/* 80709B54  4B 91 01 29 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80709B58  48 00 00 48 */	b lbl_80709BA0
lbl_80709B5C:
/* 80709B5C  4B 91 01 21 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80709B60  48 00 00 40 */	b lbl_80709BA0
lbl_80709B64:
/* 80709B64  3C 80 80 71 */	lis r4, lit_4064@ha /* 0x8070A54C@ha */
/* 80709B68  C0 24 A5 4C */	lfs f1, lit_4064@l(r4)  /* 0x8070A54C@l */
/* 80709B6C  4B FF F3 05 */	bl setCcCylinder__8daE_MD_cFf
/* 80709B70  48 00 00 30 */	b lbl_80709BA0
lbl_80709B74:
/* 80709B74  4B FF F8 05 */	bl CheckHit__8daE_MD_cFv
/* 80709B78  7F E3 FB 78 */	mr r3, r31
/* 80709B7C  4B FF FE 89 */	bl VibAction__8daE_MD_cFv
/* 80709B80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80709B84  41 82 00 0C */	beq lbl_80709B90
/* 80709B88  38 00 00 00 */	li r0, 0
/* 80709B8C  90 1F 05 AC */	stw r0, 0x5ac(r31)
lbl_80709B90:
/* 80709B90  7F E3 FB 78 */	mr r3, r31
/* 80709B94  3C 80 80 71 */	lis r4, lit_4064@ha /* 0x8070A54C@ha */
/* 80709B98  C0 24 A5 4C */	lfs f1, lit_4064@l(r4)  /* 0x8070A54C@l */
/* 80709B9C  4B FF F2 D5 */	bl setCcCylinder__8daE_MD_cFf
lbl_80709BA0:
/* 80709BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80709BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80709BA8  7C 08 03 A6 */	mtlr r0
/* 80709BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80709BB0  4E 80 00 20 */	blr 
