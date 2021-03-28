lbl_80B152C4:
/* 80B152C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B152C8  7C 08 02 A6 */	mflr r0
/* 80B152CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B152D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B152D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B152D8  41 82 00 1C */	beq lbl_80B152F4
/* 80B152DC  3C A0 80 B2 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80B152E0  38 05 E4 58 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80B152E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B152E8  7C 80 07 35 */	extsh. r0, r4
/* 80B152EC  40 81 00 08 */	ble lbl_80B152F4
/* 80B152F0  4B 7B 9A 4C */	b __dl__FPv
lbl_80B152F4:
/* 80B152F4  7F E3 FB 78 */	mr r3, r31
/* 80B152F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B152FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B15300  7C 08 03 A6 */	mtlr r0
/* 80B15304  38 21 00 10 */	addi r1, r1, 0x10
/* 80B15308  4E 80 00 20 */	blr 
