lbl_809D385C:
/* 809D385C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3860  7C 08 02 A6 */	mflr r0
/* 809D3864  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D3868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D386C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D3870  41 82 00 1C */	beq lbl_809D388C
/* 809D3874  3C A0 80 9D */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x809D3E18@ha */
/* 809D3878  38 05 3E 18 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x809D3E18@l */
/* 809D387C  90 1F 00 00 */	stw r0, 0(r31)
/* 809D3880  7C 80 07 35 */	extsh. r0, r4
/* 809D3884  40 81 00 08 */	ble lbl_809D388C
/* 809D3888  4B 8F B4 B5 */	bl __dl__FPv
lbl_809D388C:
/* 809D388C  7F E3 FB 78 */	mr r3, r31
/* 809D3890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D3894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3898  7C 08 03 A6 */	mtlr r0
/* 809D389C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D38A0  4E 80 00 20 */	blr 
