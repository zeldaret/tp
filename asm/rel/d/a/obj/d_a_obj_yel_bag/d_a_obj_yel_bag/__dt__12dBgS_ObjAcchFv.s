lbl_80D3C398:
/* 80D3C398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C39C  7C 08 02 A6 */	mflr r0
/* 80D3C3A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C3A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3C3A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3C3AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3C3B0  7C 9F 23 78 */	mr r31, r4
/* 80D3C3B4  41 82 00 38 */	beq lbl_80D3C3EC
/* 80D3C3B8  3C 80 80 D4 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80D3DE98@ha */
/* 80D3C3BC  38 84 DE 98 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80D3DE98@l */
/* 80D3C3C0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D3C3C4  38 04 00 0C */	addi r0, r4, 0xc
/* 80D3C3C8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D3C3CC  38 04 00 18 */	addi r0, r4, 0x18
/* 80D3C3D0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D3C3D4  38 80 00 00 */	li r4, 0
/* 80D3C3D8  4B 33 9B BD */	bl __dt__9dBgS_AcchFv
/* 80D3C3DC  7F E0 07 35 */	extsh. r0, r31
/* 80D3C3E0  40 81 00 0C */	ble lbl_80D3C3EC
/* 80D3C3E4  7F C3 F3 78 */	mr r3, r30
/* 80D3C3E8  4B 59 29 55 */	bl __dl__FPv
lbl_80D3C3EC:
/* 80D3C3EC  7F C3 F3 78 */	mr r3, r30
/* 80D3C3F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3C3F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3C3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C3FC  7C 08 03 A6 */	mtlr r0
/* 80D3C400  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C404  4E 80 00 20 */	blr 
