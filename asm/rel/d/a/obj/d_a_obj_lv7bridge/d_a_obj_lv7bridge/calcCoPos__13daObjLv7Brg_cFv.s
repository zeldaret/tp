lbl_80C87214:
/* 80C87214  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C87218  7C 08 02 A6 */	mflr r0
/* 80C8721C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C87220  39 61 00 40 */	addi r11, r1, 0x40
/* 80C87224  4B 6D AF B1 */	bl _savegpr_27
/* 80C87228  7C 7B 1B 78 */	mr r27, r3
/* 80C8722C  3C 60 80 C8 */	lis r3, l_bmd@ha /* 0x80C879A0@ha */
/* 80C87230  38 63 79 A0 */	addi r3, r3, l_bmd@l /* 0x80C879A0@l */
/* 80C87234  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80C87238  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C8723C  C0 63 00 70 */	lfs f3, 0x70(r3)
/* 80C87240  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80C87244  C0 43 00 74 */	lfs f2, 0x74(r3)
/* 80C87248  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C8724C  3B A1 00 14 */	addi r29, r1, 0x14
/* 80C87250  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C87254  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80C87258  C0 23 00 78 */	lfs f1, 0x78(r3)
/* 80C8725C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C87260  88 1B 0A 7E */	lbz r0, 0xa7e(r27)
/* 80C87264  28 00 00 01 */	cmplwi r0, 1
/* 80C87268  40 82 00 20 */	bne lbl_80C87288
/* 80C8726C  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 80C87270  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C87274  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80C87278  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C8727C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C87280  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80C87284  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_80C87288:
/* 80C87288  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80C8728C  4B 38 5A D9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C87290  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C87294  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C87298  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80C8729C  4B 38 51 99 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C872A0  3B 80 00 00 */	li r28, 0
/* 80C872A4  3B E0 00 00 */	li r31, 0
/* 80C872A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C872AC  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80C872B0:
/* 80C872B0  38 81 00 08 */	addi r4, r1, 8
/* 80C872B4  7C 84 FA 14 */	add r4, r4, r31
/* 80C872B8  7F C3 F3 78 */	mr r3, r30
/* 80C872BC  7C 85 23 78 */	mr r5, r4
/* 80C872C0  4B 6B FA AD */	bl PSMTXMultVec
/* 80C872C4  3B 9C 00 01 */	addi r28, r28, 1
/* 80C872C8  2C 1C 00 02 */	cmpwi r28, 2
/* 80C872CC  3B FF 00 0C */	addi r31, r31, 0xc
/* 80C872D0  41 80 FF E0 */	blt lbl_80C872B0
/* 80C872D4  38 7B 09 24 */	addi r3, r27, 0x924
/* 80C872D8  38 81 00 08 */	addi r4, r1, 8
/* 80C872DC  4B 5E 7F 01 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C872E0  38 7B 0A 60 */	addi r3, r27, 0xa60
/* 80C872E4  7F A4 EB 78 */	mr r4, r29
/* 80C872E8  4B 5E 7E F5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C872EC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C872F0  4B 6D AF 31 */	bl _restgpr_27
/* 80C872F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C872F8  7C 08 03 A6 */	mtlr r0
/* 80C872FC  38 21 00 40 */	addi r1, r1, 0x40
/* 80C87300  4E 80 00 20 */	blr 
