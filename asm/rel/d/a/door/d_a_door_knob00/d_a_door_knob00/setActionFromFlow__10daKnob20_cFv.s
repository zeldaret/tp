lbl_8045EEE4:
/* 8045EEE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045EEE8  7C 08 02 A6 */	mflr r0
/* 8045EEEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045EEF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045EEF4  7C 7F 1B 78 */	mr r31, r3
/* 8045EEF8  88 03 06 0E */	lbz r0, 0x60e(r3)
/* 8045EEFC  28 00 00 00 */	cmplwi r0, 0
/* 8045EF00  41 82 00 B8 */	beq lbl_8045EFB8
/* 8045EF04  28 00 00 02 */	cmplwi r0, 2
/* 8045EF08  41 82 00 B0 */	beq lbl_8045EFB8
/* 8045EF0C  28 00 00 03 */	cmplwi r0, 3
/* 8045EF10  40 82 00 08 */	bne lbl_8045EF18
/* 8045EF14  48 00 00 A4 */	b lbl_8045EFB8
lbl_8045EF18:
/* 8045EF18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045EF1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045EF20  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8045EF24  28 00 00 00 */	cmplwi r0, 0
/* 8045EF28  40 82 00 90 */	bne lbl_8045EFB8
/* 8045EF2C  4B DD 93 01 */	bl getStatus__12dMsgObject_cFv
/* 8045EF30  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8045EF34  20 60 00 01 */	subfic r3, r0, 1
/* 8045EF38  30 03 FF FF */	addic r0, r3, -1
/* 8045EF3C  7C 00 19 10 */	subfe r0, r0, r3
/* 8045EF40  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8045EF44  41 82 00 1C */	beq lbl_8045EF60
/* 8045EF48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045EF4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045EF50  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8045EF54  4B DD 82 91 */	bl isPlaceMessage__12dMsgObject_cFv
/* 8045EF58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045EF5C  40 82 00 5C */	bne lbl_8045EFB8
lbl_8045EF60:
/* 8045EF60  7F E3 FB 78 */	mr r3, r31
/* 8045EF64  38 81 00 08 */	addi r4, r1, 8
/* 8045EF68  4B FF FE F5 */	bl checkOpenDoor__10daKnob20_cFPi
/* 8045EF6C  2C 03 00 00 */	cmpwi r3, 0
/* 8045EF70  41 82 00 28 */	beq lbl_8045EF98
/* 8045EF74  80 01 00 08 */	lwz r0, 8(r1)
/* 8045EF78  2C 00 00 00 */	cmpwi r0, 0
/* 8045EF7C  41 82 00 10 */	beq lbl_8045EF8C
/* 8045EF80  38 00 00 05 */	li r0, 5
/* 8045EF84  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 8045EF88  48 00 00 30 */	b lbl_8045EFB8
lbl_8045EF8C:
/* 8045EF8C  38 00 00 01 */	li r0, 1
/* 8045EF90  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 8045EF94  48 00 00 24 */	b lbl_8045EFB8
lbl_8045EF98:
/* 8045EF98  80 01 00 08 */	lwz r0, 8(r1)
/* 8045EF9C  2C 00 00 00 */	cmpwi r0, 0
/* 8045EFA0  41 82 00 10 */	beq lbl_8045EFB0
/* 8045EFA4  38 00 00 04 */	li r0, 4
/* 8045EFA8  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 8045EFAC  48 00 00 0C */	b lbl_8045EFB8
lbl_8045EFB0:
/* 8045EFB0  38 00 00 06 */	li r0, 6
/* 8045EFB4  98 1F 06 0E */	stb r0, 0x60e(r31)
lbl_8045EFB8:
/* 8045EFB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045EFBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045EFC0  7C 08 03 A6 */	mtlr r0
/* 8045EFC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8045EFC8  4E 80 00 20 */	blr 
