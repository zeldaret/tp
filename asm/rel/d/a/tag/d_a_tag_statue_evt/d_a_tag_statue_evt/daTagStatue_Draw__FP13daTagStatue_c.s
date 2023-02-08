lbl_805A8060:
/* 805A8060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8064  7C 08 02 A6 */	mflr r0
/* 805A8068  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A806C  4B FF FE A1 */	bl draw__13daTagStatue_cFv
/* 805A8070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8074  7C 08 03 A6 */	mtlr r0
/* 805A8078  38 21 00 10 */	addi r1, r1, 0x10
/* 805A807C  4E 80 00 20 */	blr 
