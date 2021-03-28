lbl_8070879C:
/* 8070879C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807087A0  7C 08 02 A6 */	mflr r0
/* 807087A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807087A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807087AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807087B0  41 82 00 1C */	beq lbl_807087CC
/* 807087B4  3C A0 80 71 */	lis r5, __vt__8cM3dGSph@ha
/* 807087B8  38 05 8B A0 */	addi r0, r5, __vt__8cM3dGSph@l
/* 807087BC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807087C0  7C 80 07 35 */	extsh. r0, r4
/* 807087C4  40 81 00 08 */	ble lbl_807087CC
/* 807087C8  4B BC 65 74 */	b __dl__FPv
lbl_807087CC:
/* 807087CC  7F E3 FB 78 */	mr r3, r31
/* 807087D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807087D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807087D8  7C 08 03 A6 */	mtlr r0
/* 807087DC  38 21 00 10 */	addi r1, r1, 0x10
/* 807087E0  4E 80 00 20 */	blr 
