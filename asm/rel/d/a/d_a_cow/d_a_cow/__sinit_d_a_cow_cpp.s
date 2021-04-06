lbl_80662CCC:
/* 80662CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80662CD0  7C 08 02 A6 */	mflr r0
/* 80662CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80662CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80662CDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80662CE0  3C 60 80 66 */	lis r3, lit_1109@ha /* 0x80663460@ha */
/* 80662CE4  3B C3 34 60 */	addi r30, r3, lit_1109@l /* 0x80663460@l */
/* 80662CE8  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 80662CEC  3B E3 2D B0 */	addi r31, r3, lit_3987@l /* 0x80662DB0@l */
/* 80662CF0  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80662CF4  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80662CF8  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80662CFC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80662D00  D0 03 00 04 */	stfs f0, 4(r3)
/* 80662D04  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80662D08  D0 03 00 08 */	stfs f0, 8(r3)
/* 80662D0C  3C 80 80 66 */	lis r4, __dt__4cXyzFv@ha /* 0x80658A68@ha */
/* 80662D10  38 84 8A 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80658A68@l */
/* 80662D14  38 BE 00 40 */	addi r5, r30, 0x40
/* 80662D18  4B FF 58 41 */	bl __register_global_object
/* 80662D1C  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 80662D20  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80662D24  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80662D28  38 7E 00 64 */	addi r3, r30, 0x64
/* 80662D2C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80662D30  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 80662D34  D0 03 00 08 */	stfs f0, 8(r3)
/* 80662D38  3C 80 80 66 */	lis r4, __dt__4cXyzFv@ha /* 0x80658A68@ha */
/* 80662D3C  38 84 8A 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80658A68@l */
/* 80662D40  38 BE 00 58 */	addi r5, r30, 0x58
/* 80662D44  4B FF 58 15 */	bl __register_global_object
/* 80662D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80662D4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80662D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80662D54  7C 08 03 A6 */	mtlr r0
/* 80662D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80662D5C  4E 80 00 20 */	blr 
