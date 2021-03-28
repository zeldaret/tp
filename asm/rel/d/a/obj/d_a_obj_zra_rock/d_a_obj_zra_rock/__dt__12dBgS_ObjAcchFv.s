lbl_80D45264:
/* 80D45264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D45268  7C 08 02 A6 */	mflr r0
/* 80D4526C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D45270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D45274  93 C1 00 08 */	stw r30, 8(r1)
/* 80D45278  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4527C  7C 9F 23 78 */	mr r31, r4
/* 80D45280  41 82 00 38 */	beq lbl_80D452B8
/* 80D45284  3C 80 80 D4 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80D45288  38 84 56 44 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80D4528C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D45290  38 04 00 0C */	addi r0, r4, 0xc
/* 80D45294  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D45298  38 04 00 18 */	addi r0, r4, 0x18
/* 80D4529C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D452A0  38 80 00 00 */	li r4, 0
/* 80D452A4  4B 33 0C F0 */	b __dt__9dBgS_AcchFv
/* 80D452A8  7F E0 07 35 */	extsh. r0, r31
/* 80D452AC  40 81 00 0C */	ble lbl_80D452B8
/* 80D452B0  7F C3 F3 78 */	mr r3, r30
/* 80D452B4  4B 58 9A 88 */	b __dl__FPv
lbl_80D452B8:
/* 80D452B8  7F C3 F3 78 */	mr r3, r30
/* 80D452BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D452C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D452C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D452C8  7C 08 03 A6 */	mtlr r0
/* 80D452CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D452D0  4E 80 00 20 */	blr 
