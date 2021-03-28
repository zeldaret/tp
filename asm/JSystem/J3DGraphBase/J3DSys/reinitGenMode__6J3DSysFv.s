lbl_8031079C:
/* 8031079C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803107A0  7C 08 02 A6 */	mflr r0
/* 803107A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803107A8  38 60 00 00 */	li r3, 0
/* 803107AC  48 04 D3 85 */	bl GXSetNumChans
/* 803107B0  38 60 00 01 */	li r3, 1
/* 803107B4  48 04 B6 49 */	bl GXSetNumTexGens
/* 803107B8  38 60 00 01 */	li r3, 1
/* 803107BC  48 04 F0 D5 */	bl GXSetNumTevStages
/* 803107C0  38 60 00 00 */	li r3, 0
/* 803107C4  48 04 E9 11 */	bl GXSetNumIndStages
/* 803107C8  38 60 00 02 */	li r3, 2
/* 803107CC  48 04 C1 B9 */	bl GXSetCullMode
/* 803107D0  38 60 00 00 */	li r3, 0
/* 803107D4  48 04 C1 D9 */	bl GXSetCoPlanar
/* 803107D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803107DC  7C 08 03 A6 */	mtlr r0
/* 803107E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803107E4  4E 80 00 20 */	blr 
