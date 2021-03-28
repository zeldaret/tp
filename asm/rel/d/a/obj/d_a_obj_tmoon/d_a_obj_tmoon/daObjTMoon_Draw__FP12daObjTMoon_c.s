lbl_80D12F10:
/* 80D12F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12F14  7C 08 02 A6 */	mflr r0
/* 80D12F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12F1C  4B FF FF 99 */	bl draw__12daObjTMoon_cFv
/* 80D12F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12F24  7C 08 03 A6 */	mtlr r0
/* 80D12F28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12F2C  4E 80 00 20 */	blr 
