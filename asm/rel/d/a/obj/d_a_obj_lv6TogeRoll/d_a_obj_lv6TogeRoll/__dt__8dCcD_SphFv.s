lbl_80C780A0:
/* 80C780A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C780A4  7C 08 02 A6 */	mflr r0
/* 80C780A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C780AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C780B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C780B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C780B8  7C 9F 23 78 */	mr r31, r4
/* 80C780BC  41 82 00 94 */	beq lbl_80C78150
/* 80C780C0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C780C4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C780C8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C780CC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C780D0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C780D4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C780D8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C780DC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C780E0  41 82 00 54 */	beq lbl_80C78134
/* 80C780E4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C780E8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C780EC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C780F0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C780F4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C780F8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C780FC  41 82 00 10 */	beq lbl_80C7810C
/* 80C78100  3C 60 80 C8 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C79CD8@ha */
/* 80C78104  38 03 9C D8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C79CD8@l */
/* 80C78108  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80C7810C:
/* 80C7810C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C78110  41 82 00 24 */	beq lbl_80C78134
/* 80C78114  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C78118  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C7811C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C78120  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C78124  41 82 00 10 */	beq lbl_80C78134
/* 80C78128  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C79CE4@ha */
/* 80C7812C  38 03 9C E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C79CE4@l */
/* 80C78130  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C78134:
/* 80C78134  7F C3 F3 78 */	mr r3, r30
/* 80C78138  38 80 00 00 */	li r4, 0
/* 80C7813C  4B 40 BF A9 */	bl __dt__12dCcD_GObjInfFv
/* 80C78140  7F E0 07 35 */	extsh. r0, r31
/* 80C78144  40 81 00 0C */	ble lbl_80C78150
/* 80C78148  7F C3 F3 78 */	mr r3, r30
/* 80C7814C  4B 65 6B F1 */	bl __dl__FPv
lbl_80C78150:
/* 80C78150  7F C3 F3 78 */	mr r3, r30
/* 80C78154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C78158  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C7815C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C78160  7C 08 03 A6 */	mtlr r0
/* 80C78164  38 21 00 10 */	addi r1, r1, 0x10
/* 80C78168  4E 80 00 20 */	blr 
