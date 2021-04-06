lbl_809BB38C:
/* 809BB38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB390  7C 08 02 A6 */	mflr r0
/* 809BB394  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB39C  93 C1 00 08 */	stw r30, 8(r1)
/* 809BB3A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BB3A4  7C 9F 23 78 */	mr r31, r4
/* 809BB3A8  41 82 00 38 */	beq lbl_809BB3E0
/* 809BB3AC  3C 80 80 9C */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809BB4F0@ha */
/* 809BB3B0  38 84 B4 F0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809BB4F0@l */
/* 809BB3B4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809BB3B8  38 04 00 0C */	addi r0, r4, 0xc
/* 809BB3BC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809BB3C0  38 04 00 18 */	addi r0, r4, 0x18
/* 809BB3C4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809BB3C8  38 80 00 00 */	li r4, 0
/* 809BB3CC  4B 6B AB C9 */	bl __dt__9dBgS_AcchFv
/* 809BB3D0  7F E0 07 35 */	extsh. r0, r31
/* 809BB3D4  40 81 00 0C */	ble lbl_809BB3E0
/* 809BB3D8  7F C3 F3 78 */	mr r3, r30
/* 809BB3DC  4B 91 39 61 */	bl __dl__FPv
lbl_809BB3E0:
/* 809BB3E0  7F C3 F3 78 */	mr r3, r30
/* 809BB3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB3E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BB3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB3F0  7C 08 03 A6 */	mtlr r0
/* 809BB3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB3F8  4E 80 00 20 */	blr 
