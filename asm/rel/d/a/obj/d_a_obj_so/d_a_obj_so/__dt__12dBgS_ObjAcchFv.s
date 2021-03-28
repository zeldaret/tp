lbl_80CE38B0:
/* 80CE38B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE38B4  7C 08 02 A6 */	mflr r0
/* 80CE38B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE38BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE38C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE38C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE38C8  7C 9F 23 78 */	mr r31, r4
/* 80CE38CC  41 82 00 38 */	beq lbl_80CE3904
/* 80CE38D0  3C 80 80 CE */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CE38D4  38 84 3C 24 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CE38D8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CE38DC  38 04 00 0C */	addi r0, r4, 0xc
/* 80CE38E0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CE38E4  38 04 00 18 */	addi r0, r4, 0x18
/* 80CE38E8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CE38EC  38 80 00 00 */	li r4, 0
/* 80CE38F0  4B 39 26 A4 */	b __dt__9dBgS_AcchFv
/* 80CE38F4  7F E0 07 35 */	extsh. r0, r31
/* 80CE38F8  40 81 00 0C */	ble lbl_80CE3904
/* 80CE38FC  7F C3 F3 78 */	mr r3, r30
/* 80CE3900  4B 5E B4 3C */	b __dl__FPv
lbl_80CE3904:
/* 80CE3904  7F C3 F3 78 */	mr r3, r30
/* 80CE3908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE390C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE3910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3914  7C 08 03 A6 */	mtlr r0
/* 80CE3918  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE391C  4E 80 00 20 */	blr 
