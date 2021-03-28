lbl_80877F48:
/* 80877F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80877F4C  7C 08 02 A6 */	mflr r0
/* 80877F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80877F54  3C 60 80 94 */	lis r3, daMP_PrepareReadyQueue@ha
/* 80877F58  38 63 48 E0 */	addi r3, r3, daMP_PrepareReadyQueue@l
/* 80877F5C  38 81 00 08 */	addi r4, r1, 8
/* 80877F60  38 A0 00 01 */	li r5, 1
/* 80877F64  4B AC 6B 58 */	b OSReceiveMessage
/* 80877F68  80 61 00 08 */	lwz r3, 8(r1)
/* 80877F6C  7C 03 00 D0 */	neg r0, r3
/* 80877F70  7C 00 1B 78 */	or r0, r0, r3
/* 80877F74  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80877F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80877F7C  7C 08 03 A6 */	mtlr r0
/* 80877F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80877F84  4E 80 00 20 */	blr 
