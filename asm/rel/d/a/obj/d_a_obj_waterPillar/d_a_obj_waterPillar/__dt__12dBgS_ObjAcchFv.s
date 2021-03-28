lbl_80D2E378:
/* 80D2E378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E37C  7C 08 02 A6 */	mflr r0
/* 80D2E380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E388  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2E38C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D2E390  7C 9F 23 78 */	mr r31, r4
/* 80D2E394  41 82 00 38 */	beq lbl_80D2E3CC
/* 80D2E398  3C 80 80 D3 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80D2E39C  38 84 EA C8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80D2E3A0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D2E3A4  38 04 00 0C */	addi r0, r4, 0xc
/* 80D2E3A8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D2E3AC  38 04 00 18 */	addi r0, r4, 0x18
/* 80D2E3B0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D2E3B4  38 80 00 00 */	li r4, 0
/* 80D2E3B8  4B 34 7B DC */	b __dt__9dBgS_AcchFv
/* 80D2E3BC  7F E0 07 35 */	extsh. r0, r31
/* 80D2E3C0  40 81 00 0C */	ble lbl_80D2E3CC
/* 80D2E3C4  7F C3 F3 78 */	mr r3, r30
/* 80D2E3C8  4B 5A 09 74 */	b __dl__FPv
lbl_80D2E3CC:
/* 80D2E3CC  7F C3 F3 78 */	mr r3, r30
/* 80D2E3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E3D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2E3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E3DC  7C 08 03 A6 */	mtlr r0
/* 80D2E3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E3E4  4E 80 00 20 */	blr 
