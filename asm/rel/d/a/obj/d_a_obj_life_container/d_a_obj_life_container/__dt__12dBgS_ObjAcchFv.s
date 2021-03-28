lbl_804CD3B8:
/* 804CD3B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD3BC  7C 08 02 A6 */	mflr r0
/* 804CD3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD3C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD3C8  93 C1 00 08 */	stw r30, 8(r1)
/* 804CD3CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 804CD3D0  7C 9F 23 78 */	mr r31, r4
/* 804CD3D4  41 82 00 38 */	beq lbl_804CD40C
/* 804CD3D8  3C 80 80 4D */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 804CD3DC  38 84 E6 2C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 804CD3E0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804CD3E4  38 04 00 0C */	addi r0, r4, 0xc
/* 804CD3E8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804CD3EC  38 04 00 18 */	addi r0, r4, 0x18
/* 804CD3F0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804CD3F4  38 80 00 00 */	li r4, 0
/* 804CD3F8  4B BA 8B 9C */	b __dt__9dBgS_AcchFv
/* 804CD3FC  7F E0 07 35 */	extsh. r0, r31
/* 804CD400  40 81 00 0C */	ble lbl_804CD40C
/* 804CD404  7F C3 F3 78 */	mr r3, r30
/* 804CD408  4B E0 19 34 */	b __dl__FPv
lbl_804CD40C:
/* 804CD40C  7F C3 F3 78 */	mr r3, r30
/* 804CD410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD414  83 C1 00 08 */	lwz r30, 8(r1)
/* 804CD418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD41C  7C 08 03 A6 */	mtlr r0
/* 804CD420  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD424  4E 80 00 20 */	blr 
