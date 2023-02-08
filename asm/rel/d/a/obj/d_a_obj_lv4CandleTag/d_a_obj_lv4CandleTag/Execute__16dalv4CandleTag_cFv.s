lbl_80C5D5D4:
/* 80C5D5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D5D8  7C 08 02 A6 */	mflr r0
/* 80C5D5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5D5E4  7C 7F 1B 78 */	mr r31, r3
/* 80C5D5E8  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C5D5EC  4B 3E B2 81 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80C5D5F0  7F E3 FB 78 */	mr r3, r31
/* 80C5D5F4  48 00 00 25 */	bl procMain__16dalv4CandleTag_cFv
/* 80C5D5F8  7F E3 FB 78 */	mr r3, r31
/* 80C5D5FC  4B FF FE BD */	bl setBaseMtx__16dalv4CandleTag_cFv
/* 80C5D600  38 60 00 01 */	li r3, 1
/* 80C5D604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5D608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D60C  7C 08 03 A6 */	mtlr r0
/* 80C5D610  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D614  4E 80 00 20 */	blr 
