lbl_806A6A28:
/* 806A6A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6A2C  7C 08 02 A6 */	mflr r0
/* 806A6A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A6A38  93 C1 00 08 */	stw r30, 8(r1)
/* 806A6A3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 806A6A40  7C 9F 23 78 */	mr r31, r4
/* 806A6A44  41 82 00 94 */	beq lbl_806A6AD8
/* 806A6A48  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806A6A4C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806A6A50  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806A6A54  38 03 00 2C */	addi r0, r3, 0x2c
/* 806A6A58  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806A6A5C  38 03 00 84 */	addi r0, r3, 0x84
/* 806A6A60  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806A6A64  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806A6A68  41 82 00 54 */	beq lbl_806A6ABC
/* 806A6A6C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806A6A70  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806A6A74  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806A6A78  38 03 00 58 */	addi r0, r3, 0x58
/* 806A6A7C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806A6A80  34 1E 01 24 */	addic. r0, r30, 0x124
/* 806A6A84  41 82 00 10 */	beq lbl_806A6A94
/* 806A6A88  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha /* 0x806A7458@ha */
/* 806A6A8C  38 03 74 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806A7458@l */
/* 806A6A90  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_806A6A94:
/* 806A6A94  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806A6A98  41 82 00 24 */	beq lbl_806A6ABC
/* 806A6A9C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806A6AA0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806A6AA4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806A6AA8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806A6AAC  41 82 00 10 */	beq lbl_806A6ABC
/* 806A6AB0  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha /* 0x806A7464@ha */
/* 806A6AB4  38 03 74 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806A7464@l */
/* 806A6AB8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_806A6ABC:
/* 806A6ABC  7F C3 F3 78 */	mr r3, r30
/* 806A6AC0  38 80 00 00 */	li r4, 0
/* 806A6AC4  4B 9D D6 21 */	bl __dt__12dCcD_GObjInfFv
/* 806A6AC8  7F E0 07 35 */	extsh. r0, r31
/* 806A6ACC  40 81 00 0C */	ble lbl_806A6AD8
/* 806A6AD0  7F C3 F3 78 */	mr r3, r30
/* 806A6AD4  4B C2 82 69 */	bl __dl__FPv
lbl_806A6AD8:
/* 806A6AD8  7F C3 F3 78 */	mr r3, r30
/* 806A6ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6AE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806A6AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6AE8  7C 08 03 A6 */	mtlr r0
/* 806A6AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6AF0  4E 80 00 20 */	blr 
