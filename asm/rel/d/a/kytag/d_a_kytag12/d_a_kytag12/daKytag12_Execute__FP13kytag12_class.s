lbl_8085ED48:
/* 8085ED48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085ED4C  7C 08 02 A6 */	mflr r0
/* 8085ED50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085ED54  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8085ED58  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 8085ED5C  88 04 10 51 */	lbz r0, 0x1051(r4)
/* 8085ED60  88 A3 04 BA */	lbz r5, 0x4ba(r3)
/* 8085ED64  7C A5 07 74 */	extsb r5, r5
/* 8085ED68  7C 00 28 00 */	cmpw r0, r5
/* 8085ED6C  41 82 00 0C */	beq lbl_8085ED78
/* 8085ED70  38 60 00 00 */	li r3, 0
/* 8085ED74  48 00 00 A4 */	b lbl_8085EE18
lbl_8085ED78:
/* 8085ED78  2C 05 00 0B */	cmpwi r5, 0xb
/* 8085ED7C  41 82 00 4C */	beq lbl_8085EDC8
/* 8085ED80  40 80 00 1C */	bge lbl_8085ED9C
/* 8085ED84  2C 05 00 02 */	cmpwi r5, 2
/* 8085ED88  41 82 00 34 */	beq lbl_8085EDBC
/* 8085ED8C  40 80 00 50 */	bge lbl_8085EDDC
/* 8085ED90  2C 05 00 00 */	cmpwi r5, 0
/* 8085ED94  40 80 00 1C */	bge lbl_8085EDB0
/* 8085ED98  48 00 00 44 */	b lbl_8085EDDC
lbl_8085ED9C:
/* 8085ED9C  2C 05 00 35 */	cmpwi r5, 0x35
/* 8085EDA0  40 80 00 3C */	bge lbl_8085EDDC
/* 8085EDA4  2C 05 00 33 */	cmpwi r5, 0x33
/* 8085EDA8  40 80 00 20 */	bge lbl_8085EDC8
/* 8085EDAC  48 00 00 30 */	b lbl_8085EDDC
lbl_8085EDB0:
/* 8085EDB0  38 00 07 D0 */	li r0, 0x7d0
/* 8085EDB4  90 04 10 54 */	stw r0, 0x1054(r4)
/* 8085EDB8  48 00 00 34 */	b lbl_8085EDEC
lbl_8085EDBC:
/* 8085EDBC  38 00 01 F4 */	li r0, 0x1f4
/* 8085EDC0  90 04 10 54 */	stw r0, 0x1054(r4)
/* 8085EDC4  48 00 00 28 */	b lbl_8085EDEC
lbl_8085EDC8:
/* 8085EDC8  38 00 03 E8 */	li r0, 0x3e8
/* 8085EDCC  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8085EDD0  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 8085EDD4  90 04 10 54 */	stw r0, 0x1054(r4)
/* 8085EDD8  48 00 00 14 */	b lbl_8085EDEC
lbl_8085EDDC:
/* 8085EDDC  38 00 01 F4 */	li r0, 0x1f4
/* 8085EDE0  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8085EDE4  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 8085EDE8  90 04 10 54 */	stw r0, 0x1054(r4)
lbl_8085EDEC:
/* 8085EDEC  88 03 05 74 */	lbz r0, 0x574(r3)
/* 8085EDF0  28 00 00 01 */	cmplwi r0, 1
/* 8085EDF4  40 82 00 0C */	bne lbl_8085EE00
/* 8085EDF8  4B FF E3 E5 */	bl daKytag12_Execute_arrival__FP13kytag12_class
/* 8085EDFC  48 00 00 18 */	b lbl_8085EE14
lbl_8085EE00:
/* 8085EE00  28 00 00 02 */	cmplwi r0, 2
/* 8085EE04  40 82 00 0C */	bne lbl_8085EE10
/* 8085EE08  4B FF F1 E9 */	bl daKytag12_Execute_R00__FP13kytag12_class
/* 8085EE0C  48 00 00 08 */	b lbl_8085EE14
lbl_8085EE10:
/* 8085EE10  4B FF CE FD */	bl daKytag12_Execute_standard__FP13kytag12_class
lbl_8085EE14:
/* 8085EE14  38 60 00 01 */	li r3, 1
lbl_8085EE18:
/* 8085EE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085EE1C  7C 08 03 A6 */	mtlr r0
/* 8085EE20  38 21 00 10 */	addi r1, r1, 0x10
/* 8085EE24  4E 80 00 20 */	blr 
