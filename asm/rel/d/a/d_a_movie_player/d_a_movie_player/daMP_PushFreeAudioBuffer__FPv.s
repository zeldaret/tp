lbl_8087619C:
/* 8087619C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808761A0  7C 08 02 A6 */	mflr r0
/* 808761A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808761A8  7C 64 1B 78 */	mr r4, r3
/* 808761AC  3C 60 80 94 */	lis r3, daMP_FreeAudioBufferQueue@ha /* 0x80944830@ha */
/* 808761B0  38 63 48 30 */	addi r3, r3, daMP_FreeAudioBufferQueue@l /* 0x80944830@l */
/* 808761B4  38 A0 00 00 */	li r5, 0
/* 808761B8  4B AC 88 3D */	bl OSSendMessage
/* 808761BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808761C0  7C 08 03 A6 */	mtlr r0
/* 808761C4  38 21 00 10 */	addi r1, r1, 0x10
/* 808761C8  4E 80 00 20 */	blr 
