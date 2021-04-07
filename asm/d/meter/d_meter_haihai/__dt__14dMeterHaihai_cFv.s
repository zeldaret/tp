lbl_8020AEF0:
/* 8020AEF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020AEF4  7C 08 02 A6 */	mflr r0
/* 8020AEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020AEFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020AF00  93 C1 00 08 */	stw r30, 8(r1)
/* 8020AF04  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020AF08  7C 9F 23 78 */	mr r31, r4
/* 8020AF0C  41 82 00 44 */	beq lbl_8020AF50
/* 8020AF10  3C 80 80 3C */	lis r4, __vt__14dMeterHaihai_c@ha /* 0x803BF268@ha */
/* 8020AF14  38 04 F2 68 */	addi r0, r4, __vt__14dMeterHaihai_c@l /* 0x803BF268@l */
/* 8020AF18  90 1E 00 00 */	stw r0, 0(r30)
/* 8020AF1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020AF20  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8020AF24  7D 89 03 A6 */	mtctr r12
/* 8020AF28  4E 80 04 21 */	bctrl 
/* 8020AF2C  28 1E 00 00 */	cmplwi r30, 0
/* 8020AF30  41 82 00 10 */	beq lbl_8020AF40
/* 8020AF34  3C 60 80 3C */	lis r3, __vt__11dMeterSub_c@ha /* 0x803BB6D4@ha */
/* 8020AF38  38 03 B6 D4 */	addi r0, r3, __vt__11dMeterSub_c@l /* 0x803BB6D4@l */
/* 8020AF3C  90 1E 00 00 */	stw r0, 0(r30)
lbl_8020AF40:
/* 8020AF40  7F E0 07 35 */	extsh. r0, r31
/* 8020AF44  40 81 00 0C */	ble lbl_8020AF50
/* 8020AF48  7F C3 F3 78 */	mr r3, r30
/* 8020AF4C  48 0C 3D F1 */	bl __dl__FPv
lbl_8020AF50:
/* 8020AF50  7F C3 F3 78 */	mr r3, r30
/* 8020AF54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020AF58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020AF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020AF60  7C 08 03 A6 */	mtlr r0
/* 8020AF64  38 21 00 10 */	addi r1, r1, 0x10
/* 8020AF68  4E 80 00 20 */	blr 
