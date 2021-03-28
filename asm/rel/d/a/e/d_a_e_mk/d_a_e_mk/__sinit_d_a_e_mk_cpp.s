lbl_8071C434:
/* 8071C434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071C438  7C 08 02 A6 */	mflr r0
/* 8071C43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071C440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071C444  93 C1 00 08 */	stw r30, 8(r1)
/* 8071C448  3C 60 80 72 */	lis r3, lit_1109@ha
/* 8071C44C  3B C3 CA 68 */	addi r30, r3, lit_1109@l
/* 8071C450  3C 60 80 72 */	lis r3, lit_3777@ha
/* 8071C454  3B E3 C5 44 */	addi r31, r3, lit_3777@l
/* 8071C458  C0 1F 02 84 */	lfs f0, 0x284(r31)
/* 8071C45C  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 8071C460  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8071C464  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8071C468  D0 03 00 04 */	stfs f0, 4(r3)
/* 8071C46C  C0 1F 02 88 */	lfs f0, 0x288(r31)
/* 8071C470  D0 03 00 08 */	stfs f0, 8(r3)
/* 8071C474  3C 80 80 71 */	lis r4, __dt__4cXyzFv@ha
/* 8071C478  38 84 44 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 8071C47C  38 BE 00 40 */	addi r5, r30, 0x40
/* 8071C480  4B FF 7C 39 */	bl __register_global_object
/* 8071C484  C0 1F 02 8C */	lfs f0, 0x28c(r31)
/* 8071C488  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8071C48C  C0 1F 02 90 */	lfs f0, 0x290(r31)
/* 8071C490  38 7E 00 64 */	addi r3, r30, 0x64
/* 8071C494  D0 03 00 04 */	stfs f0, 4(r3)
/* 8071C498  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 8071C49C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8071C4A0  3C 80 80 71 */	lis r4, __dt__4cXyzFv@ha
/* 8071C4A4  38 84 44 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 8071C4A8  38 BE 00 58 */	addi r5, r30, 0x58
/* 8071C4AC  4B FF 7C 0D */	bl __register_global_object
/* 8071C4B0  C0 1F 02 98 */	lfs f0, 0x298(r31)
/* 8071C4B4  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 8071C4B8  C0 1F 02 9C */	lfs f0, 0x29c(r31)
/* 8071C4BC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 8071C4C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8071C4C4  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 8071C4C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8071C4CC  3C 80 80 71 */	lis r4, __dt__4cXyzFv@ha
/* 8071C4D0  38 84 44 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 8071C4D4  38 BE 00 70 */	addi r5, r30, 0x70
/* 8071C4D8  4B FF 7B E1 */	bl __register_global_object
/* 8071C4DC  38 7E 00 94 */	addi r3, r30, 0x94
/* 8071C4E0  3C 80 80 71 */	lis r4, __dt__4cXyzFv@ha
/* 8071C4E4  38 84 44 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 8071C4E8  38 BE 00 88 */	addi r5, r30, 0x88
/* 8071C4EC  4B FF 7B CD */	bl __register_global_object
/* 8071C4F0  38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8071C4F4  4B FF 7C 39 */	bl __ct__12daE_MK_HIO_cFv
/* 8071C4F8  3C 80 80 72 */	lis r4, __dt__12daE_MK_HIO_cFv@ha
/* 8071C4FC  38 84 C3 EC */	addi r4, r4, __dt__12daE_MK_HIO_cFv@l
/* 8071C500  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 8071C504  4B FF 7B B5 */	bl __register_global_object
/* 8071C508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071C50C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8071C510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071C514  7C 08 03 A6 */	mtlr r0
/* 8071C518  38 21 00 10 */	addi r1, r1, 0x10
/* 8071C51C  4E 80 00 20 */	blr 
