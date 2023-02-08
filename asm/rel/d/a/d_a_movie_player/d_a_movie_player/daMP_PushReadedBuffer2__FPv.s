lbl_8087597C:
/* 8087597C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875980  7C 08 02 A6 */	mflr r0
/* 80875984  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875988  7C 64 1B 78 */	mr r4, r3
/* 8087598C  3C 60 80 88 */	lis r3, daMP_ReadedBufferQueue2@ha /* 0x80879DE4@ha */
/* 80875990  38 63 9D E4 */	addi r3, r3, daMP_ReadedBufferQueue2@l /* 0x80879DE4@l */
/* 80875994  38 A0 00 01 */	li r5, 1
/* 80875998  4B AC 90 5D */	bl OSSendMessage
/* 8087599C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808759A0  7C 08 03 A6 */	mtlr r0
/* 808759A4  38 21 00 10 */	addi r1, r1, 0x10
/* 808759A8  4E 80 00 20 */	blr 
