lbl_80633F50:
/* 80633F50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80633F54  7C 08 02 A6 */	mflr r0
/* 80633F58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80633F5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80633F60  4B D2 E2 75 */	bl _savegpr_27
/* 80633F64  7C 7B 1B 78 */	mr r27, r3
/* 80633F68  7C 9C 23 78 */	mr r28, r4
/* 80633F6C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80633F70  28 00 00 02 */	cmplwi r0, 2
/* 80633F74  40 82 00 14 */	bne lbl_80633F88
/* 80633F78  38 80 00 07 */	li r4, 7
/* 80633F7C  38 A0 00 00 */	li r5, 0
/* 80633F80  4B FF BE 8D */	bl setActionMode__8daB_YO_cFii
/* 80633F84  48 00 00 A4 */	b lbl_80634028
lbl_80633F88:
/* 80633F88  3B A0 00 00 */	li r29, 0
/* 80633F8C  3B E0 00 00 */	li r31, 0
lbl_80633F90:
/* 80633F90  38 00 00 00 */	li r0, 0
/* 80633F94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80633F98  3B DF 06 08 */	addi r30, r31, 0x608
/* 80633F9C  7C 7B F0 2E */	lwzx r3, r27, r30
/* 80633FA0  3C 03 00 01 */	addis r0, r3, 1
/* 80633FA4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80633FA8  41 82 00 0C */	beq lbl_80633FB4
/* 80633FAC  38 81 00 10 */	addi r4, r1, 0x10
/* 80633FB0  4B 9E 5A 0D */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
lbl_80633FB4:
/* 80633FB4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80633FB8  28 03 00 00 */	cmplwi r3, 0
/* 80633FBC  40 82 00 54 */	bne lbl_80634010
/* 80633FC0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80633FC4  41 82 00 54 */	beq lbl_80634018
/* 80633FC8  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80633FCC  7C 07 07 74 */	extsb r7, r0
/* 80633FD0  38 00 00 00 */	li r0, 0
/* 80633FD4  90 01 00 08 */	stw r0, 8(r1)
/* 80633FD8  38 60 02 12 */	li r3, 0x212
/* 80633FDC  28 1B 00 00 */	cmplwi r27, 0
/* 80633FE0  41 82 00 0C */	beq lbl_80633FEC
/* 80633FE4  80 9B 00 04 */	lwz r4, 4(r27)
/* 80633FE8  48 00 00 08 */	b lbl_80633FF0
lbl_80633FEC:
/* 80633FEC  38 80 FF FF */	li r4, -1
lbl_80633FF0:
/* 80633FF0  67 A5 00 01 */	oris r5, r29, 1
/* 80633FF4  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 80633FF8  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 80633FFC  39 20 00 00 */	li r9, 0
/* 80634000  39 40 FF FF */	li r10, -1
/* 80634004  4B 9E 5E ED */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80634008  7C 7B F1 2E */	stwx r3, r27, r30
/* 8063400C  48 00 00 0C */	b lbl_80634018
lbl_80634010:
/* 80634010  38 80 00 04 */	li r4, 4
/* 80634014  48 00 64 6D */	bl setOperate__9daB_YOI_cFi
lbl_80634018:
/* 80634018  3B BD 00 01 */	addi r29, r29, 1
/* 8063401C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80634020  3B FF 00 04 */	addi r31, r31, 4
/* 80634024  41 80 FF 6C */	blt lbl_80633F90
lbl_80634028:
/* 80634028  39 61 00 30 */	addi r11, r1, 0x30
/* 8063402C  4B D2 E1 F5 */	bl _restgpr_27
/* 80634030  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80634034  7C 08 03 A6 */	mtlr r0
/* 80634038  38 21 00 30 */	addi r1, r1, 0x30
/* 8063403C  4E 80 00 20 */	blr 
