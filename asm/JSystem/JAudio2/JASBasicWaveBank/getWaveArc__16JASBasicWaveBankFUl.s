lbl_80298C6C:
/* 80298C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298C70  7C 08 02 A6 */	mflr r0
/* 80298C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298C78  4B FF F9 C9 */	bl getWaveGroup__16JASBasicWaveBankFUl
/* 80298C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298C80  7C 08 03 A6 */	mtlr r0
/* 80298C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80298C88  4E 80 00 20 */	blr 
