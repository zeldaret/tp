lbl_801E4C10:
/* 801E4C10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E4C14  7C 08 02 A6 */	mflr r0
/* 801E4C18  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E4C1C  39 61 00 20 */	addi r11, r1, 0x20
/* 801E4C20  48 17 D5 BD */	bl _savegpr_29
/* 801E4C24  7C 7D 1B 78 */	mr r29, r3
/* 801E4C28  80 83 00 34 */	lwz r4, 0x34(r3)
/* 801E4C2C  88 84 00 3D */	lbz r4, 0x3d(r4)
/* 801E4C30  30 04 FF FF */	addic r0, r4, -1
/* 801E4C34  7C 00 21 10 */	subfe r0, r0, r4
/* 801E4C38  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 801E4C3C  48 00 37 FD */	bl yesnoMenuMoveAnm__14dMenu_Option_cFv
/* 801E4C40  7C 7F 1B 78 */	mr r31, r3
/* 801E4C44  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4C48  C0 1D 03 74 */	lfs f0, 0x374(r29)
/* 801E4C4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801E4C50  41 82 00 38 */	beq lbl_801E4C88
/* 801E4C54  38 7D 03 74 */	addi r3, r29, 0x374
/* 801E4C58  C0 42 A9 64 */	lfs f2, lit_4893(r2)
/* 801E4C5C  C0 62 A9 50 */	lfs f3, lit_4471(r2)
/* 801E4C60  48 08 AD DD */	bl cLib_addCalc2__FPffff
/* 801E4C64  C0 1D 03 74 */	lfs f0, 0x374(r29)
/* 801E4C68  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4C6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E4C70  FC 00 02 10 */	fabs f0, f0
/* 801E4C74  FC 40 00 18 */	frsp f2, f0
/* 801E4C78  C0 02 A9 68 */	lfs f0, lit_4894(r2)
/* 801E4C7C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801E4C80  40 80 00 08 */	bge lbl_801E4C88
/* 801E4C84  D0 3D 03 74 */	stfs f1, 0x374(r29)
lbl_801E4C88:
/* 801E4C88  28 1E 00 01 */	cmplwi r30, 1
/* 801E4C8C  40 82 00 30 */	bne lbl_801E4CBC
/* 801E4C90  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801E4C94  28 00 00 01 */	cmplwi r0, 1
/* 801E4C98  40 82 00 24 */	bne lbl_801E4CBC
/* 801E4C9C  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4CA0  C0 1D 03 74 */	lfs f0, 0x374(r29)
/* 801E4CA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801E4CA8  40 82 00 14 */	bne lbl_801E4CBC
/* 801E4CAC  7F A3 EB 78 */	mr r3, r29
/* 801E4CB0  48 00 3B D9 */	bl yesnoCursorShow__14dMenu_Option_cFv
/* 801E4CB4  38 00 00 05 */	li r0, 5
/* 801E4CB8  98 1D 03 EF */	stb r0, 0x3ef(r29)
lbl_801E4CBC:
/* 801E4CBC  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 801E4CC0  4B FA D2 59 */	bl _move__15dFile_warning_cFv
/* 801E4CC4  7F A3 EB 78 */	mr r3, r29
/* 801E4CC8  4B FF EE 25 */	bl setAnimation__14dMenu_Option_cFv
/* 801E4CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 801E4CD0  48 17 D5 59 */	bl _restgpr_29
/* 801E4CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E4CD8  7C 08 03 A6 */	mtlr r0
/* 801E4CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 801E4CE0  4E 80 00 20 */	blr 
