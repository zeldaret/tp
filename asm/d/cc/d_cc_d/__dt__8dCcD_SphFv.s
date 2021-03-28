lbl_80084BF4:
/* 80084BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084BF8  7C 08 02 A6 */	mflr r0
/* 80084BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80084C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80084C04  93 C1 00 08 */	stw r30, 8(r1)
/* 80084C08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80084C0C  7C 9F 23 78 */	mr r31, r4
/* 80084C10  41 82 00 94 */	beq lbl_80084CA4
/* 80084C14  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80084C18  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80084C1C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80084C20  38 03 00 2C */	addi r0, r3, 0x2c
/* 80084C24  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80084C28  38 03 00 84 */	addi r0, r3, 0x84
/* 80084C2C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80084C30  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084C34  41 82 00 54 */	beq lbl_80084C88
/* 80084C38  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80084C3C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80084C40  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80084C44  38 03 00 58 */	addi r0, r3, 0x58
/* 80084C48  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80084C4C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80084C50  41 82 00 10 */	beq lbl_80084C60
/* 80084C54  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 80084C58  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80084C5C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80084C60:
/* 80084C60  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084C64  41 82 00 24 */	beq lbl_80084C88
/* 80084C68  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80084C6C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80084C70  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80084C74  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084C78  41 82 00 10 */	beq lbl_80084C88
/* 80084C7C  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80084C80  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80084C84  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80084C88:
/* 80084C88  7F C3 F3 78 */	mr r3, r30
/* 80084C8C  38 80 00 00 */	li r4, 0
/* 80084C90  4B FF F4 55 */	bl __dt__12dCcD_GObjInfFv
/* 80084C94  7F E0 07 35 */	extsh. r0, r31
/* 80084C98  40 81 00 0C */	ble lbl_80084CA4
/* 80084C9C  7F C3 F3 78 */	mr r3, r30
/* 80084CA0  48 24 A0 9D */	bl __dl__FPv
lbl_80084CA4:
/* 80084CA4  7F C3 F3 78 */	mr r3, r30
/* 80084CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084CAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80084CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084CB4  7C 08 03 A6 */	mtlr r0
/* 80084CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80084CBC  4E 80 00 20 */	blr 
