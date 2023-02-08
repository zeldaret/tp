lbl_8007A200:
/* 8007A200  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8007A204  7C 08 02 A6 */	mflr r0
/* 8007A208  90 01 00 74 */	stw r0, 0x74(r1)
/* 8007A20C  39 61 00 70 */	addi r11, r1, 0x70
/* 8007A210  48 2E 7F C1 */	bl _savegpr_26
/* 8007A214  7C 7A 1B 78 */	mr r26, r3
/* 8007A218  7C 9B 23 78 */	mr r27, r4
/* 8007A21C  7C BC 2B 78 */	mr r28, r5
/* 8007A220  3B A0 00 00 */	li r29, 0
/* 8007A224  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8007A228  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8007A22C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007A230  3C 60 80 3B */	lis r3, __vt__8cM3dGTri@ha /* 0x803ABB84@ha */
/* 8007A234  38 03 BB 84 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x803ABB84@l */
/* 8007A238  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007A23C  3B FC 00 24 */	addi r31, r28, 0x24
lbl_8007A240:
/* 8007A240  80 7A 00 A0 */	lwz r3, 0xa0(r26)
/* 8007A244  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8007A248  57 7E 04 3E */	clrlwi r30, r27, 0x10
/* 8007A24C  1C 1E 00 0A */	mulli r0, r30, 0xa
/* 8007A250  7C E3 02 14 */	add r7, r3, r0
/* 8007A254  80 DA 00 9C */	lwz r6, 0x9c(r26)
/* 8007A258  38 61 00 14 */	addi r3, r1, 0x14
/* 8007A25C  A0 07 00 00 */	lhz r0, 0(r7)
/* 8007A260  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007A264  7C 86 02 14 */	add r4, r6, r0
/* 8007A268  A0 07 00 02 */	lhz r0, 2(r7)
/* 8007A26C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007A270  7C A6 02 14 */	add r5, r6, r0
/* 8007A274  A0 07 00 04 */	lhz r0, 4(r7)
/* 8007A278  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007A27C  7C C6 02 14 */	add r6, r6, r0
/* 8007A280  80 FA 00 94 */	lwz r7, 0x94(r26)
/* 8007A284  1C 1E 00 18 */	mulli r0, r30, 0x18
/* 8007A288  7C E7 02 14 */	add r7, r7, r0
/* 8007A28C  48 1F 55 D1 */	bl setBg__8cM3dGTriFPC3VecPC3VecPC3VecPC8cM3dGPla
/* 8007A290  88 FC 00 54 */	lbz r7, 0x54(r28)
/* 8007A294  88 DC 00 53 */	lbz r6, 0x53(r28)
/* 8007A298  7F E3 FB 78 */	mr r3, r31
/* 8007A29C  38 81 00 14 */	addi r4, r1, 0x14
/* 8007A2A0  38 A1 00 08 */	addi r5, r1, 8
/* 8007A2A4  48 1F 0E 01 */	bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8007A2A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A2AC  41 82 00 48 */	beq lbl_8007A2F4
/* 8007A2B0  7F 43 D3 78 */	mr r3, r26
/* 8007A2B4  57 7B 04 3E */	clrlwi r27, r27, 0x10
/* 8007A2B8  7F 64 DB 78 */	mr r4, r27
/* 8007A2BC  80 BC 00 00 */	lwz r5, 0(r28)
/* 8007A2C0  81 9A 00 04 */	lwz r12, 4(r26)
/* 8007A2C4  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 8007A2C8  7D 89 03 A6 */	mtctr r12
/* 8007A2CC  4E 80 04 21 */	bctrl 
/* 8007A2D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A2D4  40 82 00 20 */	bne lbl_8007A2F4
/* 8007A2D8  38 7C 00 24 */	addi r3, r28, 0x24
/* 8007A2DC  38 81 00 08 */	addi r4, r1, 8
/* 8007A2E0  48 1F 50 E1 */	bl SetEnd__8cM3dGLinFRC4cXyz
/* 8007A2E4  38 7C 00 14 */	addi r3, r28, 0x14
/* 8007A2E8  7F 64 DB 78 */	mr r4, r27
/* 8007A2EC  48 1E DE B9 */	bl SetPolyIndex__13cBgS_PolyInfoFi
/* 8007A2F0  3B A0 00 01 */	li r29, 1
lbl_8007A2F4:
/* 8007A2F4  80 7A 00 98 */	lwz r3, 0x98(r26)
/* 8007A2F8  57 C0 18 38 */	slwi r0, r30, 3
/* 8007A2FC  7C 03 02 2E */	lhzx r0, r3, r0
/* 8007A300  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007A304  41 82 00 0C */	beq lbl_8007A310
/* 8007A308  7C 1B 03 78 */	mr r27, r0
/* 8007A30C  4B FF FF 34 */	b lbl_8007A240
lbl_8007A310:
/* 8007A310  3C 60 80 3B */	lis r3, __vt__8cM3dGTri@ha /* 0x803ABB84@ha */
/* 8007A314  38 03 BB 84 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x803ABB84@l */
/* 8007A318  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007A31C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8007A320  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8007A324  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007A328  7F A3 EB 78 */	mr r3, r29
/* 8007A32C  39 61 00 70 */	addi r11, r1, 0x70
/* 8007A330  48 2E 7E ED */	bl _restgpr_26
/* 8007A334  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8007A338  7C 08 03 A6 */	mtlr r0
/* 8007A33C  38 21 00 70 */	addi r1, r1, 0x70
/* 8007A340  4E 80 00 20 */	blr 
