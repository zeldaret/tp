lbl_800ECE10:
/* 800ECE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECE14  7C 08 02 A6 */	mflr r0
/* 800ECE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECE1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECE20  7C 7F 1B 78 */	mr r31, r3
/* 800ECE24  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800ECE28  28 00 01 3D */	cmplwi r0, 0x13d
/* 800ECE2C  40 82 00 6C */	bne lbl_800ECE98
/* 800ECE30  88 7F 2F AB */	lbz r3, 0x2fab(r31)
/* 800ECE34  54 64 07 39 */	rlwinm. r4, r3, 0, 0x1c, 0x1c
/* 800ECE38  41 82 00 14 */	beq lbl_800ECE4C
/* 800ECE3C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800ECE40  41 82 00 0C */	beq lbl_800ECE4C
/* 800ECE44  38 60 00 03 */	li r3, 3
/* 800ECE48  48 00 00 A8 */	b lbl_800ECEF0
lbl_800ECE4C:
/* 800ECE4C  2C 04 00 00 */	cmpwi r4, 0
/* 800ECE50  41 82 00 0C */	beq lbl_800ECE5C
/* 800ECE54  38 60 00 01 */	li r3, 1
/* 800ECE58  48 00 00 98 */	b lbl_800ECEF0
lbl_800ECE5C:
/* 800ECE5C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800ECE60  41 82 00 0C */	beq lbl_800ECE6C
/* 800ECE64  38 60 00 02 */	li r3, 2
/* 800ECE68  48 00 00 88 */	b lbl_800ECEF0
lbl_800ECE6C:
/* 800ECE6C  38 00 00 00 */	li r0, 0
/* 800ECE70  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800ECE74  28 03 00 01 */	cmplwi r3, 1
/* 800ECE78  41 82 00 0C */	beq lbl_800ECE84
/* 800ECE7C  28 03 00 02 */	cmplwi r3, 2
/* 800ECE80  40 82 00 08 */	bne lbl_800ECE88
lbl_800ECE84:
/* 800ECE84  38 00 00 01 */	li r0, 1
lbl_800ECE88:
/* 800ECE88  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800ECE8C  41 82 00 60 */	beq lbl_800ECEEC
/* 800ECE90  38 60 00 00 */	li r3, 0
/* 800ECE94  48 00 00 5C */	b lbl_800ECEF0
lbl_800ECE98:
/* 800ECE98  38 00 00 00 */	li r0, 0
/* 800ECE9C  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800ECEA0  28 03 00 01 */	cmplwi r3, 1
/* 800ECEA4  41 82 00 0C */	beq lbl_800ECEB0
/* 800ECEA8  28 03 00 02 */	cmplwi r3, 2
/* 800ECEAC  40 82 00 08 */	bne lbl_800ECEB4
lbl_800ECEB0:
/* 800ECEB0  38 00 00 01 */	li r0, 1
lbl_800ECEB4:
/* 800ECEB4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800ECEB8  41 82 00 34 */	beq lbl_800ECEEC
/* 800ECEBC  7F E3 FB 78 */	mr r3, r31
/* 800ECEC0  48 00 03 31 */	bl checkHorseNotGrab__9daAlink_cCFv
/* 800ECEC4  2C 03 00 00 */	cmpwi r3, 0
/* 800ECEC8  41 82 00 0C */	beq lbl_800ECED4
/* 800ECECC  38 60 00 00 */	li r3, 0
/* 800ECED0  48 00 00 20 */	b lbl_800ECEF0
lbl_800ECED4:
/* 800ECED4  7F E3 FB 78 */	mr r3, r31
/* 800ECED8  4B FF FF 15 */	bl checkHorseReinLeftOnly__9daAlink_cCFv
/* 800ECEDC  20 03 00 00 */	subfic r0, r3, 0
/* 800ECEE0  7C 60 01 10 */	subfe r3, r0, r0
/* 800ECEE4  38 63 00 02 */	addi r3, r3, 2
/* 800ECEE8  48 00 00 08 */	b lbl_800ECEF0
lbl_800ECEEC:
/* 800ECEEC  38 60 FF FF */	li r3, -1
lbl_800ECEF0:
/* 800ECEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECEF8  7C 08 03 A6 */	mtlr r0
/* 800ECEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECF00  4E 80 00 20 */	blr 
