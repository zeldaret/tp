lbl_80BE2A00:
/* 80BE2A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE2A04  7C 08 02 A6 */	mflr r0
/* 80BE2A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE2A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE2A10  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE2A14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BE2A18  7C 9F 23 78 */	mr r31, r4
/* 80BE2A1C  41 82 00 38 */	beq lbl_80BE2A54
/* 80BE2A20  3C 80 80 BE */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80BE30A8@ha */
/* 80BE2A24  38 84 30 A8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80BE30A8@l */
/* 80BE2A28  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BE2A2C  38 04 00 0C */	addi r0, r4, 0xc
/* 80BE2A30  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BE2A34  38 04 00 18 */	addi r0, r4, 0x18
/* 80BE2A38  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BE2A3C  38 80 00 00 */	li r4, 0
/* 80BE2A40  4B 49 35 55 */	bl __dt__9dBgS_AcchFv
/* 80BE2A44  7F E0 07 35 */	extsh. r0, r31
/* 80BE2A48  40 81 00 0C */	ble lbl_80BE2A54
/* 80BE2A4C  7F C3 F3 78 */	mr r3, r30
/* 80BE2A50  4B 6E C2 ED */	bl __dl__FPv
lbl_80BE2A54:
/* 80BE2A54  7F C3 F3 78 */	mr r3, r30
/* 80BE2A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE2A5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE2A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE2A64  7C 08 03 A6 */	mtlr r0
/* 80BE2A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE2A6C  4E 80 00 20 */	blr 
