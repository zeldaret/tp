lbl_80B69648:
/* 80B69648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6964C  7C 08 02 A6 */	mflr r0
/* 80B69650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B69654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B69658  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6965C  41 82 00 1C */	beq lbl_80B69678
/* 80B69660  3C A0 80 B7 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80B69664  38 05 BF 30 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80B69668  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6966C  7C 80 07 35 */	extsh. r0, r4
/* 80B69670  40 81 00 08 */	ble lbl_80B69678
/* 80B69674  4B 76 56 C8 */	b __dl__FPv
lbl_80B69678:
/* 80B69678  7F E3 FB 78 */	mr r3, r31
/* 80B6967C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B69680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B69684  7C 08 03 A6 */	mtlr r0
/* 80B69688  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6968C  4E 80 00 20 */	blr 
