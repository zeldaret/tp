lbl_80A62B00:
/* 80A62B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62B04  7C 08 02 A6 */	mflr r0
/* 80A62B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62B10  7C 7F 1B 78 */	mr r31, r3
/* 80A62B14  3C 80 80 A6 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A6410C@ha */
/* 80A62B18  38 04 41 0C */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80A6410C@l */
/* 80A62B1C  90 03 00 04 */	stw r0, 4(r3)
/* 80A62B20  4B 6E 2B B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A62B24  7F E3 FB 78 */	mr r3, r31
/* 80A62B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62B30  7C 08 03 A6 */	mtlr r0
/* 80A62B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80A62B38  4E 80 00 20 */	blr 
