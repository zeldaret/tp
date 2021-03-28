lbl_80B51470:
/* 80B51470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B51474  7C 08 02 A6 */	mflr r0
/* 80B51478  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5147C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51480  7C 7F 1B 78 */	mr r31, r3
/* 80B51484  3C 80 80 B5 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80B51488  38 04 32 DC */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80B5148C  90 03 00 04 */	stw r0, 4(r3)
/* 80B51490  4B 5F 42 44 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B51494  7F E3 FB 78 */	mr r3, r31
/* 80B51498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5149C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B514A0  7C 08 03 A6 */	mtlr r0
/* 80B514A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B514A8  4E 80 00 20 */	blr 
