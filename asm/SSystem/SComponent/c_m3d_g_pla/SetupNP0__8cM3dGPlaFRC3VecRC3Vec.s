lbl_8026F4C4:
/* 8026F4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F4C8  7C 08 02 A6 */	mflr r0
/* 8026F4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F4D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8026F4D8  7C 7E 1B 78 */	mr r30, r3
/* 8026F4DC  7C BF 2B 78 */	mr r31, r5
/* 8026F4E0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F4E4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F4E8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F4EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026F4F0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F4F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026F4F8  7F C4 F3 78 */	mr r4, r30
/* 8026F4FC  48 0D 7B F9 */	bl PSVECNormalize
/* 8026F500  7F C3 F3 78 */	mr r3, r30
/* 8026F504  7F E4 FB 78 */	mr r4, r31
/* 8026F508  48 0D 7C 8D */	bl PSVECDotProduct
/* 8026F50C  FC 00 08 50 */	fneg f0, f1
/* 8026F510  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8026F514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F518  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026F51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F520  7C 08 03 A6 */	mtlr r0
/* 8026F524  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F528  4E 80 00 20 */	blr 
