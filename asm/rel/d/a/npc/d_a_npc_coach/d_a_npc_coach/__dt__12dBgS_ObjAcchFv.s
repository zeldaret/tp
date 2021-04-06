lbl_809A4E00:
/* 809A4E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A4E04  7C 08 02 A6 */	mflr r0
/* 809A4E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A4E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A4E10  93 C1 00 08 */	stw r30, 8(r1)
/* 809A4E14  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A4E18  7C 9F 23 78 */	mr r31, r4
/* 809A4E1C  41 82 00 38 */	beq lbl_809A4E54
/* 809A4E20  3C 80 80 9A */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809A5238@ha */
/* 809A4E24  38 84 52 38 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809A5238@l */
/* 809A4E28  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809A4E2C  38 04 00 0C */	addi r0, r4, 0xc
/* 809A4E30  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809A4E34  38 04 00 18 */	addi r0, r4, 0x18
/* 809A4E38  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809A4E3C  38 80 00 00 */	li r4, 0
/* 809A4E40  4B 6D 11 55 */	bl __dt__9dBgS_AcchFv
/* 809A4E44  7F E0 07 35 */	extsh. r0, r31
/* 809A4E48  40 81 00 0C */	ble lbl_809A4E54
/* 809A4E4C  7F C3 F3 78 */	mr r3, r30
/* 809A4E50  4B 92 9E ED */	bl __dl__FPv
lbl_809A4E54:
/* 809A4E54  7F C3 F3 78 */	mr r3, r30
/* 809A4E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A4E5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A4E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A4E64  7C 08 03 A6 */	mtlr r0
/* 809A4E68  38 21 00 10 */	addi r1, r1, 0x10
/* 809A4E6C  4E 80 00 20 */	blr 
