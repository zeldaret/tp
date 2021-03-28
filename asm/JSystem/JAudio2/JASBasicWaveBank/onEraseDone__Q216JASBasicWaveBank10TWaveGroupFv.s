lbl_80298B2C:
/* 80298B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298B30  7C 08 02 A6 */	mflr r0
/* 80298B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298B38  7C 64 1B 78 */	mr r4, r3
/* 80298B3C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 80298B40  4B FF FC FD */	bl decWaveTable__16JASBasicWaveBankFPCQ216JASBasicWaveBank10TWaveGroup
/* 80298B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298B48  7C 08 03 A6 */	mtlr r0
/* 80298B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80298B50  4E 80 00 20 */	blr 
