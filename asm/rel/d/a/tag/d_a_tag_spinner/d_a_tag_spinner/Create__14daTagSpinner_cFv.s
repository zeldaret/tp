lbl_80D6191C:
/* 80D6191C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61920  7C 08 02 A6 */	mflr r0
/* 80D61924  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D6192C  7C 7F 1B 78 */	mr r31, r3
/* 80D61930  4B FF FF 75 */	bl initBaseMtx__14daTagSpinner_cFv
/* 80D61934  3C 60 80 D6 */	lis r3, lit_3715@ha /* 0x80D61B44@ha */
/* 80D61938  C0 23 1B 44 */	lfs f1, lit_3715@l(r3)  /* 0x80D61B44@l */
/* 80D6193C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D61940  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D61944  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80D61948  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D6194C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D61950  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80D61954  38 60 00 01 */	li r3, 1
/* 80D61958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D6195C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61960  7C 08 03 A6 */	mtlr r0
/* 80D61964  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61968  4E 80 00 20 */	blr 
