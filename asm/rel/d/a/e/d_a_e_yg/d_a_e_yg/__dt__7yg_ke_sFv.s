lbl_807FBE70:
/* 807FBE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FBE74  7C 08 02 A6 */	mflr r0
/* 807FBE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FBE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FBE80  93 C1 00 08 */	stw r30, 8(r1)
/* 807FBE84  7C 7E 1B 79 */	or. r30, r3, r3
/* 807FBE88  7C 9F 23 78 */	mr r31, r4
/* 807FBE8C  41 82 00 44 */	beq lbl_807FBED0
/* 807FBE90  38 7E 00 78 */	addi r3, r30, 0x78
/* 807FBE94  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FBE98  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FBE9C  38 A0 00 0C */	li r5, 0xc
/* 807FBEA0  38 C0 00 0A */	li r6, 0xa
/* 807FBEA4  4B B6 5E 44 */	b __destroy_arr
/* 807FBEA8  7F C3 F3 78 */	mr r3, r30
/* 807FBEAC  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FBEB0  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FBEB4  38 A0 00 0C */	li r5, 0xc
/* 807FBEB8  38 C0 00 0A */	li r6, 0xa
/* 807FBEBC  4B B6 5E 2C */	b __destroy_arr
/* 807FBEC0  7F E0 07 35 */	extsh. r0, r31
/* 807FBEC4  40 81 00 0C */	ble lbl_807FBED0
/* 807FBEC8  7F C3 F3 78 */	mr r3, r30
/* 807FBECC  4B AD 2E 70 */	b __dl__FPv
lbl_807FBED0:
/* 807FBED0  7F C3 F3 78 */	mr r3, r30
/* 807FBED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FBED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807FBEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FBEE0  7C 08 03 A6 */	mtlr r0
/* 807FBEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 807FBEE8  4E 80 00 20 */	blr 
