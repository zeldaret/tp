lbl_80336594:
/* 80336594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80336598  7C 08 02 A6 */	mflr r0
/* 8033659C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803365A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803365A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803365A8  41 82 00 40 */	beq lbl_803365E8
/* 803365AC  3C 60 80 3D */	lis r3, data_803CF1BC@ha /* 0x803CF1BC@ha */
/* 803365B0  38 03 F1 BC */	addi r0, r3, data_803CF1BC@l /* 0x803CF1BC@l */
/* 803365B4  90 1F 00 00 */	stw r0, 0(r31)
/* 803365B8  41 82 00 20 */	beq lbl_803365D8
/* 803365BC  3C 60 80 3A */	lis r3, __vt__19J3DMtxCalcNoAnmBase@ha /* 0x803A338C@ha */
/* 803365C0  38 03 33 8C */	addi r0, r3, __vt__19J3DMtxCalcNoAnmBase@l /* 0x803A338C@l */
/* 803365C4  90 1F 00 00 */	stw r0, 0(r31)
/* 803365C8  41 82 00 10 */	beq lbl_803365D8
/* 803365CC  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha /* 0x803A3468@ha */
/* 803365D0  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l /* 0x803A3468@l */
/* 803365D4  90 1F 00 00 */	stw r0, 0(r31)
lbl_803365D8:
/* 803365D8  7C 80 07 35 */	extsh. r0, r4
/* 803365DC  40 81 00 0C */	ble lbl_803365E8
/* 803365E0  7F E3 FB 78 */	mr r3, r31
/* 803365E4  4B F9 87 59 */	bl __dl__FPv
lbl_803365E8:
/* 803365E8  7F E3 FB 78 */	mr r3, r31
/* 803365EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803365F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803365F4  7C 08 03 A6 */	mtlr r0
/* 803365F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803365FC  4E 80 00 20 */	blr 
