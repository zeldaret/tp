lbl_80D59058:
/* 80D59058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5905C  7C 08 02 A6 */	mflr r0
/* 80D59060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59064  4B FF F8 DD */	bl execute__13daTag_FWall_cFv
/* 80D59068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5906C  7C 08 03 A6 */	mtlr r0
/* 80D59070  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59074  4E 80 00 20 */	blr 
