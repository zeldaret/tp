lbl_80875948:
/* 80875948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8087594C  7C 08 02 A6 */	mflr r0
/* 80875950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875954  3C 60 80 88 */	lis r3, daMP_ReadedBufferQueue2@ha /* 0x80879DE4@ha */
/* 80875958  38 63 9D E4 */	addi r3, r3, daMP_ReadedBufferQueue2@l /* 0x80879DE4@l */
/* 8087595C  38 81 00 08 */	addi r4, r1, 8
/* 80875960  38 A0 00 01 */	li r5, 1
/* 80875964  4B AC 91 59 */	bl OSReceiveMessage
/* 80875968  80 61 00 08 */	lwz r3, 8(r1)
/* 8087596C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80875970  7C 08 03 A6 */	mtlr r0
/* 80875974  38 21 00 10 */	addi r1, r1, 0x10
/* 80875978  4E 80 00 20 */	blr 
