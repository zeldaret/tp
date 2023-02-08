lbl_805DC598:
/* 805DC598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC59C  7C 08 02 A6 */	mflr r0
/* 805DC5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC5A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805DC5AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 805DC5B0  7C 9F 23 78 */	mr r31, r4
/* 805DC5B4  41 82 00 94 */	beq lbl_805DC648
/* 805DC5B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 805DC5BC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 805DC5C0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 805DC5C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 805DC5C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805DC5CC  38 03 00 84 */	addi r0, r3, 0x84
/* 805DC5D0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805DC5D4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805DC5D8  41 82 00 54 */	beq lbl_805DC62C
/* 805DC5DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 805DC5E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 805DC5E4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 805DC5E8  38 03 00 58 */	addi r0, r3, 0x58
/* 805DC5EC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805DC5F0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 805DC5F4  41 82 00 10 */	beq lbl_805DC604
/* 805DC5F8  3C 60 80 5E */	lis r3, __vt__8cM3dGSph@ha /* 0x805DDA14@ha */
/* 805DC5FC  38 03 DA 14 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x805DDA14@l */
/* 805DC600  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_805DC604:
/* 805DC604  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805DC608  41 82 00 24 */	beq lbl_805DC62C
/* 805DC60C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805DC610  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805DC614  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805DC618  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805DC61C  41 82 00 10 */	beq lbl_805DC62C
/* 805DC620  3C 60 80 5E */	lis r3, __vt__8cM3dGAab@ha /* 0x805DDA20@ha */
/* 805DC624  38 03 DA 20 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805DDA20@l */
/* 805DC628  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_805DC62C:
/* 805DC62C  7F C3 F3 78 */	mr r3, r30
/* 805DC630  38 80 00 00 */	li r4, 0
/* 805DC634  4B AA 7A B1 */	bl __dt__12dCcD_GObjInfFv
/* 805DC638  7F E0 07 35 */	extsh. r0, r31
/* 805DC63C  40 81 00 0C */	ble lbl_805DC648
/* 805DC640  7F C3 F3 78 */	mr r3, r30
/* 805DC644  4B CF 26 F9 */	bl __dl__FPv
lbl_805DC648:
/* 805DC648  7F C3 F3 78 */	mr r3, r30
/* 805DC64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC650  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DC654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC658  7C 08 03 A6 */	mtlr r0
/* 805DC65C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC660  4E 80 00 20 */	blr 
