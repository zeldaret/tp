lbl_8011EE94:
/* 8011EE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011EE98  7C 08 02 A6 */	mflr r0
/* 8011EE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011EEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EEA4  93 C1 00 08 */	stw r30, 8(r1)
/* 8011EEA8  7C 7E 1B 78 */	mr r30, r3
/* 8011EEAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011EEB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011EEB4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8011EEB8  7F C4 F3 78 */	mr r4, r30
/* 8011EEBC  38 A0 00 00 */	li r5, 0
/* 8011EEC0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011EEC4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011EEC8  4B F2 42 A5 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8011EECC  2C 03 00 00 */	cmpwi r3, 0
/* 8011EED0  40 82 00 0C */	bne lbl_8011EEDC
/* 8011EED4  38 60 00 00 */	li r3, 0
/* 8011EED8  48 00 00 C8 */	b lbl_8011EFA0
lbl_8011EEDC:
/* 8011EEDC  7F C3 F3 78 */	mr r3, r30
/* 8011EEE0  38 80 00 25 */	li r4, 0x25
/* 8011EEE4  4B FA 13 25 */	bl checkItemSetButton__9daAlink_cFi
/* 8011EEE8  2C 03 00 02 */	cmpwi r3, 2
/* 8011EEEC  41 82 00 30 */	beq lbl_8011EF1C
/* 8011EEF0  38 60 02 77 */	li r3, 0x277
/* 8011EEF4  38 80 00 00 */	li r4, 0
/* 8011EEF8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8011EEFC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8011EF00  7C 06 07 74 */	extsb r6, r0
/* 8011EF04  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 8011EF08  39 00 00 00 */	li r8, 0
/* 8011EF0C  39 20 FF FF */	li r9, -1
/* 8011EF10  4B EF AE 89 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8011EF14  7C 7F 1B 78 */	mr r31, r3
/* 8011EF18  48 00 00 2C */	b lbl_8011EF44
lbl_8011EF1C:
/* 8011EF1C  38 60 02 76 */	li r3, 0x276
/* 8011EF20  38 80 00 02 */	li r4, 2
/* 8011EF24  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8011EF28  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8011EF2C  7C 06 07 74 */	extsb r6, r0
/* 8011EF30  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 8011EF34  39 00 00 00 */	li r8, 0
/* 8011EF38  39 20 FF FF */	li r9, -1
/* 8011EF3C  4B EF AE 5D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8011EF40  7C 7F 1B 78 */	mr r31, r3
lbl_8011EF44:
/* 8011EF44  3C 1F 00 01 */	addis r0, r31, 1
/* 8011EF48  28 00 FF FF */	cmplwi r0, 0xffff
/* 8011EF4C  40 82 00 0C */	bne lbl_8011EF58
/* 8011EF50  38 60 00 00 */	li r3, 0
/* 8011EF54  48 00 00 4C */	b lbl_8011EFA0
lbl_8011EF58:
/* 8011EF58  38 00 00 05 */	li r0, 5
/* 8011EF5C  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8011EF60  7F C3 F3 78 */	mr r3, r30
/* 8011EF64  38 80 00 EA */	li r4, 0xea
/* 8011EF68  4B FA 30 05 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011EF6C  7F C3 F3 78 */	mr r3, r30
/* 8011EF70  38 80 01 88 */	li r4, 0x188
/* 8011EF74  4B F8 E0 0D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011EF78  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011EF7C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8011EF80  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8011EF84  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8011EF88  93 FE 32 CC */	stw r31, 0x32cc(r30)
/* 8011EF8C  38 00 00 00 */	li r0, 0
/* 8011EF90  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8011EF94  7F C3 F3 78 */	mr r3, r30
/* 8011EF98  4B FA 08 BD */	bl keepItemData__9daAlink_cFv
/* 8011EF9C  38 60 00 01 */	li r3, 1
lbl_8011EFA0:
/* 8011EFA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011EFA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011EFA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011EFAC  7C 08 03 A6 */	mtlr r0
/* 8011EFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011EFB4  4E 80 00 20 */	blr 
