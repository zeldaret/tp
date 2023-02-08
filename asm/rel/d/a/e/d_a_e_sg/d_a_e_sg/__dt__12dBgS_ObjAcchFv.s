lbl_8078DC14:
/* 8078DC14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078DC18  7C 08 02 A6 */	mflr r0
/* 8078DC1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078DC20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078DC24  93 C1 00 08 */	stw r30, 8(r1)
/* 8078DC28  7C 7E 1B 79 */	or. r30, r3, r3
/* 8078DC2C  7C 9F 23 78 */	mr r31, r4
/* 8078DC30  41 82 00 38 */	beq lbl_8078DC68
/* 8078DC34  3C 80 80 79 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8078E064@ha */
/* 8078DC38  38 84 E0 64 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8078E064@l */
/* 8078DC3C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8078DC40  38 04 00 0C */	addi r0, r4, 0xc
/* 8078DC44  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8078DC48  38 04 00 18 */	addi r0, r4, 0x18
/* 8078DC4C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8078DC50  38 80 00 00 */	li r4, 0
/* 8078DC54  4B 8E 83 41 */	bl __dt__9dBgS_AcchFv
/* 8078DC58  7F E0 07 35 */	extsh. r0, r31
/* 8078DC5C  40 81 00 0C */	ble lbl_8078DC68
/* 8078DC60  7F C3 F3 78 */	mr r3, r30
/* 8078DC64  4B B4 10 D9 */	bl __dl__FPv
lbl_8078DC68:
/* 8078DC68  7F C3 F3 78 */	mr r3, r30
/* 8078DC6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078DC70  83 C1 00 08 */	lwz r30, 8(r1)
/* 8078DC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078DC78  7C 08 03 A6 */	mtlr r0
/* 8078DC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8078DC80  4E 80 00 20 */	blr 
