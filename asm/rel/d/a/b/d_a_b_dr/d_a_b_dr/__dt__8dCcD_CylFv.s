lbl_805C6894:
/* 805C6894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6898  7C 08 02 A6 */	mflr r0
/* 805C689C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C68A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C68A4  93 C1 00 08 */	stw r30, 8(r1)
/* 805C68A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 805C68AC  7C 9F 23 78 */	mr r31, r4
/* 805C68B0  41 82 00 94 */	beq lbl_805C6944
/* 805C68B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 805C68B8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 805C68BC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 805C68C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 805C68C4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805C68C8  38 03 00 84 */	addi r0, r3, 0x84
/* 805C68CC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 805C68D0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805C68D4  41 82 00 54 */	beq lbl_805C6928
/* 805C68D8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 805C68DC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 805C68E0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 805C68E4  38 03 00 58 */	addi r0, r3, 0x58
/* 805C68E8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 805C68EC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 805C68F0  41 82 00 10 */	beq lbl_805C6900
/* 805C68F4  3C 60 80 5C */	lis r3, __vt__8cM3dGCyl@ha /* 0x805C7864@ha */
/* 805C68F8  38 03 78 64 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x805C7864@l */
/* 805C68FC  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_805C6900:
/* 805C6900  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805C6904  41 82 00 24 */	beq lbl_805C6928
/* 805C6908  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805C690C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805C6910  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805C6914  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805C6918  41 82 00 10 */	beq lbl_805C6928
/* 805C691C  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha /* 0x805C7870@ha */
/* 805C6920  38 03 78 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805C7870@l */
/* 805C6924  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_805C6928:
/* 805C6928  7F C3 F3 78 */	mr r3, r30
/* 805C692C  38 80 00 00 */	li r4, 0
/* 805C6930  4B AB D7 B5 */	bl __dt__12dCcD_GObjInfFv
/* 805C6934  7F E0 07 35 */	extsh. r0, r31
/* 805C6938  40 81 00 0C */	ble lbl_805C6944
/* 805C693C  7F C3 F3 78 */	mr r3, r30
/* 805C6940  4B D0 83 FD */	bl __dl__FPv
lbl_805C6944:
/* 805C6944  7F C3 F3 78 */	mr r3, r30
/* 805C6948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C694C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C6950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6954  7C 08 03 A6 */	mtlr r0
/* 805C6958  38 21 00 10 */	addi r1, r1, 0x10
/* 805C695C  4E 80 00 20 */	blr 
