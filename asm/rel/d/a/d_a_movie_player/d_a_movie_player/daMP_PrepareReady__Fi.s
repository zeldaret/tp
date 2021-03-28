lbl_80877F88:
/* 80877F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80877F8C  7C 08 02 A6 */	mflr r0
/* 80877F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80877F94  7C 64 1B 78 */	mr r4, r3
/* 80877F98  3C 60 80 94 */	lis r3, daMP_PrepareReadyQueue@ha
/* 80877F9C  38 63 48 E0 */	addi r3, r3, daMP_PrepareReadyQueue@l
/* 80877FA0  38 A0 00 01 */	li r5, 1
/* 80877FA4  4B AC 6A 50 */	b OSSendMessage
/* 80877FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80877FAC  7C 08 03 A6 */	mtlr r0
/* 80877FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80877FB4  4E 80 00 20 */	blr 
