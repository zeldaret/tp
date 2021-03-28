lbl_80062ADC:
/* 80062ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80062AE0  7C 08 02 A6 */	mflr r0
/* 80062AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80062AE8  38 60 00 00 */	li r3, 0
/* 80062AEC  48 2F 9E 99 */	bl GXSetCullMode
/* 80062AF0  38 60 00 00 */	li r3, 0
/* 80062AF4  38 80 00 09 */	li r4, 9
/* 80062AF8  38 A0 00 01 */	li r5, 1
/* 80062AFC  38 C0 00 04 */	li r6, 4
/* 80062B00  38 E0 00 00 */	li r7, 0
/* 80062B04  48 2F 8A C1 */	bl GXSetVtxAttrFmt
/* 80062B08  38 60 00 00 */	li r3, 0
/* 80062B0C  38 80 00 0D */	li r4, 0xd
/* 80062B10  38 A0 00 01 */	li r5, 1
/* 80062B14  38 C0 00 03 */	li r6, 3
/* 80062B18  38 E0 00 08 */	li r7, 8
/* 80062B1C  48 2F 8A A9 */	bl GXSetVtxAttrFmt
/* 80062B20  48 2F 8A 6D */	bl GXClearVtxDesc
/* 80062B24  38 60 00 09 */	li r3, 9
/* 80062B28  38 80 00 01 */	li r4, 1
/* 80062B2C  48 2F 83 8D */	bl GXSetVtxDesc
/* 80062B30  38 60 00 0D */	li r3, 0xd
/* 80062B34  38 80 00 01 */	li r4, 1
/* 80062B38  48 2F 83 81 */	bl GXSetVtxDesc
/* 80062B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80062B40  7C 08 03 A6 */	mtlr r0
/* 80062B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80062B48  4E 80 00 20 */	blr 
