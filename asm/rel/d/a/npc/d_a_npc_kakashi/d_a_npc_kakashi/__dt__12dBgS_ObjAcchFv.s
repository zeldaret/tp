lbl_8054E574:
/* 8054E574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E578  7C 08 02 A6 */	mflr r0
/* 8054E57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054E584  93 C1 00 08 */	stw r30, 8(r1)
/* 8054E588  7C 7E 1B 79 */	or. r30, r3, r3
/* 8054E58C  7C 9F 23 78 */	mr r31, r4
/* 8054E590  41 82 00 38 */	beq lbl_8054E5C8
/* 8054E594  3C 80 80 55 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8054E598  38 84 F0 44 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8054E59C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8054E5A0  38 04 00 0C */	addi r0, r4, 0xc
/* 8054E5A4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8054E5A8  38 04 00 18 */	addi r0, r4, 0x18
/* 8054E5AC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8054E5B0  38 80 00 00 */	li r4, 0
/* 8054E5B4  4B B2 79 E0 */	b __dt__9dBgS_AcchFv
/* 8054E5B8  7F E0 07 35 */	extsh. r0, r31
/* 8054E5BC  40 81 00 0C */	ble lbl_8054E5C8
/* 8054E5C0  7F C3 F3 78 */	mr r3, r30
/* 8054E5C4  4B D8 07 78 */	b __dl__FPv
lbl_8054E5C8:
/* 8054E5C8  7F C3 F3 78 */	mr r3, r30
/* 8054E5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054E5D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054E5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E5D8  7C 08 03 A6 */	mtlr r0
/* 8054E5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E5E0  4E 80 00 20 */	blr 
