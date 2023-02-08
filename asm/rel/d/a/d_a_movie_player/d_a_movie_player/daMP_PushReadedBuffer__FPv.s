lbl_808758B4:
/* 808758B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808758B8  7C 08 02 A6 */	mflr r0
/* 808758BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808758C0  7C 64 1B 78 */	mr r4, r3
/* 808758C4  3C 60 80 88 */	lis r3, daMP_ReadedBufferQueue@ha /* 0x80879DC4@ha */
/* 808758C8  38 63 9D C4 */	addi r3, r3, daMP_ReadedBufferQueue@l /* 0x80879DC4@l */
/* 808758CC  38 A0 00 01 */	li r5, 1
/* 808758D0  4B AC 91 25 */	bl OSSendMessage
/* 808758D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808758D8  7C 08 03 A6 */	mtlr r0
/* 808758DC  38 21 00 10 */	addi r1, r1, 0x10
/* 808758E0  4E 80 00 20 */	blr 
