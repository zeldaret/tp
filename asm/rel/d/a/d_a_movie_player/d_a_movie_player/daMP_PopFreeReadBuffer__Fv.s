lbl_808758E4:
/* 808758E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808758E8  7C 08 02 A6 */	mflr r0
/* 808758EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808758F0  3C 60 80 88 */	lis r3, daMP_FreeReadBufferQueue@ha /* 0x80879DA4@ha */
/* 808758F4  38 63 9D A4 */	addi r3, r3, daMP_FreeReadBufferQueue@l /* 0x80879DA4@l */
/* 808758F8  38 81 00 08 */	addi r4, r1, 8
/* 808758FC  38 A0 00 01 */	li r5, 1
/* 80875900  4B AC 91 BD */	bl OSReceiveMessage
/* 80875904  80 61 00 08 */	lwz r3, 8(r1)
/* 80875908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8087590C  7C 08 03 A6 */	mtlr r0
/* 80875910  38 21 00 10 */	addi r1, r1, 0x10
/* 80875914  4E 80 00 20 */	blr 
