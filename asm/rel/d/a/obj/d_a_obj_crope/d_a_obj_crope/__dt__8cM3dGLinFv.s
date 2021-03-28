lbl_80BCE954:
/* 80BCE954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCE958  7C 08 02 A6 */	mflr r0
/* 80BCE95C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCE960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCE964  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCE968  41 82 00 1C */	beq lbl_80BCE984
/* 80BCE96C  3C A0 80 BD */	lis r5, __vt__8cM3dGLin@ha
/* 80BCE970  38 05 EB D0 */	addi r0, r5, __vt__8cM3dGLin@l
/* 80BCE974  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BCE978  7C 80 07 35 */	extsh. r0, r4
/* 80BCE97C  40 81 00 08 */	ble lbl_80BCE984
/* 80BCE980  4B 70 03 BC */	b __dl__FPv
lbl_80BCE984:
/* 80BCE984  7F E3 FB 78 */	mr r3, r31
/* 80BCE988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCE98C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCE990  7C 08 03 A6 */	mtlr r0
/* 80BCE994  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCE998  4E 80 00 20 */	blr 
