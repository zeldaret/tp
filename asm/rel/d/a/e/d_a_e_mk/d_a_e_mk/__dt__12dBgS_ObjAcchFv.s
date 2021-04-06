lbl_8071C37C:
/* 8071C37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071C380  7C 08 02 A6 */	mflr r0
/* 8071C384  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071C388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071C38C  93 C1 00 08 */	stw r30, 8(r1)
/* 8071C390  7C 7E 1B 79 */	or. r30, r3, r3
/* 8071C394  7C 9F 23 78 */	mr r31, r4
/* 8071C398  41 82 00 38 */	beq lbl_8071C3D0
/* 8071C39C  3C 80 80 72 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8071CA20@ha */
/* 8071C3A0  38 84 CA 20 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8071CA20@l */
/* 8071C3A4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8071C3A8  38 04 00 0C */	addi r0, r4, 0xc
/* 8071C3AC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8071C3B0  38 04 00 18 */	addi r0, r4, 0x18
/* 8071C3B4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8071C3B8  38 80 00 00 */	li r4, 0
/* 8071C3BC  4B 95 9B D9 */	bl __dt__9dBgS_AcchFv
/* 8071C3C0  7F E0 07 35 */	extsh. r0, r31
/* 8071C3C4  40 81 00 0C */	ble lbl_8071C3D0
/* 8071C3C8  7F C3 F3 78 */	mr r3, r30
/* 8071C3CC  4B BB 29 71 */	bl __dl__FPv
lbl_8071C3D0:
/* 8071C3D0  7F C3 F3 78 */	mr r3, r30
/* 8071C3D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071C3D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8071C3DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071C3E0  7C 08 03 A6 */	mtlr r0
/* 8071C3E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8071C3E8  4E 80 00 20 */	blr 
