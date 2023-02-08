lbl_809FF9D0:
/* 809FF9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF9D4  7C 08 02 A6 */	mflr r0
/* 809FF9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF9DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF9E0  93 C1 00 08 */	stw r30, 8(r1)
/* 809FF9E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809FF9E8  7C 9F 23 78 */	mr r31, r4
/* 809FF9EC  41 82 00 38 */	beq lbl_809FFA24
/* 809FF9F0  3C 80 80 A0 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80A0111C@ha */
/* 809FF9F4  38 84 11 1C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80A0111C@l */
/* 809FF9F8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809FF9FC  38 04 00 0C */	addi r0, r4, 0xc
/* 809FFA00  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809FFA04  38 04 00 18 */	addi r0, r4, 0x18
/* 809FFA08  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809FFA0C  38 80 00 00 */	li r4, 0
/* 809FFA10  4B 67 65 85 */	bl __dt__9dBgS_AcchFv
/* 809FFA14  7F E0 07 35 */	extsh. r0, r31
/* 809FFA18  40 81 00 0C */	ble lbl_809FFA24
/* 809FFA1C  7F C3 F3 78 */	mr r3, r30
/* 809FFA20  4B 8C F3 1D */	bl __dl__FPv
lbl_809FFA24:
/* 809FFA24  7F C3 F3 78 */	mr r3, r30
/* 809FFA28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FFA2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FFA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FFA34  7C 08 03 A6 */	mtlr r0
/* 809FFA38  38 21 00 10 */	addi r1, r1, 0x10
/* 809FFA3C  4E 80 00 20 */	blr 
