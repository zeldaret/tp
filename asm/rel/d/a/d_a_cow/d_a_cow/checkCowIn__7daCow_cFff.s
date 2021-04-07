lbl_8065BA30:
/* 8065BA30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8065BA34  7C 08 02 A6 */	mflr r0
/* 8065BA38  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065BA3C  39 61 00 30 */	addi r11, r1, 0x30
/* 8065BA40  4B D0 67 05 */	bl _savefpr_29
/* 8065BA44  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8065BA48  7C 7F 1B 78 */	mr r31, r3
/* 8065BA4C  FF A0 08 90 */	fmr f29, f1
/* 8065BA50  FF C0 10 90 */	fmr f30, f2
/* 8065BA54  4B FF D0 51 */	bl isChaseCowGame__7daCow_cFv
/* 8065BA58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065BA5C  40 82 00 0C */	bne lbl_8065BA68
/* 8065BA60  38 60 00 00 */	li r3, 0
/* 8065BA64  48 00 00 B4 */	b lbl_8065BB18
lbl_8065BA68:
/* 8065BA68  7F E3 FB 78 */	mr r3, r31
/* 8065BA6C  4B FF FE 6D */	bl getCowshedDist__7daCow_cFv
/* 8065BA70  FF E0 08 90 */	fmr f31, f1
/* 8065BA74  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 8065BA78  40 80 00 9C */	bge lbl_8065BB14
/* 8065BA7C  7F E3 FB 78 */	mr r3, r31
/* 8065BA80  4B FF FE 29 */	bl getCowshedAngle__7daCow_cFv
/* 8065BA84  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8065BA88  40 80 00 4C */	bge lbl_8065BAD4
/* 8065BA8C  7C 65 07 34 */	extsh r5, r3
/* 8065BA90  3C 80 80 66 */	lis r4, struct_80662FB8+0x0@ha /* 0x80662FB8@ha */
/* 8065BA94  38 84 2F B8 */	addi r4, r4, struct_80662FB8+0x0@l /* 0x80662FB8@l */
/* 8065BA98  A8 84 00 00 */	lha r4, 0(r4)
/* 8065BA9C  38 04 20 00 */	addi r0, r4, 0x2000
/* 8065BAA0  7C 05 00 00 */	cmpw r5, r0
/* 8065BAA4  40 80 00 28 */	bge lbl_8065BACC
/* 8065BAA8  38 04 E0 00 */	addi r0, r4, -8192
/* 8065BAAC  7C 05 00 00 */	cmpw r5, r0
/* 8065BAB0  40 81 00 1C */	ble lbl_8065BACC
/* 8065BAB4  A8 9F 0C 34 */	lha r4, 0xc34(r31)
/* 8065BAB8  4B C1 53 6D */	bl cLib_distanceAngleS__Fss
/* 8065BABC  2C 03 18 00 */	cmpwi r3, 0x1800
/* 8065BAC0  40 80 00 0C */	bge lbl_8065BACC
/* 8065BAC4  38 60 00 01 */	li r3, 1
/* 8065BAC8  48 00 00 50 */	b lbl_8065BB18
lbl_8065BACC:
/* 8065BACC  38 60 00 02 */	li r3, 2
/* 8065BAD0  48 00 00 48 */	b lbl_8065BB18
lbl_8065BAD4:
/* 8065BAD4  7C 65 07 34 */	extsh r5, r3
/* 8065BAD8  3C 80 80 66 */	lis r4, struct_80662FB8+0x0@ha /* 0x80662FB8@ha */
/* 8065BADC  38 84 2F B8 */	addi r4, r4, struct_80662FB8+0x0@l /* 0x80662FB8@l */
/* 8065BAE0  A8 84 00 00 */	lha r4, 0(r4)
/* 8065BAE4  38 04 2A AA */	addi r0, r4, 0x2aaa
/* 8065BAE8  7C 05 00 00 */	cmpw r5, r0
/* 8065BAEC  40 80 00 28 */	bge lbl_8065BB14
/* 8065BAF0  38 04 D5 56 */	addi r0, r4, -10922
/* 8065BAF4  7C 05 00 00 */	cmpw r5, r0
/* 8065BAF8  40 81 00 1C */	ble lbl_8065BB14
/* 8065BAFC  A8 9F 0C 34 */	lha r4, 0xc34(r31)
/* 8065BB00  4B C1 53 25 */	bl cLib_distanceAngleS__Fss
/* 8065BB04  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8065BB08  40 80 00 0C */	bge lbl_8065BB14
/* 8065BB0C  38 60 00 01 */	li r3, 1
/* 8065BB10  48 00 00 08 */	b lbl_8065BB18
lbl_8065BB14:
/* 8065BB14  38 60 00 00 */	li r3, 0
lbl_8065BB18:
/* 8065BB18  39 61 00 30 */	addi r11, r1, 0x30
/* 8065BB1C  4B D0 66 75 */	bl _restfpr_29
/* 8065BB20  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8065BB24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8065BB28  7C 08 03 A6 */	mtlr r0
/* 8065BB2C  38 21 00 30 */	addi r1, r1, 0x30
/* 8065BB30  4E 80 00 20 */	blr 
