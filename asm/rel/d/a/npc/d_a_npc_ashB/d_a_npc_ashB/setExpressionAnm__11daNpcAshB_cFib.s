lbl_8095EC00:
/* 8095EC00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8095EC04  7C 08 02 A6 */	mflr r0
/* 8095EC08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095EC0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8095EC10  4B A0 35 C5 */	bl _savegpr_27
/* 8095EC14  7C 7B 1B 78 */	mr r27, r3
/* 8095EC18  7C 9C 23 79 */	or. r28, r4, r4
/* 8095EC1C  7C BD 2B 78 */	mr r29, r5
/* 8095EC20  41 80 00 0C */	blt lbl_8095EC2C
/* 8095EC24  2C 1C 00 06 */	cmpwi r28, 6
/* 8095EC28  40 81 00 0C */	ble lbl_8095EC34
lbl_8095EC2C:
/* 8095EC2C  38 60 00 00 */	li r3, 0
/* 8095EC30  48 00 01 B8 */	b lbl_8095EDE8
lbl_8095EC34:
/* 8095EC34  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 8095EC38  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 8095EC3C  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 8095EC40  1F DC 00 0C */	mulli r30, r28, 0xc
/* 8095EC44  3C 80 80 96 */	lis r4, l_bckGetParamList@ha /* 0x80962438@ha */
/* 8095EC48  38 84 24 38 */	addi r4, r4, l_bckGetParamList@l /* 0x80962438@l */
/* 8095EC4C  7C A4 F0 2E */	lwzx r5, r4, r30
/* 8095EC50  2C 05 00 00 */	cmpwi r5, 0
/* 8095EC54  41 80 00 24 */	blt lbl_8095EC78
/* 8095EC58  7C 84 F2 14 */	add r4, r4, r30
/* 8095EC5C  80 04 00 08 */	lwz r0, 8(r4)
/* 8095EC60  54 00 10 3A */	slwi r0, r0, 2
/* 8095EC64  3C 80 80 96 */	lis r4, l_arcNames@ha /* 0x80962594@ha */
/* 8095EC68  38 84 25 94 */	addi r4, r4, l_arcNames@l /* 0x80962594@l */
/* 8095EC6C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8095EC70  4B 7F 3E BD */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 8095EC74  48 00 00 08 */	b lbl_8095EC7C
lbl_8095EC78:
/* 8095EC78  38 60 00 00 */	li r3, 0
lbl_8095EC7C:
/* 8095EC7C  7C 7F 1B 78 */	mr r31, r3
/* 8095EC80  3C 60 80 96 */	lis r3, l_bckGetParamList@ha /* 0x80962438@ha */
/* 8095EC84  38 03 24 38 */	addi r0, r3, l_bckGetParamList@l /* 0x80962438@l */
/* 8095EC88  7C 60 F2 14 */	add r3, r0, r30
/* 8095EC8C  83 C3 00 04 */	lwz r30, 4(r3)
/* 8095EC90  38 60 00 00 */	li r3, 0
/* 8095EC94  28 1C 00 06 */	cmplwi r28, 6
/* 8095EC98  41 81 00 E0 */	bgt lbl_8095ED78
/* 8095EC9C  3C 80 80 96 */	lis r4, lit_4423@ha /* 0x809625C8@ha */
/* 8095ECA0  38 84 25 C8 */	addi r4, r4, lit_4423@l /* 0x809625C8@l */
/* 8095ECA4  57 80 10 3A */	slwi r0, r28, 2
/* 8095ECA8  7C 04 00 2E */	lwzx r0, r4, r0
/* 8095ECAC  7C 09 03 A6 */	mtctr r0
/* 8095ECB0  4E 80 04 20 */	bctr 
lbl_8095ECB4:
/* 8095ECB4  7F 63 DB 78 */	mr r3, r27
/* 8095ECB8  38 80 00 00 */	li r4, 0
/* 8095ECBC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095ECC0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8095ECC4  7D 89 03 A6 */	mtctr r12
/* 8095ECC8  4E 80 04 21 */	bctrl 
/* 8095ECCC  48 00 00 B0 */	b lbl_8095ED7C
lbl_8095ECD0:
/* 8095ECD0  7F 63 DB 78 */	mr r3, r27
/* 8095ECD4  38 80 00 00 */	li r4, 0
/* 8095ECD8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095ECDC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8095ECE0  7D 89 03 A6 */	mtctr r12
/* 8095ECE4  4E 80 04 21 */	bctrl 
/* 8095ECE8  48 00 00 94 */	b lbl_8095ED7C
lbl_8095ECEC:
/* 8095ECEC  7F 63 DB 78 */	mr r3, r27
/* 8095ECF0  38 80 00 00 */	li r4, 0
/* 8095ECF4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095ECF8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8095ECFC  7D 89 03 A6 */	mtctr r12
/* 8095ED00  4E 80 04 21 */	bctrl 
/* 8095ED04  48 00 00 78 */	b lbl_8095ED7C
lbl_8095ED08:
/* 8095ED08  7F 63 DB 78 */	mr r3, r27
/* 8095ED0C  38 80 00 02 */	li r4, 2
/* 8095ED10  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095ED14  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8095ED18  7D 89 03 A6 */	mtctr r12
/* 8095ED1C  4E 80 04 21 */	bctrl 
/* 8095ED20  48 00 00 5C */	b lbl_8095ED7C
lbl_8095ED24:
/* 8095ED24  7F 63 DB 78 */	mr r3, r27
/* 8095ED28  38 80 00 03 */	li r4, 3
/* 8095ED2C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095ED30  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8095ED34  7D 89 03 A6 */	mtctr r12
/* 8095ED38  4E 80 04 21 */	bctrl 
/* 8095ED3C  48 00 00 40 */	b lbl_8095ED7C
lbl_8095ED40:
/* 8095ED40  7F 63 DB 78 */	mr r3, r27
/* 8095ED44  38 80 00 00 */	li r4, 0
/* 8095ED48  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095ED4C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8095ED50  7D 89 03 A6 */	mtctr r12
/* 8095ED54  4E 80 04 21 */	bctrl 
/* 8095ED58  48 00 00 24 */	b lbl_8095ED7C
lbl_8095ED5C:
/* 8095ED5C  7F 63 DB 78 */	mr r3, r27
/* 8095ED60  38 80 00 00 */	li r4, 0
/* 8095ED64  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 8095ED68  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8095ED6C  7D 89 03 A6 */	mtctr r12
/* 8095ED70  4E 80 04 21 */	bctrl 
/* 8095ED74  48 00 00 08 */	b lbl_8095ED7C
lbl_8095ED78:
/* 8095ED78  3B E0 00 00 */	li r31, 0
lbl_8095ED7C:
/* 8095ED7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8095ED80  40 82 00 0C */	bne lbl_8095ED8C
/* 8095ED84  38 60 00 00 */	li r3, 0
/* 8095ED88  48 00 00 60 */	b lbl_8095EDE8
lbl_8095ED8C:
/* 8095ED8C  28 1F 00 00 */	cmplwi r31, 0
/* 8095ED90  40 82 00 0C */	bne lbl_8095ED9C
/* 8095ED94  38 60 00 01 */	li r3, 1
/* 8095ED98  48 00 00 50 */	b lbl_8095EDE8
lbl_8095ED9C:
/* 8095ED9C  7F 63 DB 78 */	mr r3, r27
/* 8095EDA0  7F E4 FB 78 */	mr r4, r31
/* 8095EDA4  3C A0 80 96 */	lis r5, lit_4237@ha /* 0x80962164@ha */
/* 8095EDA8  C0 25 21 64 */	lfs f1, lit_4237@l(r5)  /* 0x80962164@l */
/* 8095EDAC  7F C5 F3 78 */	mr r5, r30
/* 8095EDB0  38 C0 00 00 */	li r6, 0
/* 8095EDB4  38 E0 FF FF */	li r7, -1
/* 8095EDB8  7F A8 EB 78 */	mr r8, r29
/* 8095EDBC  4B 7F 3E C5 */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 8095EDC0  2C 03 00 00 */	cmpwi r3, 0
/* 8095EDC4  41 82 00 20 */	beq lbl_8095EDE4
/* 8095EDC8  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 8095EDCC  60 00 01 40 */	ori r0, r0, 0x140
/* 8095EDD0  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 8095EDD4  38 00 00 00 */	li r0, 0
/* 8095EDD8  B0 1B 09 E4 */	sth r0, 0x9e4(r27)
/* 8095EDDC  38 60 00 01 */	li r3, 1
/* 8095EDE0  48 00 00 08 */	b lbl_8095EDE8
lbl_8095EDE4:
/* 8095EDE4  38 60 00 00 */	li r3, 0
lbl_8095EDE8:
/* 8095EDE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8095EDEC  4B A0 34 35 */	bl _restgpr_27
/* 8095EDF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095EDF4  7C 08 03 A6 */	mtlr r0
/* 8095EDF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8095EDFC  4E 80 00 20 */	blr 
