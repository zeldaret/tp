lbl_80982B04:
/* 80982B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80982B08  7C 08 02 A6 */	mflr r0
/* 80982B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80982B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80982B14  93 C1 00 08 */	stw r30, 8(r1)
/* 80982B18  7C 7E 1B 78 */	mr r30, r3
/* 80982B1C  7C 9F 23 78 */	mr r31, r4
/* 80982B20  4B 69 61 C1 */	bl fopAc_IsActor__FPv
/* 80982B24  2C 03 00 00 */	cmpwi r3, 0
/* 80982B28  41 82 00 1C */	beq lbl_80982B44
/* 80982B2C  A8 1E 00 08 */	lha r0, 8(r30)
/* 80982B30  2C 00 02 8B */	cmpwi r0, 0x28b
/* 80982B34  40 82 00 10 */	bne lbl_80982B44
/* 80982B38  7F E3 FB 78 */	mr r3, r31
/* 80982B3C  7F C4 F3 78 */	mr r4, r30
/* 80982B40  48 00 25 91 */	bl setTalkMember__11daNpcChat_cFP11daNpcChat_c
lbl_80982B44:
/* 80982B44  38 60 00 00 */	li r3, 0
/* 80982B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80982B4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80982B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80982B54  7C 08 03 A6 */	mtlr r0
/* 80982B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80982B5C  4E 80 00 20 */	blr 
