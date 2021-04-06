lbl_80D46768:
/* 80D46768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4676C  7C 08 02 A6 */	mflr r0
/* 80D46770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D46774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D46778  7C 7F 1B 78 */	mr r31, r3
/* 80D4677C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D46780  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D46784  40 82 00 1C */	bne lbl_80D467A0
/* 80D46788  28 1F 00 00 */	cmplwi r31, 0
/* 80D4678C  41 82 00 08 */	beq lbl_80D46794
/* 80D46790  4B 2D 23 D5 */	bl __ct__10fopAc_ac_cFv
lbl_80D46794:
/* 80D46794  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D46798  60 00 00 08 */	ori r0, r0, 8
/* 80D4679C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D467A0:
/* 80D467A0  7F E3 FB 78 */	mr r3, r31
/* 80D467A4  48 00 00 1D */	bl create_init__13daPasserMng_cFv
/* 80D467A8  38 60 00 04 */	li r3, 4
/* 80D467AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D467B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D467B4  7C 08 03 A6 */	mtlr r0
/* 80D467B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D467BC  4E 80 00 20 */	blr 
