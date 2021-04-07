lbl_8029E2F8:
/* 8029E2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E2FC  7C 08 02 A6 */	mflr r0
/* 8029E300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E304  3C 60 80 43 */	lis r3, sUpdateDacCallback__9JASDriver@ha /* 0x80431E78@ha */
/* 8029E308  38 63 1E 78 */	addi r3, r3, sUpdateDacCallback__9JASDriver@l /* 0x80431E78@l */
/* 8029E30C  4B FF 1D B9 */	bl callback__14JASCallbackMgrFv
/* 8029E310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E314  7C 08 03 A6 */	mtlr r0
/* 8029E318  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E31C  4E 80 00 20 */	blr 
