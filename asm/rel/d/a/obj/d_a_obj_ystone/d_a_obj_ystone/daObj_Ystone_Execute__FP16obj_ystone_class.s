lbl_80D3E6EC:
/* 80D3E6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3E6F0  7C 08 02 A6 */	mflr r0
/* 80D3E6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3E6F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3E6FC  7C 7F 1B 78 */	mr r31, r3
/* 80D3E700  88 03 05 99 */	lbz r0, 0x599(r3)
/* 80D3E704  28 00 00 03 */	cmplwi r0, 3
/* 80D3E708  40 80 00 18 */	bge lbl_80D3E720
/* 80D3E70C  88 1F 05 9B */	lbz r0, 0x59b(r31)
/* 80D3E710  28 00 00 00 */	cmplwi r0, 0
/* 80D3E714  41 82 00 0C */	beq lbl_80D3E720
/* 80D3E718  38 60 00 01 */	li r3, 1
/* 80D3E71C  48 00 00 40 */	b lbl_80D3E75C
lbl_80D3E720:
/* 80D3E720  7F E3 FB 78 */	mr r3, r31
/* 80D3E724  4B FF FB 39 */	bl action__FP16obj_ystone_class
/* 80D3E728  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D3E72C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80D3E730  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D3E734  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D3E738  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D3E73C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80D3E740  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D3E744  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D3E748  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D3E74C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D3E750  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D3E754  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D3E758  38 60 00 01 */	li r3, 1
lbl_80D3E75C:
/* 80D3E75C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3E760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3E764  7C 08 03 A6 */	mtlr r0
/* 80D3E768  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3E76C  4E 80 00 20 */	blr 
