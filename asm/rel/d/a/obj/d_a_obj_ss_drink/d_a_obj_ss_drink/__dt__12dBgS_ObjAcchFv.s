lbl_80CE68B4:
/* 80CE68B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE68B8  7C 08 02 A6 */	mflr r0
/* 80CE68BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE68C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE68C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE68C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE68CC  7C 9F 23 78 */	mr r31, r4
/* 80CE68D0  41 82 00 38 */	beq lbl_80CE6908
/* 80CE68D4  3C 80 80 CE */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CE6B10@ha */
/* 80CE68D8  38 84 6B 10 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CE6B10@l */
/* 80CE68DC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CE68E0  38 04 00 0C */	addi r0, r4, 0xc
/* 80CE68E4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CE68E8  38 04 00 18 */	addi r0, r4, 0x18
/* 80CE68EC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CE68F0  38 80 00 00 */	li r4, 0
/* 80CE68F4  4B 38 F6 A1 */	bl __dt__9dBgS_AcchFv
/* 80CE68F8  7F E0 07 35 */	extsh. r0, r31
/* 80CE68FC  40 81 00 0C */	ble lbl_80CE6908
/* 80CE6900  7F C3 F3 78 */	mr r3, r30
/* 80CE6904  4B 5E 84 39 */	bl __dl__FPv
lbl_80CE6908:
/* 80CE6908  7F C3 F3 78 */	mr r3, r30
/* 80CE690C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE6910  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE6914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6918  7C 08 03 A6 */	mtlr r0
/* 80CE691C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6920  4E 80 00 20 */	blr 
