lbl_80B9ADB0:
/* 80B9ADB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9ADB4  7C 08 02 A6 */	mflr r0
/* 80B9ADB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9ADBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9ADC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9ADC4  41 82 00 1C */	beq lbl_80B9ADE0
/* 80B9ADC8  3C A0 80 BA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B9B7B8@ha */
/* 80B9ADCC  38 05 B7 B8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B9B7B8@l */
/* 80B9ADD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9ADD4  7C 80 07 35 */	extsh. r0, r4
/* 80B9ADD8  40 81 00 08 */	ble lbl_80B9ADE0
/* 80B9ADDC  4B 73 3F 61 */	bl __dl__FPv
lbl_80B9ADE0:
/* 80B9ADE0  7F E3 FB 78 */	mr r3, r31
/* 80B9ADE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9ADE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9ADEC  7C 08 03 A6 */	mtlr r0
/* 80B9ADF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9ADF4  4E 80 00 20 */	blr 
