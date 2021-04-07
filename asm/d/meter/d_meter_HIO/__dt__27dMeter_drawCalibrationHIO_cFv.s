lbl_80200E78:
/* 80200E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200E7C  7C 08 02 A6 */	mflr r0
/* 80200E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200E88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200E8C  41 82 00 1C */	beq lbl_80200EA8
/* 80200E90  3C A0 80 3C */	lis r5, __vt__27dMeter_drawCalibrationHIO_c@ha /* 0x803BF154@ha */
/* 80200E94  38 05 F1 54 */	addi r0, r5, __vt__27dMeter_drawCalibrationHIO_c@l /* 0x803BF154@l */
/* 80200E98  90 1F 00 00 */	stw r0, 0(r31)
/* 80200E9C  7C 80 07 35 */	extsh. r0, r4
/* 80200EA0  40 81 00 08 */	ble lbl_80200EA8
/* 80200EA4  48 0C DE 99 */	bl __dl__FPv
lbl_80200EA8:
/* 80200EA8  7F E3 FB 78 */	mr r3, r31
/* 80200EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80200EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80200EB4  7C 08 03 A6 */	mtlr r0
/* 80200EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80200EBC  4E 80 00 20 */	blr 
