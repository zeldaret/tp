lbl_80D12F30:
/* 80D12F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12F34  7C 08 02 A6 */	mflr r0
/* 80D12F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12F3C  4B FF FE 85 */	bl execute__12daObjTMoon_cFv
/* 80D12F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12F44  7C 08 03 A6 */	mtlr r0
/* 80D12F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12F4C  4E 80 00 20 */	blr 
