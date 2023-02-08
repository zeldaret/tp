lbl_80876168:
/* 80876168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8087616C  7C 08 02 A6 */	mflr r0
/* 80876170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80876174  3C 60 80 94 */	lis r3, daMP_FreeAudioBufferQueue@ha /* 0x80944830@ha */
/* 80876178  38 63 48 30 */	addi r3, r3, daMP_FreeAudioBufferQueue@l /* 0x80944830@l */
/* 8087617C  38 81 00 08 */	addi r4, r1, 8
/* 80876180  38 A0 00 01 */	li r5, 1
/* 80876184  4B AC 89 39 */	bl OSReceiveMessage
/* 80876188  80 61 00 08 */	lwz r3, 8(r1)
/* 8087618C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80876190  7C 08 03 A6 */	mtlr r0
/* 80876194  38 21 00 10 */	addi r1, r1, 0x10
/* 80876198  4E 80 00 20 */	blr 
