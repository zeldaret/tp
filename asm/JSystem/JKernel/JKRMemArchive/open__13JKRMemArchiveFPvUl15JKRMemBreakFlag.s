lbl_802D6D30:
/* 802D6D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6D34  7C 08 02 A6 */	mflr r0
/* 802D6D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6D3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6D40  7C 7F 1B 78 */	mr r31, r3
/* 802D6D44  90 83 00 64 */	stw r4, 0x64(r3)
/* 802D6D48  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802D6D4C  80 03 00 08 */	lwz r0, 8(r3)
/* 802D6D50  7C 03 02 14 */	add r0, r3, r0
/* 802D6D54  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802D6D58  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6D5C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6D60  7C 03 02 14 */	add r0, r3, r0
/* 802D6D64  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802D6D68  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6D6C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D6D70  7C 03 02 14 */	add r0, r3, r0
/* 802D6D74  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 802D6D78  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6D7C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D6D80  7C 03 02 14 */	add r0, r3, r0
/* 802D6D84  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802D6D88  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 802D6D8C  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802D6D90  80 05 00 08 */	lwz r0, 8(r5)
/* 802D6D94  7C 00 1A 14 */	add r0, r0, r3
/* 802D6D98  7C 05 02 14 */	add r0, r5, r0
/* 802D6D9C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802D6DA0  20 06 00 01 */	subfic r0, r6, 1
/* 802D6DA4  7C 00 00 34 */	cntlzw r0, r0
/* 802D6DA8  54 00 D9 7E */	srwi r0, r0, 5
/* 802D6DAC  98 1F 00 6C */	stb r0, 0x6c(r31)
/* 802D6DB0  7C 83 23 78 */	mr r3, r4
/* 802D6DB4  4B FF 7A 89 */	bl findFromRoot__7JKRHeapFPv
/* 802D6DB8  90 7F 00 38 */	stw r3, 0x38(r31)
/* 802D6DBC  38 00 00 00 */	li r0, 0
/* 802D6DC0  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 802D6DC4  38 60 00 01 */	li r3, 1
/* 802D6DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6DD0  7C 08 03 A6 */	mtlr r0
/* 802D6DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6DD8  4E 80 00 20 */	blr 
