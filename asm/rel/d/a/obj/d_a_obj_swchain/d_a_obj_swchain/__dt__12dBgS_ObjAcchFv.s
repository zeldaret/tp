lbl_80CF8DD0:
/* 80CF8DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF8DD4  7C 08 02 A6 */	mflr r0
/* 80CF8DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF8DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF8DE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF8DE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF8DE8  7C 9F 23 78 */	mr r31, r4
/* 80CF8DEC  41 82 00 38 */	beq lbl_80CF8E24
/* 80CF8DF0  3C 80 80 D0 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CFB86C@ha */
/* 80CF8DF4  38 84 B8 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CFB86C@l */
/* 80CF8DF8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CF8DFC  38 04 00 0C */	addi r0, r4, 0xc
/* 80CF8E00  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CF8E04  38 04 00 18 */	addi r0, r4, 0x18
/* 80CF8E08  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CF8E0C  38 80 00 00 */	li r4, 0
/* 80CF8E10  4B 37 D1 85 */	bl __dt__9dBgS_AcchFv
/* 80CF8E14  7F E0 07 35 */	extsh. r0, r31
/* 80CF8E18  40 81 00 0C */	ble lbl_80CF8E24
/* 80CF8E1C  7F C3 F3 78 */	mr r3, r30
/* 80CF8E20  4B 5D 5F 1D */	bl __dl__FPv
lbl_80CF8E24:
/* 80CF8E24  7F C3 F3 78 */	mr r3, r30
/* 80CF8E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF8E2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF8E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF8E34  7C 08 03 A6 */	mtlr r0
/* 80CF8E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF8E3C  4E 80 00 20 */	blr 
