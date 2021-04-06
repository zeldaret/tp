lbl_807F72C4:
/* 807F72C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F72C8  7C 08 02 A6 */	mflr r0
/* 807F72CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F72D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F72D4  93 C1 00 08 */	stw r30, 8(r1)
/* 807F72D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 807F72DC  7C 9F 23 78 */	mr r31, r4
/* 807F72E0  41 82 00 94 */	beq lbl_807F7374
/* 807F72E4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807F72E8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807F72EC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 807F72F0  38 03 00 2C */	addi r0, r3, 0x2c
/* 807F72F4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807F72F8  38 03 00 84 */	addi r0, r3, 0x84
/* 807F72FC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807F7300  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807F7304  41 82 00 54 */	beq lbl_807F7358
/* 807F7308  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807F730C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807F7310  90 7E 01 20 */	stw r3, 0x120(r30)
/* 807F7314  38 03 00 58 */	addi r0, r3, 0x58
/* 807F7318  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807F731C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 807F7320  41 82 00 10 */	beq lbl_807F7330
/* 807F7324  3C 60 80 7F */	lis r3, __vt__8cM3dGSph@ha /* 0x807F7D1C@ha */
/* 807F7328  38 03 7D 1C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807F7D1C@l */
/* 807F732C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_807F7330:
/* 807F7330  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807F7334  41 82 00 24 */	beq lbl_807F7358
/* 807F7338  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807F733C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807F7340  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807F7344  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807F7348  41 82 00 10 */	beq lbl_807F7358
/* 807F734C  3C 60 80 7F */	lis r3, __vt__8cM3dGAab@ha /* 0x807F7D28@ha */
/* 807F7350  38 03 7D 28 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807F7D28@l */
/* 807F7354  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_807F7358:
/* 807F7358  7F C3 F3 78 */	mr r3, r30
/* 807F735C  38 80 00 00 */	li r4, 0
/* 807F7360  4B 88 CD 85 */	bl __dt__12dCcD_GObjInfFv
/* 807F7364  7F E0 07 35 */	extsh. r0, r31
/* 807F7368  40 81 00 0C */	ble lbl_807F7374
/* 807F736C  7F C3 F3 78 */	mr r3, r30
/* 807F7370  4B AD 79 CD */	bl __dl__FPv
lbl_807F7374:
/* 807F7374  7F C3 F3 78 */	mr r3, r30
/* 807F7378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F737C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807F7380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7384  7C 08 03 A6 */	mtlr r0
/* 807F7388  38 21 00 10 */	addi r1, r1, 0x10
/* 807F738C  4E 80 00 20 */	blr 
