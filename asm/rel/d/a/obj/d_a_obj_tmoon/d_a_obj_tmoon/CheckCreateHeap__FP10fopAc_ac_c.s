lbl_80D12B98:
/* 80D12B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12B9C  7C 08 02 A6 */	mflr r0
/* 80D12BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12BA4  48 00 00 F9 */	bl CreateHeap__12daObjTMoon_cFv
/* 80D12BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12BAC  7C 08 03 A6 */	mtlr r0
/* 80D12BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12BB4  4E 80 00 20 */	blr 
