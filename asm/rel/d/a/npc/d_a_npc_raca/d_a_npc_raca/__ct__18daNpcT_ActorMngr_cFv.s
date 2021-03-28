lbl_80AB80D0:
/* 80AB80D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB80D4  7C 08 02 A6 */	mflr r0
/* 80AB80D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB80DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB80E0  7C 7F 1B 78 */	mr r31, r3
/* 80AB80E4  3C 80 80 AC */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB80E8  38 04 94 18 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80AB80EC  90 03 00 04 */	stw r0, 4(r3)
/* 80AB80F0  4B 68 D5 E4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AB80F4  7F E3 FB 78 */	mr r3, r31
/* 80AB80F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB80FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8100  7C 08 03 A6 */	mtlr r0
/* 80AB8104  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8108  4E 80 00 20 */	blr 
