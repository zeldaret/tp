lbl_80A387BC:
/* 80A387BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A387C0  7C 08 02 A6 */	mflr r0
/* 80A387C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A387C8  7C 80 23 78 */	mr r0, r4
/* 80A387CC  7C C7 33 78 */	mr r7, r6
/* 80A387D0  38 85 00 58 */	addi r4, r5, 0x58
/* 80A387D4  7C 05 03 78 */	mr r5, r0
/* 80A387D8  38 C0 00 01 */	li r6, 1
/* 80A387DC  39 00 00 00 */	li r8, 0
/* 80A387E0  39 20 FF FF */	li r9, -1
/* 80A387E4  38 63 06 88 */	addi r3, r3, 0x688
/* 80A387E8  4B 5D 4E 55 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80A387EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A387F0  7C 08 03 A6 */	mtlr r0
/* 80A387F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A387F8  4E 80 00 20 */	blr 
