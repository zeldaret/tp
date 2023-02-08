lbl_80BB6920:
/* 80BB6920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6924  7C 08 02 A6 */	mflr r0
/* 80BB6928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB692C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6930  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB6934  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB6938  7C 9F 23 78 */	mr r31, r4
/* 80BB693C  41 82 00 94 */	beq lbl_80BB69D0
/* 80BB6940  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BB6944  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BB6948  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BB694C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BB6950  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BB6954  38 03 00 84 */	addi r0, r3, 0x84
/* 80BB6958  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BB695C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB6960  41 82 00 54 */	beq lbl_80BB69B4
/* 80BB6964  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BB6968  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BB696C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BB6970  38 03 00 58 */	addi r0, r3, 0x58
/* 80BB6974  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BB6978  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BB697C  41 82 00 10 */	beq lbl_80BB698C
/* 80BB6980  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BB8108@ha */
/* 80BB6984  38 03 81 08 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BB8108@l */
/* 80BB6988  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BB698C:
/* 80BB698C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB6990  41 82 00 24 */	beq lbl_80BB69B4
/* 80BB6994  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BB6998  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BB699C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BB69A0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB69A4  41 82 00 10 */	beq lbl_80BB69B4
/* 80BB69A8  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha /* 0x80BB80FC@ha */
/* 80BB69AC  38 03 80 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BB80FC@l */
/* 80BB69B0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BB69B4:
/* 80BB69B4  7F C3 F3 78 */	mr r3, r30
/* 80BB69B8  38 80 00 00 */	li r4, 0
/* 80BB69BC  4B 4C D7 29 */	bl __dt__12dCcD_GObjInfFv
/* 80BB69C0  7F E0 07 35 */	extsh. r0, r31
/* 80BB69C4  40 81 00 0C */	ble lbl_80BB69D0
/* 80BB69C8  7F C3 F3 78 */	mr r3, r30
/* 80BB69CC  4B 71 83 71 */	bl __dl__FPv
lbl_80BB69D0:
/* 80BB69D0  7F C3 F3 78 */	mr r3, r30
/* 80BB69D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB69D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB69DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB69E0  7C 08 03 A6 */	mtlr r0
/* 80BB69E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB69E8  4E 80 00 20 */	blr 
