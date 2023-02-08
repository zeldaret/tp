lbl_80C875B8:
/* 80C875B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C875BC  7C 08 02 A6 */	mflr r0
/* 80C875C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C875C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C875C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C875CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C875D0  7C 9F 23 78 */	mr r31, r4
/* 80C875D4  41 82 00 94 */	beq lbl_80C87668
/* 80C875D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C875DC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C875E0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C875E4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C875E8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C875EC  38 03 00 84 */	addi r0, r3, 0x84
/* 80C875F0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C875F4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C875F8  41 82 00 54 */	beq lbl_80C8764C
/* 80C875FC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C87600  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C87604  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C87608  38 03 00 58 */	addi r0, r3, 0x58
/* 80C8760C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C87610  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C87614  41 82 00 10 */	beq lbl_80C87624
/* 80C87618  3C 60 80 C8 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C87B50@ha */
/* 80C8761C  38 03 7B 50 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C87B50@l */
/* 80C87620  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C87624:
/* 80C87624  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C87628  41 82 00 24 */	beq lbl_80C8764C
/* 80C8762C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C87630  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C87634  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C87638  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C8763C  41 82 00 10 */	beq lbl_80C8764C
/* 80C87640  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C87B44@ha */
/* 80C87644  38 03 7B 44 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C87B44@l */
/* 80C87648  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C8764C:
/* 80C8764C  7F C3 F3 78 */	mr r3, r30
/* 80C87650  38 80 00 00 */	li r4, 0
/* 80C87654  4B 3F CA 91 */	bl __dt__12dCcD_GObjInfFv
/* 80C87658  7F E0 07 35 */	extsh. r0, r31
/* 80C8765C  40 81 00 0C */	ble lbl_80C87668
/* 80C87660  7F C3 F3 78 */	mr r3, r30
/* 80C87664  4B 64 76 D9 */	bl __dl__FPv
lbl_80C87668:
/* 80C87668  7F C3 F3 78 */	mr r3, r30
/* 80C8766C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87670  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C87674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87678  7C 08 03 A6 */	mtlr r0
/* 80C8767C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87680  4E 80 00 20 */	blr 
