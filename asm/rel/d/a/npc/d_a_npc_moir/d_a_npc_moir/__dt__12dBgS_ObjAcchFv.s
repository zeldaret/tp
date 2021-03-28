lbl_80A82FE4:
/* 80A82FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82FE8  7C 08 02 A6 */	mflr r0
/* 80A82FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82FF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A82FF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A82FFC  7C 9F 23 78 */	mr r31, r4
/* 80A83000  41 82 00 38 */	beq lbl_80A83038
/* 80A83004  3C 80 80 A8 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A83008  38 84 3C E8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A8300C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A83010  38 04 00 0C */	addi r0, r4, 0xc
/* 80A83014  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A83018  38 04 00 18 */	addi r0, r4, 0x18
/* 80A8301C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A83020  38 80 00 00 */	li r4, 0
/* 80A83024  4B 5F 2F 70 */	b __dt__9dBgS_AcchFv
/* 80A83028  7F E0 07 35 */	extsh. r0, r31
/* 80A8302C  40 81 00 0C */	ble lbl_80A83038
/* 80A83030  7F C3 F3 78 */	mr r3, r30
/* 80A83034  4B 84 BD 08 */	b __dl__FPv
lbl_80A83038:
/* 80A83038  7F C3 F3 78 */	mr r3, r30
/* 80A8303C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A83040  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A83044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A83048  7C 08 03 A6 */	mtlr r0
/* 80A8304C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A83050  4E 80 00 20 */	blr 
