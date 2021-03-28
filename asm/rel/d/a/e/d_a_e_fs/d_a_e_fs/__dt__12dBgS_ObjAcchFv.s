lbl_806BDE6C:
/* 806BDE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDE70  7C 08 02 A6 */	mflr r0
/* 806BDE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDE78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BDE7C  93 C1 00 08 */	stw r30, 8(r1)
/* 806BDE80  7C 7E 1B 79 */	or. r30, r3, r3
/* 806BDE84  7C 9F 23 78 */	mr r31, r4
/* 806BDE88  41 82 00 38 */	beq lbl_806BDEC0
/* 806BDE8C  3C 80 80 6C */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806BDE90  38 84 E7 24 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806BDE94  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806BDE98  38 04 00 0C */	addi r0, r4, 0xc
/* 806BDE9C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806BDEA0  38 04 00 18 */	addi r0, r4, 0x18
/* 806BDEA4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806BDEA8  38 80 00 00 */	li r4, 0
/* 806BDEAC  4B 9B 80 E8 */	b __dt__9dBgS_AcchFv
/* 806BDEB0  7F E0 07 35 */	extsh. r0, r31
/* 806BDEB4  40 81 00 0C */	ble lbl_806BDEC0
/* 806BDEB8  7F C3 F3 78 */	mr r3, r30
/* 806BDEBC  4B C1 0E 80 */	b __dl__FPv
lbl_806BDEC0:
/* 806BDEC0  7F C3 F3 78 */	mr r3, r30
/* 806BDEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BDEC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806BDECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BDED0  7C 08 03 A6 */	mtlr r0
/* 806BDED4  38 21 00 10 */	addi r1, r1, 0x10
/* 806BDED8  4E 80 00 20 */	blr 
