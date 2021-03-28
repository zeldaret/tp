lbl_80998A24:
/* 80998A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80998A28  7C 08 02 A6 */	mflr r0
/* 80998A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80998A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80998A34  7C 7F 1B 78 */	mr r31, r3
/* 80998A38  3C 80 80 9A */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80998A3C  38 04 9F 30 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80998A40  90 03 00 04 */	stw r0, 4(r3)
/* 80998A44  4B 7A CC 90 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80998A48  7F E3 FB 78 */	mr r3, r31
/* 80998A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80998A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80998A54  7C 08 03 A6 */	mtlr r0
/* 80998A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80998A5C  4E 80 00 20 */	blr 
