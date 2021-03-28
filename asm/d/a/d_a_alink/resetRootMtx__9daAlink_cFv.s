lbl_8009EB18:
/* 8009EB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EB1C  7C 08 02 A6 */	mflr r0
/* 8009EB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009EB28  7C 7F 1B 78 */	mr r31, r3
/* 8009EB2C  38 7F 2C 18 */	addi r3, r31, 0x2c18
/* 8009EB30  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8009EB34  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8009EB38  48 2A 79 79 */	bl PSMTXCopy
/* 8009EB3C  38 00 00 00 */	li r0, 0
/* 8009EB40  98 1F 2F 90 */	stb r0, 0x2f90(r31)
/* 8009EB44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009EB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EB4C  7C 08 03 A6 */	mtlr r0
/* 8009EB50  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EB54  4E 80 00 20 */	blr 
