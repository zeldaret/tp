lbl_809AD7AC:
/* 809AD7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD7B0  7C 08 02 A6 */	mflr r0
/* 809AD7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD7B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD7BC  93 C1 00 08 */	stw r30, 8(r1)
/* 809AD7C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809AD7C4  7C 9F 23 78 */	mr r31, r4
/* 809AD7C8  41 82 00 38 */	beq lbl_809AD800
/* 809AD7CC  3C 80 80 9B */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 809AD7D0  38 84 DC C8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 809AD7D4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809AD7D8  38 04 00 0C */	addi r0, r4, 0xc
/* 809AD7DC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809AD7E0  38 04 00 18 */	addi r0, r4, 0x18
/* 809AD7E4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809AD7E8  38 80 00 00 */	li r4, 0
/* 809AD7EC  4B 6C 87 A8 */	b __dt__9dBgS_AcchFv
/* 809AD7F0  7F E0 07 35 */	extsh. r0, r31
/* 809AD7F4  40 81 00 0C */	ble lbl_809AD800
/* 809AD7F8  7F C3 F3 78 */	mr r3, r30
/* 809AD7FC  4B 92 15 40 */	b __dl__FPv
lbl_809AD800:
/* 809AD800  7F C3 F3 78 */	mr r3, r30
/* 809AD804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD808  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AD80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD810  7C 08 03 A6 */	mtlr r0
/* 809AD814  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD818  4E 80 00 20 */	blr 
