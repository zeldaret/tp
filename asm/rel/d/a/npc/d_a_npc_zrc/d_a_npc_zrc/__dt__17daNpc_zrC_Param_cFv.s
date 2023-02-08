lbl_80B93190:
/* 80B93190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93194  7C 08 02 A6 */	mflr r0
/* 80B93198  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9319C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B931A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B931A4  41 82 00 1C */	beq lbl_80B931C0
/* 80B931A8  3C A0 80 B9 */	lis r5, __vt__17daNpc_zrC_Param_c@ha /* 0x80B93BFC@ha */
/* 80B931AC  38 05 3B FC */	addi r0, r5, __vt__17daNpc_zrC_Param_c@l /* 0x80B93BFC@l */
/* 80B931B0  90 1F 00 00 */	stw r0, 0(r31)
/* 80B931B4  7C 80 07 35 */	extsh. r0, r4
/* 80B931B8  40 81 00 08 */	ble lbl_80B931C0
/* 80B931BC  4B 73 BB 81 */	bl __dl__FPv
lbl_80B931C0:
/* 80B931C0  7F E3 FB 78 */	mr r3, r31
/* 80B931C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B931C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B931CC  7C 08 03 A6 */	mtlr r0
/* 80B931D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B931D4  4E 80 00 20 */	blr 
