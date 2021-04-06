lbl_80CBC054:
/* 80CBC054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC058  7C 08 02 A6 */	mflr r0
/* 80CBC05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC064  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBC068  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CBC06C  7C 9F 23 78 */	mr r31, r4
/* 80CBC070  41 82 00 94 */	beq lbl_80CBC104
/* 80CBC074  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CBC078  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CBC07C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CBC080  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CBC084  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CBC088  38 03 00 84 */	addi r0, r3, 0x84
/* 80CBC08C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CBC090  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CBC094  41 82 00 54 */	beq lbl_80CBC0E8
/* 80CBC098  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CBC09C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CBC0A0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CBC0A4  38 03 00 58 */	addi r0, r3, 0x58
/* 80CBC0A8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CBC0AC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CBC0B0  41 82 00 10 */	beq lbl_80CBC0C0
/* 80CBC0B4  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CBC590@ha */
/* 80CBC0B8  38 03 C5 90 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CBC590@l */
/* 80CBC0BC  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80CBC0C0:
/* 80CBC0C0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CBC0C4  41 82 00 24 */	beq lbl_80CBC0E8
/* 80CBC0C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CBC0CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CBC0D0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CBC0D4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CBC0D8  41 82 00 10 */	beq lbl_80CBC0E8
/* 80CBC0DC  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CBC584@ha */
/* 80CBC0E0  38 03 C5 84 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CBC584@l */
/* 80CBC0E4  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CBC0E8:
/* 80CBC0E8  7F C3 F3 78 */	mr r3, r30
/* 80CBC0EC  38 80 00 00 */	li r4, 0
/* 80CBC0F0  4B 3C 7F F5 */	bl __dt__12dCcD_GObjInfFv
/* 80CBC0F4  7F E0 07 35 */	extsh. r0, r31
/* 80CBC0F8  40 81 00 0C */	ble lbl_80CBC104
/* 80CBC0FC  7F C3 F3 78 */	mr r3, r30
/* 80CBC100  4B 61 2C 3D */	bl __dl__FPv
lbl_80CBC104:
/* 80CBC104  7F C3 F3 78 */	mr r3, r30
/* 80CBC108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC10C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBC110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC114  7C 08 03 A6 */	mtlr r0
/* 80CBC118  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC11C  4E 80 00 20 */	blr 
