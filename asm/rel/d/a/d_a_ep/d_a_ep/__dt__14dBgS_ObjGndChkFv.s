lbl_8046ADB0:
/* 8046ADB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046ADB4  7C 08 02 A6 */	mflr r0
/* 8046ADB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046ADBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046ADC0  93 C1 00 08 */	stw r30, 8(r1)
/* 8046ADC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8046ADC8  7C 9F 23 78 */	mr r31, r4
/* 8046ADCC  41 82 00 40 */	beq lbl_8046AE0C
/* 8046ADD0  3C 80 80 47 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x8046B288@ha */
/* 8046ADD4  38 84 B2 88 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x8046B288@l */
/* 8046ADD8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8046ADDC  38 04 00 0C */	addi r0, r4, 0xc
/* 8046ADE0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046ADE4  38 04 00 18 */	addi r0, r4, 0x18
/* 8046ADE8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8046ADEC  38 04 00 24 */	addi r0, r4, 0x24
/* 8046ADF0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8046ADF4  38 80 00 00 */	li r4, 0
/* 8046ADF8  4B C0 C7 F9 */	bl __dt__11dBgS_GndChkFv
/* 8046ADFC  7F E0 07 35 */	extsh. r0, r31
/* 8046AE00  40 81 00 0C */	ble lbl_8046AE0C
/* 8046AE04  7F C3 F3 78 */	mr r3, r30
/* 8046AE08  4B E6 3F 35 */	bl __dl__FPv
lbl_8046AE0C:
/* 8046AE0C  7F C3 F3 78 */	mr r3, r30
/* 8046AE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AE14  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046AE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AE1C  7C 08 03 A6 */	mtlr r0
/* 8046AE20  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AE24  4E 80 00 20 */	blr 
