lbl_80D12F70:
/* 80D12F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12F74  7C 08 02 A6 */	mflr r0
/* 80D12F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12F7C  4B FF FD 91 */	bl create__12daObjTMoon_cFv
/* 80D12F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12F84  7C 08 03 A6 */	mtlr r0
/* 80D12F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12F8C  4E 80 00 20 */	blr 
