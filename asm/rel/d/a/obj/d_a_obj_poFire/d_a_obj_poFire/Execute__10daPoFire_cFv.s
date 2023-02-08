lbl_80CB2BB8:
/* 80CB2BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2BBC  7C 08 02 A6 */	mflr r0
/* 80CB2BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2BC8  7C 7F 1B 78 */	mr r31, r3
/* 80CB2BCC  38 7F 05 70 */	addi r3, r31, 0x570
/* 80CB2BD0  4B 39 5C 9D */	bl eventUpdate__17dEvLib_callback_cFv
/* 80CB2BD4  7F E3 FB 78 */	mr r3, r31
/* 80CB2BD8  48 00 00 25 */	bl procMain__10daPoFire_cFv
/* 80CB2BDC  7F E3 FB 78 */	mr r3, r31
/* 80CB2BE0  4B FF FE 2D */	bl setBaseMtx__10daPoFire_cFv
/* 80CB2BE4  38 60 00 01 */	li r3, 1
/* 80CB2BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB2BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2BF0  7C 08 03 A6 */	mtlr r0
/* 80CB2BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2BF8  4E 80 00 20 */	blr 
