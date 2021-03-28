lbl_801F2134:
/* 801F2134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2138  7C 08 02 A6 */	mflr r0
/* 801F213C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F2140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F2144  93 C1 00 08 */	stw r30, 8(r1)
/* 801F2148  7C 7E 1B 78 */	mr r30, r3
/* 801F214C  48 00 30 45 */	bl errorTxtChangeAnm__12dMenu_save_cFv
/* 801F2150  7C 7F 1B 78 */	mr r31, r3
/* 801F2154  7F C3 F3 78 */	mr r3, r30
/* 801F2158  48 00 37 71 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F215C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F2160  28 00 00 01 */	cmplwi r0, 1
/* 801F2164  40 82 00 20 */	bne lbl_801F2184
/* 801F2168  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F216C  28 00 00 01 */	cmplwi r0, 1
/* 801F2170  40 82 00 14 */	bne lbl_801F2184
/* 801F2174  38 00 00 09 */	li r0, 9
/* 801F2178  98 1E 01 B2 */	stb r0, 0x1b2(r30)
/* 801F217C  38 00 00 3D */	li r0, 0x3d
/* 801F2180  98 1E 01 B5 */	stb r0, 0x1b5(r30)
lbl_801F2184:
/* 801F2184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F2188  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F218C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2190  7C 08 03 A6 */	mtlr r0
/* 801F2194  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2198  4E 80 00 20 */	blr 
