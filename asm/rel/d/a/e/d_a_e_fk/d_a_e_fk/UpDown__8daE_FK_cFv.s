lbl_806BA61C:
/* 806BA61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BA620  7C 08 02 A6 */	mflr r0
/* 806BA624  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BA628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BA62C  7C 7F 1B 78 */	mr r31, r3
/* 806BA630  3C 60 80 6C */	lis r3, lit_3826@ha /* 0x806BB6D0@ha */
/* 806BA634  38 83 B6 D0 */	addi r4, r3, lit_3826@l /* 0x806BB6D0@l */
/* 806BA638  88 1F 05 B1 */	lbz r0, 0x5b1(r31)
/* 806BA63C  2C 00 00 01 */	cmpwi r0, 1
/* 806BA640  41 82 00 48 */	beq lbl_806BA688
/* 806BA644  40 80 00 74 */	bge lbl_806BA6B8
/* 806BA648  2C 00 00 00 */	cmpwi r0, 0
/* 806BA64C  40 80 00 08 */	bge lbl_806BA654
/* 806BA650  48 00 00 68 */	b lbl_806BA6B8
lbl_806BA654:
/* 806BA654  A8 1F 05 C8 */	lha r0, 0x5c8(r31)
/* 806BA658  2C 00 00 00 */	cmpwi r0, 0
/* 806BA65C  40 82 00 18 */	bne lbl_806BA674
/* 806BA660  38 00 00 0F */	li r0, 0xf
/* 806BA664  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 806BA668  88 7F 05 B1 */	lbz r3, 0x5b1(r31)
/* 806BA66C  38 03 00 01 */	addi r0, r3, 1
/* 806BA670  98 1F 05 B1 */	stb r0, 0x5b1(r31)
lbl_806BA674:
/* 806BA674  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806BA678  C0 24 01 1C */	lfs f1, 0x11c(r4)
/* 806BA67C  C0 44 00 FC */	lfs f2, 0xfc(r4)
/* 806BA680  4B BB 60 C1 */	bl cLib_chaseF__FPfff
/* 806BA684  48 00 00 34 */	b lbl_806BA6B8
lbl_806BA688:
/* 806BA688  A8 1F 05 C8 */	lha r0, 0x5c8(r31)
/* 806BA68C  2C 00 00 00 */	cmpwi r0, 0
/* 806BA690  40 82 00 18 */	bne lbl_806BA6A8
/* 806BA694  38 00 00 0F */	li r0, 0xf
/* 806BA698  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 806BA69C  88 7F 05 B1 */	lbz r3, 0x5b1(r31)
/* 806BA6A0  38 03 FF FF */	addi r0, r3, -1
/* 806BA6A4  98 1F 05 B1 */	stb r0, 0x5b1(r31)
lbl_806BA6A8:
/* 806BA6A8  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806BA6AC  C0 24 01 20 */	lfs f1, 0x120(r4)
/* 806BA6B0  C0 44 00 FC */	lfs f2, 0xfc(r4)
/* 806BA6B4  4B BB 60 8D */	bl cLib_chaseF__FPfff
lbl_806BA6B8:
/* 806BA6B8  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 806BA6BC  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 806BA6C0  EC 01 00 2A */	fadds f0, f1, f0
/* 806BA6C4  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 806BA6C8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806BA6CC  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 806BA6D0  EC 01 00 2A */	fadds f0, f1, f0
/* 806BA6D4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806BA6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BA6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BA6E0  7C 08 03 A6 */	mtlr r0
/* 806BA6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806BA6E8  4E 80 00 20 */	blr 
