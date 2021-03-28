lbl_8026EE24:
/* 8026EE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026EE28  7C 08 02 A6 */	mflr r0
/* 8026EE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026EE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026EE34  7C 9F 23 78 */	mr r31, r4
/* 8026EE38  38 83 00 0C */	addi r4, r3, 0xc
/* 8026EE3C  7F E5 FB 78 */	mr r5, r31
/* 8026EE40  48 0D 82 51 */	bl PSVECAdd
/* 8026EE44  7F E3 FB 78 */	mr r3, r31
/* 8026EE48  7F E4 FB 78 */	mr r4, r31
/* 8026EE4C  C0 22 B7 D8 */	lfs f1, lit_493(r2)
/* 8026EE50  48 0D 82 89 */	bl PSVECScale
/* 8026EE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026EE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026EE5C  7C 08 03 A6 */	mtlr r0
/* 8026EE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8026EE64  4E 80 00 20 */	blr 
