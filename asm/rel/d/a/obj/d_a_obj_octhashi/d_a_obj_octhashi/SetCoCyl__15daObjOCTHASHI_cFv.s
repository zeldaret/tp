lbl_80CA4EA4:
/* 80CA4EA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA4EA8  7C 08 02 A6 */	mflr r0
/* 80CA4EAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA4EB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CA4EB4  7C 7F 1B 78 */	mr r31, r3
/* 80CA4EB8  38 7F 14 70 */	addi r3, r31, 0x1470
/* 80CA4EBC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CA4EC0  4B 5C A3 1D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CA4EC4  38 7F 14 70 */	addi r3, r31, 0x1470
/* 80CA4EC8  3C 80 80 CA */	lis r4, lit_3718@ha /* 0x80CA64DC@ha */
/* 80CA4ECC  C0 44 64 DC */	lfs f2, lit_3718@l(r4)  /* 0x80CA64DC@l */
/* 80CA4ED0  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80CA4ED4  3C 80 80 CA */	lis r4, lit_3686@ha /* 0x80CA64D0@ha */
/* 80CA4ED8  C8 24 64 D0 */	lfd f1, lit_3686@l(r4)  /* 0x80CA64D0@l */
/* 80CA4EDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA4EE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA4EE4  3C 00 43 30 */	lis r0, 0x4330
/* 80CA4EE8  90 01 00 08 */	stw r0, 8(r1)
/* 80CA4EEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CA4EF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CA4EF4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CA4EF8  4B 5C A3 01 */	bl SetH__8cM3dGCylFf
/* 80CA4EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA4F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA4F04  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CA4F08  38 9F 13 4C */	addi r4, r31, 0x134c
/* 80CA4F0C  4B 5B FC 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 80CA4F10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CA4F14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA4F18  7C 08 03 A6 */	mtlr r0
/* 80CA4F1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA4F20  4E 80 00 20 */	blr 
