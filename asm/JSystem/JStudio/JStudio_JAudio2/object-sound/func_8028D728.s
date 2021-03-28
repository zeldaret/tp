lbl_8028D728:
/* 8028D728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D72C  7C 08 02 A6 */	mflr r0
/* 8028D730  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D734  38 80 00 00 */	li r4, 0
/* 8028D738  38 63 00 48 */	addi r3, r3, 0x48
/* 8028D73C  48 01 56 79 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 8028D740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D744  7C 08 03 A6 */	mtlr r0
/* 8028D748  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D74C  4E 80 00 20 */	blr 
