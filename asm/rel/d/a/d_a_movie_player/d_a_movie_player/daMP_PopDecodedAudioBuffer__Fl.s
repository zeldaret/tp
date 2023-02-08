lbl_808761CC:
/* 808761CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808761D0  7C 08 02 A6 */	mflr r0
/* 808761D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808761D8  7C 65 1B 78 */	mr r5, r3
/* 808761DC  3C 60 80 94 */	lis r3, daMP_DecodedAudioBufferQueue@ha /* 0x80944850@ha */
/* 808761E0  38 63 48 50 */	addi r3, r3, daMP_DecodedAudioBufferQueue@l /* 0x80944850@l */
/* 808761E4  38 81 00 08 */	addi r4, r1, 8
/* 808761E8  4B AC 88 D5 */	bl OSReceiveMessage
/* 808761EC  2C 03 00 01 */	cmpwi r3, 1
/* 808761F0  40 82 00 0C */	bne lbl_808761FC
/* 808761F4  80 61 00 08 */	lwz r3, 8(r1)
/* 808761F8  48 00 00 08 */	b lbl_80876200
lbl_808761FC:
/* 808761FC  38 60 00 00 */	li r3, 0
lbl_80876200:
/* 80876200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80876204  7C 08 03 A6 */	mtlr r0
/* 80876208  38 21 00 10 */	addi r1, r1, 0x10
/* 8087620C  4E 80 00 20 */	blr 
