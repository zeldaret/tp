lbl_802AB07C:
/* 802AB07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB080  7C 08 02 A6 */	mflr r0
/* 802AB084  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB08C  7C 7F 1B 78 */	mr r31, r3
/* 802AB090  48 03 0E 85 */	bl initiate__10JSUPtrListFv
/* 802AB094  38 00 00 00 */	li r0, 0
/* 802AB098  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802AB09C  7F E3 FB 78 */	mr r3, r31
/* 802AB0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB0A8  7C 08 03 A6 */	mtlr r0
/* 802AB0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB0B0  4E 80 00 20 */	blr 
