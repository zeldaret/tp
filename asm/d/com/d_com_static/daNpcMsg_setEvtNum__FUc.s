lbl_8003160C:
/* 8003160C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031610  7C 08 02 A6 */	mflr r0
/* 80031614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031618  7C 65 1B 78 */	mr r5, r3
/* 8003161C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80031620  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80031624  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80031628  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FDFF@ha */
/* 8003162C  38 84 FD FF */	addi r4, r4, 0xFDFF /* 0x0000FDFF@l */
/* 80031630  48 00 33 B1 */	bl setEventReg__11dSv_event_cFUsUc
/* 80031634  38 60 00 01 */	li r3, 1
/* 80031638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003163C  7C 08 03 A6 */	mtlr r0
/* 80031640  38 21 00 10 */	addi r1, r1, 0x10
/* 80031644  4E 80 00 20 */	blr 
