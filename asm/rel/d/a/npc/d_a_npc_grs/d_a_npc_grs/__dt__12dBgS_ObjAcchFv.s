lbl_809E7BD0:
/* 809E7BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7BD4  7C 08 02 A6 */	mflr r0
/* 809E7BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7BE0  93 C1 00 08 */	stw r30, 8(r1)
/* 809E7BE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E7BE8  7C 9F 23 78 */	mr r31, r4
/* 809E7BEC  41 82 00 38 */	beq lbl_809E7C24
/* 809E7BF0  3C 80 80 9F */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 809E7BF4  38 84 81 AC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 809E7BF8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809E7BFC  38 04 00 0C */	addi r0, r4, 0xc
/* 809E7C00  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809E7C04  38 04 00 18 */	addi r0, r4, 0x18
/* 809E7C08  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809E7C0C  38 80 00 00 */	li r4, 0
/* 809E7C10  4B 68 E3 84 */	b __dt__9dBgS_AcchFv
/* 809E7C14  7F E0 07 35 */	extsh. r0, r31
/* 809E7C18  40 81 00 0C */	ble lbl_809E7C24
/* 809E7C1C  7F C3 F3 78 */	mr r3, r30
/* 809E7C20  4B 8E 71 1C */	b __dl__FPv
lbl_809E7C24:
/* 809E7C24  7F C3 F3 78 */	mr r3, r30
/* 809E7C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7C2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E7C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7C34  7C 08 03 A6 */	mtlr r0
/* 809E7C38  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7C3C  4E 80 00 20 */	blr 
