lbl_80663B70:
/* 80663B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80663B74  7C 08 02 A6 */	mflr r0
/* 80663B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80663B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80663B80  93 C1 00 08 */	stw r30, 8(r1)
/* 80663B84  7C 7E 1B 79 */	or. r30, r3, r3
/* 80663B88  7C 9F 23 78 */	mr r31, r4
/* 80663B8C  41 82 00 94 */	beq lbl_80663C20
/* 80663B90  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80663B94  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80663B98  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80663B9C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80663BA0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80663BA4  38 03 00 84 */	addi r0, r3, 0x84
/* 80663BA8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80663BAC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80663BB0  41 82 00 54 */	beq lbl_80663C04
/* 80663BB4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80663BB8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80663BBC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80663BC0  38 03 00 58 */	addi r0, r3, 0x58
/* 80663BC4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80663BC8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80663BCC  41 82 00 10 */	beq lbl_80663BDC
/* 80663BD0  3C 60 80 66 */	lis r3, __vt__8cM3dGSph@ha
/* 80663BD4  38 03 7B 50 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80663BD8  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80663BDC:
/* 80663BDC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80663BE0  41 82 00 24 */	beq lbl_80663C04
/* 80663BE4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80663BE8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80663BEC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80663BF0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80663BF4  41 82 00 10 */	beq lbl_80663C04
/* 80663BF8  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha
/* 80663BFC  38 03 7B 68 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80663C00  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80663C04:
/* 80663C04  7F C3 F3 78 */	mr r3, r30
/* 80663C08  38 80 00 00 */	li r4, 0
/* 80663C0C  4B A2 04 D8 */	b __dt__12dCcD_GObjInfFv
/* 80663C10  7F E0 07 35 */	extsh. r0, r31
/* 80663C14  40 81 00 0C */	ble lbl_80663C20
/* 80663C18  7F C3 F3 78 */	mr r3, r30
/* 80663C1C  4B C6 B1 20 */	b __dl__FPv
lbl_80663C20:
/* 80663C20  7F C3 F3 78 */	mr r3, r30
/* 80663C24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80663C28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80663C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80663C30  7C 08 03 A6 */	mtlr r0
/* 80663C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80663C38  4E 80 00 20 */	blr 
