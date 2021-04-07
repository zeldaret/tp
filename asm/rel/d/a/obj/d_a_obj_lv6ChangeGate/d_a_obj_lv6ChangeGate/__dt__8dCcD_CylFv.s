lbl_80C7106C:
/* 80C7106C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71070  7C 08 02 A6 */	mflr r0
/* 80C71074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7107C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C71080  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C71084  7C 9F 23 78 */	mr r31, r4
/* 80C71088  41 82 00 94 */	beq lbl_80C7111C
/* 80C7108C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C71090  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C71094  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C71098  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C7109C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C710A0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C710A4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C710A8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C710AC  41 82 00 54 */	beq lbl_80C71100
/* 80C710B0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C710B4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C710B8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C710BC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C710C0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C710C4  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C710C8  41 82 00 10 */	beq lbl_80C710D8
/* 80C710CC  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C722E4@ha */
/* 80C710D0  38 03 22 E4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C722E4@l */
/* 80C710D4  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C710D8:
/* 80C710D8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C710DC  41 82 00 24 */	beq lbl_80C71100
/* 80C710E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C710E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C710E8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C710EC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C710F0  41 82 00 10 */	beq lbl_80C71100
/* 80C710F4  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C722D8@ha */
/* 80C710F8  38 03 22 D8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C722D8@l */
/* 80C710FC  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C71100:
/* 80C71100  7F C3 F3 78 */	mr r3, r30
/* 80C71104  38 80 00 00 */	li r4, 0
/* 80C71108  4B 41 2F DD */	bl __dt__12dCcD_GObjInfFv
/* 80C7110C  7F E0 07 35 */	extsh. r0, r31
/* 80C71110  40 81 00 0C */	ble lbl_80C7111C
/* 80C71114  7F C3 F3 78 */	mr r3, r30
/* 80C71118  4B 65 DC 25 */	bl __dl__FPv
lbl_80C7111C:
/* 80C7111C  7F C3 F3 78 */	mr r3, r30
/* 80C71120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C71124  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C71128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7112C  7C 08 03 A6 */	mtlr r0
/* 80C71130  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71134  4E 80 00 20 */	blr 
