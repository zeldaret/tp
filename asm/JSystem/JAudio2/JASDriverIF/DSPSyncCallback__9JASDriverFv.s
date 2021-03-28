lbl_8029E2D0:
/* 8029E2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E2D4  7C 08 02 A6 */	mflr r0
/* 8029E2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E2DC  3C 60 80 43 */	lis r3, sDspSyncCallback__9JASDriver@ha
/* 8029E2E0  38 63 1C 78 */	addi r3, r3, sDspSyncCallback__9JASDriver@l
/* 8029E2E4  4B FF 1D E1 */	bl callback__14JASCallbackMgrFv
/* 8029E2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E2EC  7C 08 03 A6 */	mtlr r0
/* 8029E2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E2F4  4E 80 00 20 */	blr 
