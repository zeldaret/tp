lbl_80B4A314:
/* 80B4A314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A318  7C 08 02 A6 */	mflr r0
/* 80B4A31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4A324  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4A328  41 82 00 1C */	beq lbl_80B4A344
/* 80B4A32C  3C A0 80 B5 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80B4A330  38 05 D0 74 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80B4A334  90 1F 00 00 */	stw r0, 0(r31)
/* 80B4A338  7C 80 07 35 */	extsh. r0, r4
/* 80B4A33C  40 81 00 08 */	ble lbl_80B4A344
/* 80B4A340  4B 78 49 FC */	b __dl__FPv
lbl_80B4A344:
/* 80B4A344  7F E3 FB 78 */	mr r3, r31
/* 80B4A348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4A34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A350  7C 08 03 A6 */	mtlr r0
/* 80B4A354  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A358  4E 80 00 20 */	blr 
