lbl_80C8F7CC:
/* 80C8F7CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8F7D0  7C 08 02 A6 */	mflr r0
/* 80C8F7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8F7D8  A8 83 05 DE */	lha r4, 0x5de(r3)
/* 80C8F7DC  2C 04 00 00 */	cmpwi r4, 0
/* 80C8F7E0  40 82 00 0C */	bne lbl_80C8F7EC
/* 80C8F7E4  4B FF FA 81 */	bl init_modeMove__14daMagLiftRot_cFv
/* 80C8F7E8  48 00 00 0C */	b lbl_80C8F7F4
lbl_80C8F7EC:
/* 80C8F7EC  38 04 FF FF */	addi r0, r4, -1
/* 80C8F7F0  B0 03 05 DE */	sth r0, 0x5de(r3)
lbl_80C8F7F4:
/* 80C8F7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8F7F8  7C 08 03 A6 */	mtlr r0
/* 80C8F7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8F800  4E 80 00 20 */	blr 
