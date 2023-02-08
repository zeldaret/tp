lbl_80D22424:
/* 80D22424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D22428  7C 08 02 A6 */	mflr r0
/* 80D2242C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D22430  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80D22434  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80D22438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2243C  7C 7F 1B 78 */	mr r31, r3
/* 80D22440  4B FF F6 D9 */	bl getData__15daObjVolcBall_cFv
/* 80D22444  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80D22448  7F E3 FB 78 */	mr r3, r31
/* 80D2244C  4B FF F6 CD */	bl getData__15daObjVolcBall_cFv
/* 80D22450  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D22454  D3 FF 05 30 */	stfs f31, 0x530(r31)
/* 80D22458  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80D2245C  7F E3 FB 78 */	mr r3, r31
/* 80D22460  48 00 00 25 */	bl action__15daObjVolcBall_cFv
/* 80D22464  38 60 00 01 */	li r3, 1
/* 80D22468  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80D2246C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80D22470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D22474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D22478  7C 08 03 A6 */	mtlr r0
/* 80D2247C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D22480  4E 80 00 20 */	blr 
