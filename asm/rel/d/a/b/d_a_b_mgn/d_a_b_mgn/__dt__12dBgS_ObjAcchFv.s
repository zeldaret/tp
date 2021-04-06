lbl_8060F784:
/* 8060F784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F788  7C 08 02 A6 */	mflr r0
/* 8060F78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060F794  93 C1 00 08 */	stw r30, 8(r1)
/* 8060F798  7C 7E 1B 79 */	or. r30, r3, r3
/* 8060F79C  7C 9F 23 78 */	mr r31, r4
/* 8060F7A0  41 82 00 38 */	beq lbl_8060F7D8
/* 8060F7A4  3C 80 80 61 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x806103F0@ha */
/* 8060F7A8  38 84 03 F0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x806103F0@l */
/* 8060F7AC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8060F7B0  38 04 00 0C */	addi r0, r4, 0xc
/* 8060F7B4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8060F7B8  38 04 00 18 */	addi r0, r4, 0x18
/* 8060F7BC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8060F7C0  38 80 00 00 */	li r4, 0
/* 8060F7C4  4B A6 67 D1 */	bl __dt__9dBgS_AcchFv
/* 8060F7C8  7F E0 07 35 */	extsh. r0, r31
/* 8060F7CC  40 81 00 0C */	ble lbl_8060F7D8
/* 8060F7D0  7F C3 F3 78 */	mr r3, r30
/* 8060F7D4  4B CB F5 69 */	bl __dl__FPv
lbl_8060F7D8:
/* 8060F7D8  7F C3 F3 78 */	mr r3, r30
/* 8060F7DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060F7E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8060F7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F7E8  7C 08 03 A6 */	mtlr r0
/* 8060F7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F7F0  4E 80 00 20 */	blr 
