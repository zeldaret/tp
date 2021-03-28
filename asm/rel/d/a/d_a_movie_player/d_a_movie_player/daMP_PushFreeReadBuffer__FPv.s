lbl_80875918:
/* 80875918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8087591C  7C 08 02 A6 */	mflr r0
/* 80875920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875924  7C 64 1B 78 */	mr r4, r3
/* 80875928  3C 60 80 88 */	lis r3, daMP_FreeReadBufferQueue@ha
/* 8087592C  38 63 9D A4 */	addi r3, r3, daMP_FreeReadBufferQueue@l
/* 80875930  38 A0 00 01 */	li r5, 1
/* 80875934  4B AC 90 C0 */	b OSSendMessage
/* 80875938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8087593C  7C 08 03 A6 */	mtlr r0
/* 80875940  38 21 00 10 */	addi r1, r1, 0x10
/* 80875944  4E 80 00 20 */	blr 
