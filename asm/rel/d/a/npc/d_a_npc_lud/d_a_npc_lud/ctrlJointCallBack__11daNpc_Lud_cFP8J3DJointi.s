lbl_80A6B704:
/* 80A6B704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6B708  7C 08 02 A6 */	mflr r0
/* 80A6B70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6B710  7C 60 1B 78 */	mr r0, r3
/* 80A6B714  2C 04 00 00 */	cmpwi r4, 0
/* 80A6B718  40 82 00 30 */	bne lbl_80A6B748
/* 80A6B71C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A6B720  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A6B724  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A6B728  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A6B72C  28 03 00 00 */	cmplwi r3, 0
/* 80A6B730  41 82 00 18 */	beq lbl_80A6B748
/* 80A6B734  7C 04 03 78 */	mr r4, r0
/* 80A6B738  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A6B73C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A6B740  7D 89 03 A6 */	mtctr r12
/* 80A6B744  4E 80 04 21 */	bctrl 
lbl_80A6B748:
/* 80A6B748  38 60 00 01 */	li r3, 1
/* 80A6B74C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6B750  7C 08 03 A6 */	mtlr r0
/* 80A6B754  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6B758  4E 80 00 20 */	blr 
