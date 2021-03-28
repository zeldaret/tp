lbl_8020EDF4:
/* 8020EDF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020EDF8  7C 08 02 A6 */	mflr r0
/* 8020EDFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020EE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020EE04  93 C1 00 08 */	stw r30, 8(r1)
/* 8020EE08  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020EE0C  7C 9F 23 78 */	mr r31, r4
/* 8020EE10  41 82 00 44 */	beq lbl_8020EE54
/* 8020EE14  3C 80 80 3C */	lis r4, __vt__14dMeterString_c@ha
/* 8020EE18  38 04 F3 08 */	addi r0, r4, __vt__14dMeterString_c@l
/* 8020EE1C  90 1E 00 00 */	stw r0, 0(r30)
/* 8020EE20  81 83 00 00 */	lwz r12, 0(r3)
/* 8020EE24  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8020EE28  7D 89 03 A6 */	mtctr r12
/* 8020EE2C  4E 80 04 21 */	bctrl 
/* 8020EE30  28 1E 00 00 */	cmplwi r30, 0
/* 8020EE34  41 82 00 10 */	beq lbl_8020EE44
/* 8020EE38  3C 60 80 3C */	lis r3, __vt__11dMeterSub_c@ha
/* 8020EE3C  38 03 B6 D4 */	addi r0, r3, __vt__11dMeterSub_c@l
/* 8020EE40  90 1E 00 00 */	stw r0, 0(r30)
lbl_8020EE44:
/* 8020EE44  7F E0 07 35 */	extsh. r0, r31
/* 8020EE48  40 81 00 0C */	ble lbl_8020EE54
/* 8020EE4C  7F C3 F3 78 */	mr r3, r30
/* 8020EE50  48 0B FE ED */	bl __dl__FPv
lbl_8020EE54:
/* 8020EE54  7F C3 F3 78 */	mr r3, r30
/* 8020EE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020EE5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020EE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020EE64  7C 08 03 A6 */	mtlr r0
/* 8020EE68  38 21 00 10 */	addi r1, r1, 0x10
/* 8020EE6C  4E 80 00 20 */	blr 
