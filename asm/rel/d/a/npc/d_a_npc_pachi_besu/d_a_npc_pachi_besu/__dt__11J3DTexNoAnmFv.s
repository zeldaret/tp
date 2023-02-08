lbl_80A934F4:
/* 80A934F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A934F8  7C 08 02 A6 */	mflr r0
/* 80A934FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A93500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A93504  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A93508  41 82 00 1C */	beq lbl_80A93524
/* 80A9350C  3C A0 80 A9 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80A97950@ha */
/* 80A93510  38 05 79 50 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80A97950@l */
/* 80A93514  90 1F 00 00 */	stw r0, 0(r31)
/* 80A93518  7C 80 07 35 */	extsh. r0, r4
/* 80A9351C  40 81 00 08 */	ble lbl_80A93524
/* 80A93520  4B 83 B8 1D */	bl __dl__FPv
lbl_80A93524:
/* 80A93524  7F E3 FB 78 */	mr r3, r31
/* 80A93528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9352C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A93530  7C 08 03 A6 */	mtlr r0
/* 80A93534  38 21 00 10 */	addi r1, r1, 0x10
/* 80A93538  4E 80 00 20 */	blr 
