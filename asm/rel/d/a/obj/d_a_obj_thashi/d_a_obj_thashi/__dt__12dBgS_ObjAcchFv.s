lbl_80D0CDF0:
/* 80D0CDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0CDF4  7C 08 02 A6 */	mflr r0
/* 80D0CDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0CDFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0CE00  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0CE04  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D0CE08  7C 9F 23 78 */	mr r31, r4
/* 80D0CE0C  41 82 00 38 */	beq lbl_80D0CE44
/* 80D0CE10  3C 80 80 D1 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80D0D3D0@ha */
/* 80D0CE14  38 84 D3 D0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80D0D3D0@l */
/* 80D0CE18  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D0CE1C  38 04 00 0C */	addi r0, r4, 0xc
/* 80D0CE20  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D0CE24  38 04 00 18 */	addi r0, r4, 0x18
/* 80D0CE28  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D0CE2C  38 80 00 00 */	li r4, 0
/* 80D0CE30  4B 36 91 65 */	bl __dt__9dBgS_AcchFv
/* 80D0CE34  7F E0 07 35 */	extsh. r0, r31
/* 80D0CE38  40 81 00 0C */	ble lbl_80D0CE44
/* 80D0CE3C  7F C3 F3 78 */	mr r3, r30
/* 80D0CE40  4B 5C 1E FD */	bl __dl__FPv
lbl_80D0CE44:
/* 80D0CE44  7F C3 F3 78 */	mr r3, r30
/* 80D0CE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0CE4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0CE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0CE54  7C 08 03 A6 */	mtlr r0
/* 80D0CE58  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0CE5C  4E 80 00 20 */	blr 
