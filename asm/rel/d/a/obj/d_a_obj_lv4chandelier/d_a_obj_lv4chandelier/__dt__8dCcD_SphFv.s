lbl_80C662F4:
/* 80C662F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C662F8  7C 08 02 A6 */	mflr r0
/* 80C662FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C66304  93 C1 00 08 */	stw r30, 8(r1)
/* 80C66308  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6630C  7C 9F 23 78 */	mr r31, r4
/* 80C66310  41 82 00 94 */	beq lbl_80C663A4
/* 80C66314  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C66318  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C6631C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C66320  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C66324  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C66328  38 03 00 84 */	addi r0, r3, 0x84
/* 80C6632C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C66330  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C66334  41 82 00 54 */	beq lbl_80C66388
/* 80C66338  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C6633C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C66340  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C66344  38 03 00 58 */	addi r0, r3, 0x58
/* 80C66348  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C6634C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C66350  41 82 00 10 */	beq lbl_80C66360
/* 80C66354  3C 60 80 C6 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C66A30@ha */
/* 80C66358  38 03 6A 30 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C66A30@l */
/* 80C6635C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80C66360:
/* 80C66360  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C66364  41 82 00 24 */	beq lbl_80C66388
/* 80C66368  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C6636C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C66370  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C66374  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C66378  41 82 00 10 */	beq lbl_80C66388
/* 80C6637C  3C 60 80 C6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C66A24@ha */
/* 80C66380  38 03 6A 24 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C66A24@l */
/* 80C66384  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C66388:
/* 80C66388  7F C3 F3 78 */	mr r3, r30
/* 80C6638C  38 80 00 00 */	li r4, 0
/* 80C66390  4B 41 DD 55 */	bl __dt__12dCcD_GObjInfFv
/* 80C66394  7F E0 07 35 */	extsh. r0, r31
/* 80C66398  40 81 00 0C */	ble lbl_80C663A4
/* 80C6639C  7F C3 F3 78 */	mr r3, r30
/* 80C663A0  4B 66 89 9D */	bl __dl__FPv
lbl_80C663A4:
/* 80C663A4  7F C3 F3 78 */	mr r3, r30
/* 80C663A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C663AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C663B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C663B4  7C 08 03 A6 */	mtlr r0
/* 80C663B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C663BC  4E 80 00 20 */	blr 
