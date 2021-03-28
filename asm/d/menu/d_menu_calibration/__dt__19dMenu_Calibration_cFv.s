lbl_801AED64:
/* 801AED64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AED68  7C 08 02 A6 */	mflr r0
/* 801AED6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AED70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AED74  7C 7F 1B 79 */	or. r31, r3, r3
/* 801AED78  41 82 00 1C */	beq lbl_801AED94
/* 801AED7C  3C A0 80 3C */	lis r5, __vt__19dMenu_Calibration_c@ha
/* 801AED80  38 05 C3 64 */	addi r0, r5, __vt__19dMenu_Calibration_c@l
/* 801AED84  90 1F 00 00 */	stw r0, 0(r31)
/* 801AED88  7C 80 07 35 */	extsh. r0, r4
/* 801AED8C  40 81 00 08 */	ble lbl_801AED94
/* 801AED90  48 11 FF AD */	bl __dl__FPv
lbl_801AED94:
/* 801AED94  7F E3 FB 78 */	mr r3, r31
/* 801AED98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AED9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AEDA0  7C 08 03 A6 */	mtlr r0
/* 801AEDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801AEDA8  4E 80 00 20 */	blr 
