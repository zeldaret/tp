lbl_80C6A034:
/* 80C6A034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A038  7C 08 02 A6 */	mflr r0
/* 80C6A03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A044  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6A048  7C 7E 1B 78 */	mr r30, r3
/* 80C6A04C  3C 60 80 C7 */	lis r3, lit_3679@ha /* 0x80C6A3B8@ha */
/* 80C6A050  3B E3 A3 B8 */	addi r31, r3, lit_3679@l /* 0x80C6A3B8@l */
/* 80C6A054  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80C6A058  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C6A05C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80C6A060  4B 60 66 E1 */	bl cLib_chaseF__FPfff
/* 80C6A064  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C6A068  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6A06C  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 80C6A070  4B 60 66 D1 */	bl cLib_chaseF__FPfff
/* 80C6A074  2C 03 00 00 */	cmpwi r3, 0
/* 80C6A078  41 82 00 0C */	beq lbl_80C6A084
/* 80C6A07C  7F C3 F3 78 */	mr r3, r30
/* 80C6A080  48 00 00 1D */	bl mode_init_dead__14daObjLv4Sand_cFv
lbl_80C6A084:
/* 80C6A084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A088  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6A08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A090  7C 08 03 A6 */	mtlr r0
/* 80C6A094  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A098  4E 80 00 20 */	blr 
