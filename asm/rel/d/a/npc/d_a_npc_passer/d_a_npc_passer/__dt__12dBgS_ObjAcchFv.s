lbl_80AA6910:
/* 80AA6910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA6914  7C 08 02 A6 */	mflr r0
/* 80AA6918  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA691C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA6920  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA6924  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA6928  7C 9F 23 78 */	mr r31, r4
/* 80AA692C  41 82 00 38 */	beq lbl_80AA6964
/* 80AA6930  3C 80 80 AA */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AA6934  38 84 73 CC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AA6938  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AA693C  38 04 00 0C */	addi r0, r4, 0xc
/* 80AA6940  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AA6944  38 04 00 18 */	addi r0, r4, 0x18
/* 80AA6948  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AA694C  38 80 00 00 */	li r4, 0
/* 80AA6950  4B 5C F6 44 */	b __dt__9dBgS_AcchFv
/* 80AA6954  7F E0 07 35 */	extsh. r0, r31
/* 80AA6958  40 81 00 0C */	ble lbl_80AA6964
/* 80AA695C  7F C3 F3 78 */	mr r3, r30
/* 80AA6960  4B 82 83 DC */	b __dl__FPv
lbl_80AA6964:
/* 80AA6964  7F C3 F3 78 */	mr r3, r30
/* 80AA6968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA696C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA6970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA6974  7C 08 03 A6 */	mtlr r0
/* 80AA6978  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA697C  4E 80 00 20 */	blr 
