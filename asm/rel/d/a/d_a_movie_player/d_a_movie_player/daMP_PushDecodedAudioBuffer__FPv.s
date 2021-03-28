lbl_80876210:
/* 80876210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80876214  7C 08 02 A6 */	mflr r0
/* 80876218  90 01 00 14 */	stw r0, 0x14(r1)
/* 8087621C  7C 64 1B 78 */	mr r4, r3
/* 80876220  3C 60 80 94 */	lis r3, daMP_DecodedAudioBufferQueue@ha
/* 80876224  38 63 48 50 */	addi r3, r3, daMP_DecodedAudioBufferQueue@l
/* 80876228  38 A0 00 01 */	li r5, 1
/* 8087622C  4B AC 87 C8 */	b OSSendMessage
/* 80876230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80876234  7C 08 03 A6 */	mtlr r0
/* 80876238  38 21 00 10 */	addi r1, r1, 0x10
/* 8087623C  4E 80 00 20 */	blr 
