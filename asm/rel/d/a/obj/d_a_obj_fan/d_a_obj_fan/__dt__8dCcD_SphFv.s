lbl_80BE5B2C:
/* 80BE5B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5B30  7C 08 02 A6 */	mflr r0
/* 80BE5B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE5B3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE5B40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BE5B44  7C 9F 23 78 */	mr r31, r4
/* 80BE5B48  41 82 00 94 */	beq lbl_80BE5BDC
/* 80BE5B4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BE5B50  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BE5B54  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BE5B58  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BE5B5C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BE5B60  38 03 00 84 */	addi r0, r3, 0x84
/* 80BE5B64  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80BE5B68  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BE5B6C  41 82 00 54 */	beq lbl_80BE5BC0
/* 80BE5B70  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BE5B74  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BE5B78  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BE5B7C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BE5B80  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80BE5B84  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BE5B88  41 82 00 10 */	beq lbl_80BE5B98
/* 80BE5B8C  3C 60 80 BE */	lis r3, __vt__8cM3dGSph@ha /* 0x80BE5F40@ha */
/* 80BE5B90  38 03 5F 40 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BE5F40@l */
/* 80BE5B94  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80BE5B98:
/* 80BE5B98  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BE5B9C  41 82 00 24 */	beq lbl_80BE5BC0
/* 80BE5BA0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BE5BA4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BE5BA8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BE5BAC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BE5BB0  41 82 00 10 */	beq lbl_80BE5BC0
/* 80BE5BB4  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha /* 0x80BE5F34@ha */
/* 80BE5BB8  38 03 5F 34 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BE5F34@l */
/* 80BE5BBC  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BE5BC0:
/* 80BE5BC0  7F C3 F3 78 */	mr r3, r30
/* 80BE5BC4  38 80 00 00 */	li r4, 0
/* 80BE5BC8  4B 49 E5 1D */	bl __dt__12dCcD_GObjInfFv
/* 80BE5BCC  7F E0 07 35 */	extsh. r0, r31
/* 80BE5BD0  40 81 00 0C */	ble lbl_80BE5BDC
/* 80BE5BD4  7F C3 F3 78 */	mr r3, r30
/* 80BE5BD8  4B 6E 91 65 */	bl __dl__FPv
lbl_80BE5BDC:
/* 80BE5BDC  7F C3 F3 78 */	mr r3, r30
/* 80BE5BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE5BE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE5BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5BEC  7C 08 03 A6 */	mtlr r0
/* 80BE5BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5BF4  4E 80 00 20 */	blr 
