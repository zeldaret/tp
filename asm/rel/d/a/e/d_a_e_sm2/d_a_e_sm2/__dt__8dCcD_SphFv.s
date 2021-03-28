lbl_8079CB28:
/* 8079CB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CB2C  7C 08 02 A6 */	mflr r0
/* 8079CB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CB34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CB38  93 C1 00 08 */	stw r30, 8(r1)
/* 8079CB3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8079CB40  7C 9F 23 78 */	mr r31, r4
/* 8079CB44  41 82 00 94 */	beq lbl_8079CBD8
/* 8079CB48  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8079CB4C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8079CB50  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8079CB54  38 03 00 2C */	addi r0, r3, 0x2c
/* 8079CB58  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8079CB5C  38 03 00 84 */	addi r0, r3, 0x84
/* 8079CB60  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8079CB64  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8079CB68  41 82 00 54 */	beq lbl_8079CBBC
/* 8079CB6C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8079CB70  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8079CB74  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8079CB78  38 03 00 58 */	addi r0, r3, 0x58
/* 8079CB7C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8079CB80  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8079CB84  41 82 00 10 */	beq lbl_8079CB94
/* 8079CB88  3C 60 80 7A */	lis r3, __vt__8cM3dGSph@ha
/* 8079CB8C  38 03 DA EC */	addi r0, r3, __vt__8cM3dGSph@l
/* 8079CB90  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8079CB94:
/* 8079CB94  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8079CB98  41 82 00 24 */	beq lbl_8079CBBC
/* 8079CB9C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8079CBA0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8079CBA4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8079CBA8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8079CBAC  41 82 00 10 */	beq lbl_8079CBBC
/* 8079CBB0  3C 60 80 7A */	lis r3, __vt__8cM3dGAab@ha
/* 8079CBB4  38 03 DA E0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8079CBB8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8079CBBC:
/* 8079CBBC  7F C3 F3 78 */	mr r3, r30
/* 8079CBC0  38 80 00 00 */	li r4, 0
/* 8079CBC4  4B 8E 75 20 */	b __dt__12dCcD_GObjInfFv
/* 8079CBC8  7F E0 07 35 */	extsh. r0, r31
/* 8079CBCC  40 81 00 0C */	ble lbl_8079CBD8
/* 8079CBD0  7F C3 F3 78 */	mr r3, r30
/* 8079CBD4  4B B3 21 68 */	b __dl__FPv
lbl_8079CBD8:
/* 8079CBD8  7F C3 F3 78 */	mr r3, r30
/* 8079CBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CBE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8079CBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CBE8  7C 08 03 A6 */	mtlr r0
/* 8079CBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CBF0  4E 80 00 20 */	blr 
