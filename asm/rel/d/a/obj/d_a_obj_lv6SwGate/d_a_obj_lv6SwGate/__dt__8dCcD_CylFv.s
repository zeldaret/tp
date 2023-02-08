lbl_80C744E4:
/* 80C744E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C744E8  7C 08 02 A6 */	mflr r0
/* 80C744EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C744F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C744F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C744F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C744FC  7C 9F 23 78 */	mr r31, r4
/* 80C74500  41 82 00 94 */	beq lbl_80C74594
/* 80C74504  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C74508  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C7450C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C74510  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C74514  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C74518  38 03 00 84 */	addi r0, r3, 0x84
/* 80C7451C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C74520  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C74524  41 82 00 54 */	beq lbl_80C74578
/* 80C74528  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C7452C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C74530  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C74534  38 03 00 58 */	addi r0, r3, 0x58
/* 80C74538  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C7453C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C74540  41 82 00 10 */	beq lbl_80C74550
/* 80C74544  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C756E8@ha */
/* 80C74548  38 03 56 E8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C756E8@l */
/* 80C7454C  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C74550:
/* 80C74550  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C74554  41 82 00 24 */	beq lbl_80C74578
/* 80C74558  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C7455C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C74560  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C74564  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C74568  41 82 00 10 */	beq lbl_80C74578
/* 80C7456C  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C756DC@ha */
/* 80C74570  38 03 56 DC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C756DC@l */
/* 80C74574  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C74578:
/* 80C74578  7F C3 F3 78 */	mr r3, r30
/* 80C7457C  38 80 00 00 */	li r4, 0
/* 80C74580  4B 40 FB 65 */	bl __dt__12dCcD_GObjInfFv
/* 80C74584  7F E0 07 35 */	extsh. r0, r31
/* 80C74588  40 81 00 0C */	ble lbl_80C74594
/* 80C7458C  7F C3 F3 78 */	mr r3, r30
/* 80C74590  4B 65 A7 AD */	bl __dl__FPv
lbl_80C74594:
/* 80C74594  7F C3 F3 78 */	mr r3, r30
/* 80C74598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7459C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C745A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C745A4  7C 08 03 A6 */	mtlr r0
/* 80C745A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C745AC  4E 80 00 20 */	blr 
