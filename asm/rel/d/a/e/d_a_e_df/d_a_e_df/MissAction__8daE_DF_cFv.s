lbl_806A9254:
/* 806A9254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A9258  7C 08 02 A6 */	mflr r0
/* 806A925C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A9260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A9264  7C 7F 1B 78 */	mr r31, r3
/* 806A9268  3C 80 80 6B */	lis r4, lit_3916@ha /* 0x806A9F30@ha */
/* 806A926C  38 C4 9F 30 */	addi r6, r4, lit_3916@l /* 0x806A9F30@l */
/* 806A9270  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 806A9274  2C 00 00 01 */	cmpwi r0, 1
/* 806A9278  41 82 00 38 */	beq lbl_806A92B0
/* 806A927C  40 80 00 74 */	bge lbl_806A92F0
/* 806A9280  2C 00 00 00 */	cmpwi r0, 0
/* 806A9284  40 80 00 08 */	bge lbl_806A928C
/* 806A9288  48 00 00 68 */	b lbl_806A92F0
lbl_806A928C:
/* 806A928C  38 80 00 07 */	li r4, 7
/* 806A9290  38 A0 00 00 */	li r5, 0
/* 806A9294  C0 26 00 98 */	lfs f1, 0x98(r6)
/* 806A9298  C0 46 00 08 */	lfs f2, 8(r6)
/* 806A929C  4B FF E6 39 */	bl SetAnm__8daE_DF_cFiiff
/* 806A92A0  88 7F 05 AD */	lbz r3, 0x5ad(r31)
/* 806A92A4  38 03 00 01 */	addi r0, r3, 1
/* 806A92A8  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 806A92AC  48 00 00 44 */	b lbl_806A92F0
lbl_806A92B0:
/* 806A92B0  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A92B4  38 80 00 01 */	li r4, 1
/* 806A92B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A92BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A92C0  40 82 00 18 */	bne lbl_806A92D8
/* 806A92C4  C0 26 00 04 */	lfs f1, 4(r6)
/* 806A92C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A92CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A92D0  41 82 00 08 */	beq lbl_806A92D8
/* 806A92D4  38 80 00 00 */	li r4, 0
lbl_806A92D8:
/* 806A92D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A92DC  41 82 00 14 */	beq lbl_806A92F0
/* 806A92E0  38 00 00 00 */	li r0, 0
/* 806A92E4  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 806A92E8  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 806A92EC  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_806A92F0:
/* 806A92F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A92F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A92F8  7C 08 03 A6 */	mtlr r0
/* 806A92FC  38 21 00 10 */	addi r1, r1, 0x10
/* 806A9300  4E 80 00 20 */	blr 
