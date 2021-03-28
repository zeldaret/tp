lbl_802E9840:
/* 802E9840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E9844  7C 08 02 A6 */	mflr r0
/* 802E9848  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E984C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E9850  7C 7F 1B 78 */	mr r31, r3
/* 802E9854  38 7F 00 80 */	addi r3, r31, 0x80
/* 802E9858  48 05 CC 2D */	bl PSMTXIdentity
/* 802E985C  38 7F 00 80 */	addi r3, r31, 0x80
/* 802E9860  38 80 00 00 */	li r4, 0
/* 802E9864  48 07 69 E9 */	bl GXLoadPosMtxImm
/* 802E9868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E986C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9870  7C 08 03 A6 */	mtlr r0
/* 802E9874  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9878  4E 80 00 20 */	blr 
