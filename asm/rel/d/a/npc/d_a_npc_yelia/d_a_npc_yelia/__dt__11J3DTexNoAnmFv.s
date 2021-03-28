lbl_80B4DB0C:
/* 80B4DB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4DB10  7C 08 02 A6 */	mflr r0
/* 80B4DB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4DB18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4DB1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4DB20  41 82 00 1C */	beq lbl_80B4DB3C
/* 80B4DB24  3C A0 80 B5 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80B4DB28  38 05 32 70 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80B4DB2C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B4DB30  7C 80 07 35 */	extsh. r0, r4
/* 80B4DB34  40 81 00 08 */	ble lbl_80B4DB3C
/* 80B4DB38  4B 78 12 04 */	b __dl__FPv
lbl_80B4DB3C:
/* 80B4DB3C  7F E3 FB 78 */	mr r3, r31
/* 80B4DB40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4DB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4DB48  7C 08 03 A6 */	mtlr r0
/* 80B4DB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4DB50  4E 80 00 20 */	blr 
