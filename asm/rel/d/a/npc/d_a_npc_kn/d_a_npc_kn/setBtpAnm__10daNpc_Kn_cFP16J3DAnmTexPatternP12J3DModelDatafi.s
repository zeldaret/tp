lbl_80A3877C:
/* 80A3877C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A38780  7C 08 02 A6 */	mflr r0
/* 80A38784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A38788  7C 80 23 78 */	mr r0, r4
/* 80A3878C  7C C7 33 78 */	mr r7, r6
/* 80A38790  38 85 00 58 */	addi r4, r5, 0x58
/* 80A38794  7C 05 03 78 */	mr r5, r0
/* 80A38798  38 C0 00 01 */	li r6, 1
/* 80A3879C  39 00 00 00 */	li r8, 0
/* 80A387A0  39 20 FF FF */	li r9, -1
/* 80A387A4  38 63 06 70 */	addi r3, r3, 0x670
/* 80A387A8  4B 5D 4D A5 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80A387AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A387B0  7C 08 03 A6 */	mtlr r0
/* 80A387B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A387B8  4E 80 00 20 */	blr 
