lbl_80BC60A8:
/* 80BC60A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC60AC  7C 08 02 A6 */	mflr r0
/* 80BC60B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC60B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC60B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC60BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BC60C0  7C 9F 23 78 */	mr r31, r4
/* 80BC60C4  41 82 00 94 */	beq lbl_80BC6158
/* 80BC60C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BC60CC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BC60D0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BC60D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BC60D8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BC60DC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BC60E0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BC60E4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC60E8  41 82 00 54 */	beq lbl_80BC613C
/* 80BC60EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BC60F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BC60F4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BC60F8  38 03 00 58 */	addi r0, r3, 0x58
/* 80BC60FC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BC6100  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BC6104  41 82 00 10 */	beq lbl_80BC6114
/* 80BC6108  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BC6C04@ha */
/* 80BC610C  38 03 6C 04 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BC6C04@l */
/* 80BC6110  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BC6114:
/* 80BC6114  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC6118  41 82 00 24 */	beq lbl_80BC613C
/* 80BC611C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BC6120  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BC6124  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BC6128  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC612C  41 82 00 10 */	beq lbl_80BC613C
/* 80BC6130  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha /* 0x80BC6C10@ha */
/* 80BC6134  38 03 6C 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BC6C10@l */
/* 80BC6138  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BC613C:
/* 80BC613C  7F C3 F3 78 */	mr r3, r30
/* 80BC6140  38 80 00 00 */	li r4, 0
/* 80BC6144  4B 4B DF A1 */	bl __dt__12dCcD_GObjInfFv
/* 80BC6148  7F E0 07 35 */	extsh. r0, r31
/* 80BC614C  40 81 00 0C */	ble lbl_80BC6158
/* 80BC6150  7F C3 F3 78 */	mr r3, r30
/* 80BC6154  4B 70 8B E9 */	bl __dl__FPv
lbl_80BC6158:
/* 80BC6158  7F C3 F3 78 */	mr r3, r30
/* 80BC615C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC6160  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC6164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC6168  7C 08 03 A6 */	mtlr r0
/* 80BC616C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC6170  4E 80 00 20 */	blr 
