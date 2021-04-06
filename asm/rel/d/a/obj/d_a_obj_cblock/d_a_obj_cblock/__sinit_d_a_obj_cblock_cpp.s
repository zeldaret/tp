lbl_80BC6994:
/* 80BC6994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6998  7C 08 02 A6 */	mflr r0
/* 80BC699C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC69A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC69A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC69A8  3C 60 80 BC */	lis r3, lit_1109@ha /* 0x80BC6C50@ha */
/* 80BC69AC  3B C3 6C 50 */	addi r30, r3, lit_1109@l /* 0x80BC6C50@l */
/* 80BC69B0  3C 60 80 BC */	lis r3, l_cull_box@ha /* 0x80BC6A38@ha */
/* 80BC69B4  3B E3 6A 38 */	addi r31, r3, l_cull_box@l /* 0x80BC6A38@l */
/* 80BC69B8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BC69BC  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80BC69C0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80BC69C4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80BC69C8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC69CC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80BC69D0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC69D4  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha /* 0x80BC5CBC@ha */
/* 80BC69D8  38 84 5C BC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BC5CBC@l */
/* 80BC69DC  38 BE 00 40 */	addi r5, r30, 0x40
/* 80BC69E0  4B FF EF B9 */	bl __register_global_object
/* 80BC69E4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BC69E8  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80BC69EC  38 7E 00 64 */	addi r3, r30, 0x64
/* 80BC69F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC69F4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BC69F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC69FC  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha /* 0x80BC5CBC@ha */
/* 80BC6A00  38 84 5C BC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BC5CBC@l */
/* 80BC6A04  38 BE 00 58 */	addi r5, r30, 0x58
/* 80BC6A08  4B FF EF 91 */	bl __register_global_object
/* 80BC6A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC6A10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC6A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC6A18  7C 08 03 A6 */	mtlr r0
/* 80BC6A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC6A20  4E 80 00 20 */	blr 
