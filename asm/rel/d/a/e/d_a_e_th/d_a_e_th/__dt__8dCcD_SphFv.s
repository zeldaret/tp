lbl_807B3C40:
/* 807B3C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3C44  7C 08 02 A6 */	mflr r0
/* 807B3C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3C50  93 C1 00 08 */	stw r30, 8(r1)
/* 807B3C54  7C 7E 1B 79 */	or. r30, r3, r3
/* 807B3C58  7C 9F 23 78 */	mr r31, r4
/* 807B3C5C  41 82 00 94 */	beq lbl_807B3CF0
/* 807B3C60  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807B3C64  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807B3C68  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 807B3C6C  38 03 00 2C */	addi r0, r3, 0x2c
/* 807B3C70  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807B3C74  38 03 00 84 */	addi r0, r3, 0x84
/* 807B3C78  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807B3C7C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807B3C80  41 82 00 54 */	beq lbl_807B3CD4
/* 807B3C84  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807B3C88  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807B3C8C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 807B3C90  38 03 00 58 */	addi r0, r3, 0x58
/* 807B3C94  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807B3C98  34 1E 01 24 */	addic. r0, r30, 0x124
/* 807B3C9C  41 82 00 10 */	beq lbl_807B3CAC
/* 807B3CA0  3C 60 80 7B */	lis r3, __vt__8cM3dGSph@ha
/* 807B3CA4  38 03 48 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807B3CA8  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_807B3CAC:
/* 807B3CAC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807B3CB0  41 82 00 24 */	beq lbl_807B3CD4
/* 807B3CB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807B3CB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807B3CBC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807B3CC0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807B3CC4  41 82 00 10 */	beq lbl_807B3CD4
/* 807B3CC8  3C 60 80 7B */	lis r3, __vt__8cM3dGAab@ha
/* 807B3CCC  38 03 48 08 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807B3CD0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_807B3CD4:
/* 807B3CD4  7F C3 F3 78 */	mr r3, r30
/* 807B3CD8  38 80 00 00 */	li r4, 0
/* 807B3CDC  4B 8D 04 08 */	b __dt__12dCcD_GObjInfFv
/* 807B3CE0  7F E0 07 35 */	extsh. r0, r31
/* 807B3CE4  40 81 00 0C */	ble lbl_807B3CF0
/* 807B3CE8  7F C3 F3 78 */	mr r3, r30
/* 807B3CEC  4B B1 B0 50 */	b __dl__FPv
lbl_807B3CF0:
/* 807B3CF0  7F C3 F3 78 */	mr r3, r30
/* 807B3CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3CF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807B3CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3D00  7C 08 03 A6 */	mtlr r0
/* 807B3D04  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3D08  4E 80 00 20 */	blr 
