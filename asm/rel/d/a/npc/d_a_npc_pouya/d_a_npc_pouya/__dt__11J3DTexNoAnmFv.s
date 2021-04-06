lbl_80AAE674:
/* 80AAE674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAE678  7C 08 02 A6 */	mflr r0
/* 80AAE67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAE680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAE684  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAE688  41 82 00 1C */	beq lbl_80AAE6A4
/* 80AAE68C  3C A0 80 AB */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80AB2B6C@ha */
/* 80AAE690  38 05 2B 6C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80AB2B6C@l */
/* 80AAE694  90 1F 00 00 */	stw r0, 0(r31)
/* 80AAE698  7C 80 07 35 */	extsh. r0, r4
/* 80AAE69C  40 81 00 08 */	ble lbl_80AAE6A4
/* 80AAE6A0  4B 82 06 9D */	bl __dl__FPv
lbl_80AAE6A4:
/* 80AAE6A4  7F E3 FB 78 */	mr r3, r31
/* 80AAE6A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAE6AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAE6B0  7C 08 03 A6 */	mtlr r0
/* 80AAE6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAE6B8  4E 80 00 20 */	blr 
