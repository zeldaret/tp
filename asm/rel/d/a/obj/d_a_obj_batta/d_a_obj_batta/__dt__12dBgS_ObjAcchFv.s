lbl_80BAC78C:
/* 80BAC78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC790  7C 08 02 A6 */	mflr r0
/* 80BAC794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAC79C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BAC7A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BAC7A4  7C 9F 23 78 */	mr r31, r4
/* 80BAC7A8  41 82 00 38 */	beq lbl_80BAC7E0
/* 80BAC7AC  3C 80 80 BB */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BAC7B0  38 84 CC 34 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BAC7B4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BAC7B8  38 04 00 0C */	addi r0, r4, 0xc
/* 80BAC7BC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BAC7C0  38 04 00 18 */	addi r0, r4, 0x18
/* 80BAC7C4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BAC7C8  38 80 00 00 */	li r4, 0
/* 80BAC7CC  4B 4C 97 C8 */	b __dt__9dBgS_AcchFv
/* 80BAC7D0  7F E0 07 35 */	extsh. r0, r31
/* 80BAC7D4  40 81 00 0C */	ble lbl_80BAC7E0
/* 80BAC7D8  7F C3 F3 78 */	mr r3, r30
/* 80BAC7DC  4B 72 25 60 */	b __dl__FPv
lbl_80BAC7E0:
/* 80BAC7E0  7F C3 F3 78 */	mr r3, r30
/* 80BAC7E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAC7E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BAC7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC7F0  7C 08 03 A6 */	mtlr r0
/* 80BAC7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC7F8  4E 80 00 20 */	blr 
