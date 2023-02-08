lbl_802BD92C:
/* 802BD92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD930  7C 08 02 A6 */	mflr r0
/* 802BD934  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD938  7C 60 1B 78 */	mr r0, r3
/* 802BD93C  1C 66 00 74 */	mulli r3, r6, 0x74
/* 802BD940  38 63 01 34 */	addi r3, r3, 0x134
/* 802BD944  7C 60 1A 14 */	add r3, r0, r3
/* 802BD948  4B FF F3 35 */	bl convertAbsToRel__13Z2AudioCameraCFR3VecP3Vec
/* 802BD94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD950  7C 08 03 A6 */	mtlr r0
/* 802BD954  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD958  4E 80 00 20 */	blr 
