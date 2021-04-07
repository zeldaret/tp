lbl_80BFF794:
/* 80BFF794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF798  7C 08 02 A6 */	mflr r0
/* 80BFF79C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF7A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFF7A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFF7A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BFF7AC  7C 9F 23 78 */	mr r31, r4
/* 80BFF7B0  41 82 00 38 */	beq lbl_80BFF7E8
/* 80BFF7B4  3C 80 80 C0 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80BFFD90@ha */
/* 80BFF7B8  38 84 FD 90 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80BFFD90@l */
/* 80BFF7BC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BFF7C0  38 04 00 0C */	addi r0, r4, 0xc
/* 80BFF7C4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BFF7C8  38 04 00 18 */	addi r0, r4, 0x18
/* 80BFF7CC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BFF7D0  38 80 00 00 */	li r4, 0
/* 80BFF7D4  4B 47 67 C1 */	bl __dt__9dBgS_AcchFv
/* 80BFF7D8  7F E0 07 35 */	extsh. r0, r31
/* 80BFF7DC  40 81 00 0C */	ble lbl_80BFF7E8
/* 80BFF7E0  7F C3 F3 78 */	mr r3, r30
/* 80BFF7E4  4B 6C F5 59 */	bl __dl__FPv
lbl_80BFF7E8:
/* 80BFF7E8  7F C3 F3 78 */	mr r3, r30
/* 80BFF7EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFF7F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFF7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF7F8  7C 08 03 A6 */	mtlr r0
/* 80BFF7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF800  4E 80 00 20 */	blr 
