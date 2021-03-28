lbl_80B70D5C:
/* 80B70D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70D60  7C 08 02 A6 */	mflr r0
/* 80B70D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B70D6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B70D70  41 82 00 1C */	beq lbl_80B70D8C
/* 80B70D74  3C A0 80 B7 */	lis r5, __vt__8cM3dGCyl@ha
/* 80B70D78  38 05 1D BC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80B70D7C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B70D80  7C 80 07 35 */	extsh. r0, r4
/* 80B70D84  40 81 00 08 */	ble lbl_80B70D8C
/* 80B70D88  4B 75 DF B4 */	b __dl__FPv
lbl_80B70D8C:
/* 80B70D8C  7F E3 FB 78 */	mr r3, r31
/* 80B70D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B70D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70D98  7C 08 03 A6 */	mtlr r0
/* 80B70D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70DA0  4E 80 00 20 */	blr 
