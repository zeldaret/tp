lbl_80847E44:
/* 80847E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80847E48  7C 08 02 A6 */	mflr r0
/* 80847E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80847E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80847E54  93 C1 00 08 */	stw r30, 8(r1)
/* 80847E58  7C 7F 1B 78 */	mr r31, r3
/* 80847E5C  3C 60 80 85 */	lis r3, l_arcName@ha /* 0x80848E3C@ha */
/* 80847E60  3B C3 8E 3C */	addi r30, r3, l_arcName@l /* 0x80848E3C@l */
/* 80847E64  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80847E68  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80847E6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80847E70  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80847E74  38 9E 00 38 */	addi r4, r30, 0x38
/* 80847E78  38 BF 05 38 */	addi r5, r31, 0x538
/* 80847E7C  4B AF EE F1 */	bl PSMTXMultVec
/* 80847E80  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80847E84  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80847E88  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80847E8C  EC 21 00 2A */	fadds f1, f1, f0
/* 80847E90  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80847E94  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80847E98  D0 3F 05 54 */	stfs f1, 0x554(r31)
/* 80847E9C  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 80847EA0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80847EA4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80847EA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80847EAC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80847EB0  38 9E 00 44 */	addi r4, r30, 0x44
/* 80847EB4  38 BF 06 F8 */	addi r5, r31, 0x6f8
/* 80847EB8  4B AF EE B5 */	bl PSMTXMultVec
/* 80847EBC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80847EC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80847EC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80847EC8  38 63 03 30 */	addi r3, r3, 0x330
/* 80847ECC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80847ED0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80847ED4  4B AF E5 DD */	bl PSMTXCopy
/* 80847ED8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80847EDC  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 80847EE0  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 80847EE4  4B 7C 4E B9 */	bl transM__14mDoMtx_stack_cFfff
/* 80847EE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80847EEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80847EF0  38 80 43 8E */	li r4, 0x438e
/* 80847EF4  38 A0 00 00 */	li r5, 0
/* 80847EF8  38 C0 07 1C */	li r6, 0x71c
/* 80847EFC  4B 7C 42 69 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 80847F00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80847F04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80847F08  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80847F0C  38 84 00 24 */	addi r4, r4, 0x24
/* 80847F10  4B AF E5 A1 */	bl PSMTXCopy
/* 80847F14  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80847F18  80 83 00 04 */	lwz r4, 4(r3)
/* 80847F1C  38 7F 06 A8 */	addi r3, r31, 0x6a8
/* 80847F20  C0 3F 06 B8 */	lfs f1, 0x6b8(r31)
/* 80847F24  4B 7C 5A A9 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80847F28  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80847F2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80847F30  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80847F34  7D 89 03 A6 */	mtctr r12
/* 80847F38  4E 80 04 21 */	bctrl 
/* 80847F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80847F40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80847F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80847F48  7C 08 03 A6 */	mtlr r0
/* 80847F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80847F50  4E 80 00 20 */	blr 
