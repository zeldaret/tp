lbl_80B5C5C4:
/* 80B5C5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C5C8  7C 08 02 A6 */	mflr r0
/* 80B5C5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C5D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B5C5D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B5C5DC  7C 9F 23 78 */	mr r31, r4
/* 80B5C5E0  41 82 00 94 */	beq lbl_80B5C674
/* 80B5C5E4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80B5C5E8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80B5C5EC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B5C5F0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B5C5F4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B5C5F8  38 03 00 84 */	addi r0, r3, 0x84
/* 80B5C5FC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80B5C600  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80B5C604  41 82 00 54 */	beq lbl_80B5C658
/* 80B5C608  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80B5C60C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80B5C610  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B5C614  38 03 00 58 */	addi r0, r3, 0x58
/* 80B5C618  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80B5C61C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80B5C620  41 82 00 10 */	beq lbl_80B5C630
/* 80B5C624  3C 60 80 B6 */	lis r3, __vt__8cM3dGSph@ha /* 0x80B5EBA8@ha */
/* 80B5C628  38 03 EB A8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80B5EBA8@l */
/* 80B5C62C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80B5C630:
/* 80B5C630  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80B5C634  41 82 00 24 */	beq lbl_80B5C658
/* 80B5C638  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B5C63C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B5C640  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B5C644  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80B5C648  41 82 00 10 */	beq lbl_80B5C658
/* 80B5C64C  3C 60 80 B6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B5EC2C@ha */
/* 80B5C650  38 03 EC 2C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B5EC2C@l */
/* 80B5C654  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80B5C658:
/* 80B5C658  7F C3 F3 78 */	mr r3, r30
/* 80B5C65C  38 80 00 00 */	li r4, 0
/* 80B5C660  4B 52 7A 85 */	bl __dt__12dCcD_GObjInfFv
/* 80B5C664  7F E0 07 35 */	extsh. r0, r31
/* 80B5C668  40 81 00 0C */	ble lbl_80B5C674
/* 80B5C66C  7F C3 F3 78 */	mr r3, r30
/* 80B5C670  4B 77 26 CD */	bl __dl__FPv
lbl_80B5C674:
/* 80B5C674  7F C3 F3 78 */	mr r3, r30
/* 80B5C678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C67C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B5C680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C684  7C 08 03 A6 */	mtlr r0
/* 80B5C688  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C68C  4E 80 00 20 */	blr 
