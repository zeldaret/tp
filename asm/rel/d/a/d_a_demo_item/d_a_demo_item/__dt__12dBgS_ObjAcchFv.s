lbl_804E164C:
/* 804E164C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1650  7C 08 02 A6 */	mflr r0
/* 804E1654  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E165C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E1660  7C 7E 1B 79 */	or. r30, r3, r3
/* 804E1664  7C 9F 23 78 */	mr r31, r4
/* 804E1668  41 82 00 38 */	beq lbl_804E16A0
/* 804E166C  3C 80 80 4E */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 804E1670  38 84 1B 78 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 804E1674  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804E1678  38 04 00 0C */	addi r0, r4, 0xc
/* 804E167C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804E1680  38 04 00 18 */	addi r0, r4, 0x18
/* 804E1684  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804E1688  38 80 00 00 */	li r4, 0
/* 804E168C  4B B9 49 08 */	b __dt__9dBgS_AcchFv
/* 804E1690  7F E0 07 35 */	extsh. r0, r31
/* 804E1694  40 81 00 0C */	ble lbl_804E16A0
/* 804E1698  7F C3 F3 78 */	mr r3, r30
/* 804E169C  4B DE D6 A0 */	b __dl__FPv
lbl_804E16A0:
/* 804E16A0  7F C3 F3 78 */	mr r3, r30
/* 804E16A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E16A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E16AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E16B0  7C 08 03 A6 */	mtlr r0
/* 804E16B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E16B8  4E 80 00 20 */	blr 
