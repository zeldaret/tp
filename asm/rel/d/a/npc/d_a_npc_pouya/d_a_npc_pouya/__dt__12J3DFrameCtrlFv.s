lbl_80AB19A8:
/* 80AB19A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB19AC  7C 08 02 A6 */	mflr r0
/* 80AB19B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB19B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB19B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB19BC  41 82 00 1C */	beq lbl_80AB19D8
/* 80AB19C0  3C A0 80 AB */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AB2B78@ha */
/* 80AB19C4  38 05 2B 78 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AB2B78@l */
/* 80AB19C8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB19CC  7C 80 07 35 */	extsh. r0, r4
/* 80AB19D0  40 81 00 08 */	ble lbl_80AB19D8
/* 80AB19D4  4B 81 D3 69 */	bl __dl__FPv
lbl_80AB19D8:
/* 80AB19D8  7F E3 FB 78 */	mr r3, r31
/* 80AB19DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB19E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB19E4  7C 08 03 A6 */	mtlr r0
/* 80AB19E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB19EC  4E 80 00 20 */	blr 
