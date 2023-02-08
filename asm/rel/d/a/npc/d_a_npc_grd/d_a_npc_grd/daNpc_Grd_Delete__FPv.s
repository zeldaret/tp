lbl_809D3078:
/* 809D3078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D307C  7C 08 02 A6 */	mflr r0
/* 809D3080  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D3084  4B FF D7 D5 */	bl Delete__11daNpc_Grd_cFv
/* 809D3088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D308C  7C 08 03 A6 */	mtlr r0
/* 809D3090  38 21 00 10 */	addi r1, r1, 0x10
/* 809D3094  4E 80 00 20 */	blr 
