lbl_8048EF74:
/* 8048EF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EF78  7C 08 02 A6 */	mflr r0
/* 8048EF7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EF80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048EF84  7C 7F 1B 78 */	mr r31, r3
/* 8048EF88  3C 80 80 49 */	lis r4, lit_3697@ha /* 0x8048F14C@ha */
/* 8048EF8C  C0 24 F1 4C */	lfs f1, lit_3697@l(r4)  /* 0x8048F14C@l */
/* 8048EF90  FC 40 08 90 */	fmr f2, f1
/* 8048EF94  FC 60 08 90 */	fmr f3, f1
/* 8048EF98  FC 80 08 90 */	fmr f4, f1
/* 8048EF9C  FC A0 08 90 */	fmr f5, f1
/* 8048EFA0  FC C0 08 90 */	fmr f6, f1
/* 8048EFA4  4B B8 B5 A5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8048EFA8  A8 7F 04 B8 */	lha r3, 0x4b8(r31)
/* 8048EFAC  3C 03 00 00 */	addis r0, r3, 0
/* 8048EFB0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048EFB4  41 82 00 0C */	beq lbl_8048EFC0
/* 8048EFB8  90 7F 06 00 */	stw r3, 0x600(r31)
/* 8048EFBC  48 00 00 0C */	b lbl_8048EFC8
lbl_8048EFC0:
/* 8048EFC0  38 00 FF FF */	li r0, -1
/* 8048EFC4  90 1F 06 00 */	stw r0, 0x600(r31)
lbl_8048EFC8:
/* 8048EFC8  38 00 00 00 */	li r0, 0
/* 8048EFCC  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 8048EFD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8048EFD4  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 8048EFD8  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 8048EFDC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048EFE0  3C 60 80 49 */	lis r3, lit_3698@ha /* 0x8048F150@ha */
/* 8048EFE4  C0 23 F1 50 */	lfs f1, lit_3698@l(r3)  /* 0x8048F150@l */
/* 8048EFE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048EFEC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048EFF0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048EFF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048EFF8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048EFFC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048F000  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048F004  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048F008  7F E3 FB 78 */	mr r3, r31
/* 8048F00C  4B FF FD D1 */	bl Execute__15daTag_Lantern_cFv
/* 8048F010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048F014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F018  7C 08 03 A6 */	mtlr r0
/* 8048F01C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F020  4E 80 00 20 */	blr 
