lbl_80BCFF4C:
/* 80BCFF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCFF50  7C 08 02 A6 */	mflr r0
/* 80BCFF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCFF58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCFF5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCFF60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BCFF64  7C 9F 23 78 */	mr r31, r4
/* 80BCFF68  41 82 00 38 */	beq lbl_80BCFFA0
/* 80BCFF6C  3C 80 80 BD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BCFF70  38 84 02 CC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BCFF74  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BCFF78  38 04 00 0C */	addi r0, r4, 0xc
/* 80BCFF7C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BCFF80  38 04 00 18 */	addi r0, r4, 0x18
/* 80BCFF84  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BCFF88  38 80 00 00 */	li r4, 0
/* 80BCFF8C  4B 4A 60 08 */	b __dt__9dBgS_AcchFv
/* 80BCFF90  7F E0 07 35 */	extsh. r0, r31
/* 80BCFF94  40 81 00 0C */	ble lbl_80BCFFA0
/* 80BCFF98  7F C3 F3 78 */	mr r3, r30
/* 80BCFF9C  4B 6F ED A0 */	b __dl__FPv
lbl_80BCFFA0:
/* 80BCFFA0  7F C3 F3 78 */	mr r3, r30
/* 80BCFFA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCFFA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCFFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCFFB0  7C 08 03 A6 */	mtlr r0
/* 80BCFFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCFFB8  4E 80 00 20 */	blr 
