lbl_807B7DEC:
/* 807B7DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B7DF0  7C 08 02 A6 */	mflr r0
/* 807B7DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B7DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B7DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 807B7E00  7C 7E 1B 79 */	or. r30, r3, r3
/* 807B7E04  7C 9F 23 78 */	mr r31, r4
/* 807B7E08  41 82 00 38 */	beq lbl_807B7E40
/* 807B7E0C  3C 80 80 7C */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x807B80B8@ha */
/* 807B7E10  38 84 80 B8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x807B80B8@l */
/* 807B7E14  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807B7E18  38 04 00 0C */	addi r0, r4, 0xc
/* 807B7E1C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807B7E20  38 04 00 18 */	addi r0, r4, 0x18
/* 807B7E24  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807B7E28  38 80 00 00 */	li r4, 0
/* 807B7E2C  4B 8B E1 69 */	bl __dt__9dBgS_AcchFv
/* 807B7E30  7F E0 07 35 */	extsh. r0, r31
/* 807B7E34  40 81 00 0C */	ble lbl_807B7E40
/* 807B7E38  7F C3 F3 78 */	mr r3, r30
/* 807B7E3C  4B B1 6F 01 */	bl __dl__FPv
lbl_807B7E40:
/* 807B7E40  7F C3 F3 78 */	mr r3, r30
/* 807B7E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B7E48  83 C1 00 08 */	lwz r30, 8(r1)
/* 807B7E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B7E50  7C 08 03 A6 */	mtlr r0
/* 807B7E54  38 21 00 10 */	addi r1, r1, 0x10
/* 807B7E58  4E 80 00 20 */	blr 
