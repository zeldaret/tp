lbl_80D0CEB4:
/* 80D0CEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0CEB8  7C 08 02 A6 */	mflr r0
/* 80D0CEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0CEC0  38 03 05 6C */	addi r0, r3, 0x56c
/* 80D0CEC4  90 04 00 00 */	stw r0, 0(r4)
/* 80D0CEC8  4B FF F4 8D */	bl setBaseMtx__13daObjTHASHI_cFv
/* 80D0CECC  38 60 00 01 */	li r3, 1
/* 80D0CED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0CED4  7C 08 03 A6 */	mtlr r0
/* 80D0CED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0CEDC  4E 80 00 20 */	blr 
