lbl_80C5CBA4:
/* 80C5CBA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CBA8  7C 08 02 A6 */	mflr r0
/* 80C5CBAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CBB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5CBB4  7C 7F 1B 78 */	mr r31, r3
/* 80C5CBB8  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C5CBBC  4B 3E BC B1 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80C5CBC0  7F E3 FB 78 */	mr r3, r31
/* 80C5CBC4  48 00 00 25 */	bl procMain__20dalv4CandleDemoTag_cFv
/* 80C5CBC8  7F E3 FB 78 */	mr r3, r31
/* 80C5CBCC  4B FF FE 8D */	bl setBaseMtx__20dalv4CandleDemoTag_cFv
/* 80C5CBD0  38 60 00 01 */	li r3, 1
/* 80C5CBD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5CBD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CBDC  7C 08 03 A6 */	mtlr r0
/* 80C5CBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CBE4  4E 80 00 20 */	blr 
