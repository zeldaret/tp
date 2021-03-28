lbl_80D0FC20:
/* 80D0FC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0FC24  7C 08 02 A6 */	mflr r0
/* 80D0FC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0FC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0FC30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0FC34  41 82 00 1C */	beq lbl_80D0FC50
/* 80D0FC38  3C A0 80 D1 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80D0FC3C  38 05 2A 0C */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80D0FC40  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0FC44  7C 80 07 35 */	extsh. r0, r4
/* 80D0FC48  40 81 00 08 */	ble lbl_80D0FC50
/* 80D0FC4C  4B 5B F0 F0 */	b __dl__FPv
lbl_80D0FC50:
/* 80D0FC50  7F E3 FB 78 */	mr r3, r31
/* 80D0FC54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0FC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0FC5C  7C 08 03 A6 */	mtlr r0
/* 80D0FC60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0FC64  4E 80 00 20 */	blr 
