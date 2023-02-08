lbl_809D3058:
/* 809D3058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D305C  7C 08 02 A6 */	mflr r0
/* 809D3060  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D3064  4B FF D0 DD */	bl create__11daNpc_Grd_cFv
/* 809D3068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D306C  7C 08 03 A6 */	mtlr r0
/* 809D3070  38 21 00 10 */	addi r1, r1, 0x10
/* 809D3074  4E 80 00 20 */	blr 
