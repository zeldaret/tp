lbl_809B89FC:
/* 809B89FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B8A00  7C 08 02 A6 */	mflr r0
/* 809B8A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B8A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B8A0C  93 C1 00 08 */	stw r30, 8(r1)
/* 809B8A10  7C 7E 1B 79 */	or. r30, r3, r3
/* 809B8A14  7C 9F 23 78 */	mr r31, r4
/* 809B8A18  41 82 00 38 */	beq lbl_809B8A50
/* 809B8A1C  3C 80 80 9C */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809BA2B0@ha */
/* 809B8A20  38 84 A2 B0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809BA2B0@l */
/* 809B8A24  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809B8A28  38 04 00 0C */	addi r0, r4, 0xc
/* 809B8A2C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809B8A30  38 04 00 18 */	addi r0, r4, 0x18
/* 809B8A34  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809B8A38  38 80 00 00 */	li r4, 0
/* 809B8A3C  4B 6B D5 59 */	bl __dt__9dBgS_AcchFv
/* 809B8A40  7F E0 07 35 */	extsh. r0, r31
/* 809B8A44  40 81 00 0C */	ble lbl_809B8A50
/* 809B8A48  7F C3 F3 78 */	mr r3, r30
/* 809B8A4C  4B 91 62 F1 */	bl __dl__FPv
lbl_809B8A50:
/* 809B8A50  7F C3 F3 78 */	mr r3, r30
/* 809B8A54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B8A58  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B8A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B8A60  7C 08 03 A6 */	mtlr r0
/* 809B8A64  38 21 00 10 */	addi r1, r1, 0x10
/* 809B8A68  4E 80 00 20 */	blr 
