lbl_80A732B8:
/* 80A732B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A732BC  7C 08 02 A6 */	mflr r0
/* 80A732C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A732C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A732C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A732CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A732D0  7C 9F 23 78 */	mr r31, r4
/* 80A732D4  41 82 00 38 */	beq lbl_80A7330C
/* 80A732D8  3C 80 80 A7 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A732DC  38 84 3B F4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A732E0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A732E4  38 04 00 0C */	addi r0, r4, 0xc
/* 80A732E8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A732EC  38 04 00 18 */	addi r0, r4, 0x18
/* 80A732F0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A732F4  38 80 00 00 */	li r4, 0
/* 80A732F8  4B 60 2C 9C */	b __dt__9dBgS_AcchFv
/* 80A732FC  7F E0 07 35 */	extsh. r0, r31
/* 80A73300  40 81 00 0C */	ble lbl_80A7330C
/* 80A73304  7F C3 F3 78 */	mr r3, r30
/* 80A73308  4B 85 BA 34 */	b __dl__FPv
lbl_80A7330C:
/* 80A7330C  7F C3 F3 78 */	mr r3, r30
/* 80A73310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A73314  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A73318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7331C  7C 08 03 A6 */	mtlr r0
/* 80A73320  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73324  4E 80 00 20 */	blr 
