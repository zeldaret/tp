lbl_80CB2364:
/* 80CB2364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2368  7C 08 02 A6 */	mflr r0
/* 80CB236C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2370  4B FF FE 69 */	bl init_modeOnFire__12daPoCandle_cFv
/* 80CB2374  38 60 00 01 */	li r3, 1
/* 80CB2378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB237C  7C 08 03 A6 */	mtlr r0
/* 80CB2380  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2384  4E 80 00 20 */	blr 
