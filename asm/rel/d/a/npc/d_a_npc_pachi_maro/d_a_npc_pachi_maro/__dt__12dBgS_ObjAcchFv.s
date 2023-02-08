lbl_80A9B168:
/* 80A9B168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9B16C  7C 08 02 A6 */	mflr r0
/* 80A9B170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9B174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9B178  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9B17C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A9B180  7C 9F 23 78 */	mr r31, r4
/* 80A9B184  41 82 00 38 */	beq lbl_80A9B1BC
/* 80A9B188  3C 80 80 AA */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80A9C024@ha */
/* 80A9B18C  38 84 C0 24 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80A9C024@l */
/* 80A9B190  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A9B194  38 04 00 0C */	addi r0, r4, 0xc
/* 80A9B198  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A9B19C  38 04 00 18 */	addi r0, r4, 0x18
/* 80A9B1A0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A9B1A4  38 80 00 00 */	li r4, 0
/* 80A9B1A8  4B 5D AD ED */	bl __dt__9dBgS_AcchFv
/* 80A9B1AC  7F E0 07 35 */	extsh. r0, r31
/* 80A9B1B0  40 81 00 0C */	ble lbl_80A9B1BC
/* 80A9B1B4  7F C3 F3 78 */	mr r3, r30
/* 80A9B1B8  4B 83 3B 85 */	bl __dl__FPv
lbl_80A9B1BC:
/* 80A9B1BC  7F C3 F3 78 */	mr r3, r30
/* 80A9B1C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9B1C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9B1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9B1CC  7C 08 03 A6 */	mtlr r0
/* 80A9B1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9B1D4  4E 80 00 20 */	blr 
