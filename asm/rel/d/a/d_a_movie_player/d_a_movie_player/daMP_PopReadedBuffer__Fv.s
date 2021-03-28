lbl_80875880:
/* 80875880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875884  7C 08 02 A6 */	mflr r0
/* 80875888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8087588C  3C 60 80 88 */	lis r3, daMP_ReadedBufferQueue@ha
/* 80875890  38 63 9D C4 */	addi r3, r3, daMP_ReadedBufferQueue@l
/* 80875894  38 81 00 08 */	addi r4, r1, 8
/* 80875898  38 A0 00 01 */	li r5, 1
/* 8087589C  4B AC 92 20 */	b OSReceiveMessage
/* 808758A0  80 61 00 08 */	lwz r3, 8(r1)
/* 808758A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808758A8  7C 08 03 A6 */	mtlr r0
/* 808758AC  38 21 00 10 */	addi r1, r1, 0x10
/* 808758B0  4E 80 00 20 */	blr 
