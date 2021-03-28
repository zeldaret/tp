lbl_80B70D14:
/* 80B70D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70D18  7C 08 02 A6 */	mflr r0
/* 80B70D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B70D24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B70D28  41 82 00 1C */	beq lbl_80B70D44
/* 80B70D2C  3C A0 80 B7 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80B70D30  38 05 1D C8 */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80B70D34  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B70D38  7C 80 07 35 */	extsh. r0, r4
/* 80B70D3C  40 81 00 08 */	ble lbl_80B70D44
/* 80B70D40  4B 75 DF FC */	b __dl__FPv
lbl_80B70D44:
/* 80B70D44  7F E3 FB 78 */	mr r3, r31
/* 80B70D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B70D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70D50  7C 08 03 A6 */	mtlr r0
/* 80B70D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70D58  4E 80 00 20 */	blr 
