lbl_80298B04:
/* 80298B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298B08  7C 08 02 A6 */	mflr r0
/* 80298B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298B10  7C 64 1B 78 */	mr r4, r3
/* 80298B14  80 63 00 74 */	lwz r3, 0x74(r3)
/* 80298B18  4B FF FC 79 */	bl incWaveTable__16JASBasicWaveBankFPCQ216JASBasicWaveBank10TWaveGroup
/* 80298B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298B20  7C 08 03 A6 */	mtlr r0
/* 80298B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80298B28  4E 80 00 20 */	blr 
