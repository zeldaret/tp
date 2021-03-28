lbl_8037168C:
/* 8037168C  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80371690  7C 2C 0B 78 */	mr r12, r1
/* 80371694  21 6B FF 80 */	subfic r11, r11, -128
/* 80371698  7C 21 59 6E */	stwux r1, r1, r11
/* 8037169C  7C 08 02 A6 */	mflr r0
/* 803716A0  90 0C 00 04 */	stw r0, 4(r12)
/* 803716A4  BE EC FF DC */	stmw r23, -0x24(r12)
/* 803716A8  7C 9F 23 78 */	mr r31, r4
/* 803716AC  28 1F 40 00 */	cmplwi r31, 0x4000
/* 803716B0  7C 7E 1B 78 */	mr r30, r3
/* 803716B4  7C B7 2B 78 */	mr r23, r5
/* 803716B8  41 80 01 A8 */	blt lbl_80371860
/* 803716BC  80 97 00 00 */	lwz r4, 0(r23)
/* 803716C0  3C 00 08 00 */	lis r0, 0x800
/* 803716C4  7C 7F 22 14 */	add r3, r31, r4
/* 803716C8  7C 03 00 40 */	cmplw r3, r0
/* 803716CC  40 81 00 08 */	ble lbl_803716D4
/* 803716D0  48 00 01 90 */	b lbl_80371860
lbl_803716D4:
/* 803716D4  57 E0 06 FE */	clrlwi r0, r31, 0x1b
/* 803716D8  57 FB 00 34 */	rlwinm r27, r31, 0, 0, 0x1a
/* 803716DC  7F 44 02 14 */	add r26, r4, r0
/* 803716E0  3B 00 00 00 */	li r24, 0
/* 803716E4  38 1A 00 1F */	addi r0, r26, 0x1f
/* 803716E8  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
/* 803716EC  28 1A 00 00 */	cmplwi r26, 0
/* 803716F0  38 7A 00 1F */	addi r3, r26, 0x1f
/* 803716F4  54 63 D9 7E */	srwi r3, r3, 5
/* 803716F8  40 81 00 6C */	ble lbl_80371764
/* 803716FC  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 80371700  7C 09 03 A6 */	mtctr r0
/* 80371704  41 82 00 50 */	beq lbl_80371754
lbl_80371708:
/* 80371708  7C 18 F0 AC */	dcbf r24, r30
/* 8037170C  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371710  7C 18 F0 AC */	dcbf r24, r30
/* 80371714  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371718  7C 18 F0 AC */	dcbf r24, r30
/* 8037171C  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371720  7C 18 F0 AC */	dcbf r24, r30
/* 80371724  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371728  7C 18 F0 AC */	dcbf r24, r30
/* 8037172C  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371730  7C 18 F0 AC */	dcbf r24, r30
/* 80371734  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371738  7C 18 F0 AC */	dcbf r24, r30
/* 8037173C  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371740  7C 18 F0 AC */	dcbf r24, r30
/* 80371744  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371748  42 00 FF C0 */	bdnz lbl_80371708
/* 8037174C  70 63 00 07 */	andi. r3, r3, 7
/* 80371750  41 82 00 14 */	beq lbl_80371764
lbl_80371754:
/* 80371754  7C 69 03 A6 */	mtctr r3
lbl_80371758:
/* 80371758  7C 18 F0 AC */	dcbf r24, r30
/* 8037175C  3B 18 00 20 */	addi r24, r24, 0x20
/* 80371760  42 00 FF F8 */	bdnz lbl_80371758
lbl_80371764:
/* 80371764  4B FD EE 35 */	bl ARGetDMAStatus
/* 80371768  28 03 00 00 */	cmplwi r3, 0
/* 8037176C  40 82 FF F8 */	bne lbl_80371764
/* 80371770  4B FD F1 21 */	bl __ARGetInterruptStatus
/* 80371774  57 F8 06 FF */	clrlwi. r24, r31, 0x1b
/* 80371778  7C 7D 1B 78 */	mr r29, r3
/* 8037177C  3F 20 08 00 */	lis r25, 0x800
/* 80371780  41 82 00 48 */	beq lbl_803717C8
/* 80371784  3B 81 00 20 */	addi r28, r1, 0x20
/* 80371788  7F 79 DB 78 */	mr r25, r27
/* 8037178C  7C 00 E3 AC */	dcbi 0, r28
/* 80371790  4B FD F0 E1 */	bl __ARClearInterrupt
/* 80371794  7F 84 E3 78 */	mr r4, r28
/* 80371798  7F 65 DB 78 */	mr r5, r27
/* 8037179C  38 60 00 01 */	li r3, 1
/* 803717A0  38 C0 00 20 */	li r6, 0x20
/* 803717A4  4B FD EE 31 */	bl ARStartDMA
lbl_803717A8:
/* 803717A8  4B FD F0 E9 */	bl __ARGetInterruptStatus
/* 803717AC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803717B0  41 82 FF F8 */	beq lbl_803717A8
/* 803717B4  7F C3 F3 78 */	mr r3, r30
/* 803717B8  7F 05 C3 78 */	mr r5, r24
/* 803717BC  38 81 00 20 */	addi r4, r1, 0x20
/* 803717C0  4B C9 1E 01 */	bl TRK_memcpy
/* 803717C4  7C 00 F0 AC */	dcbf 0, r30
lbl_803717C8:
/* 803717C8  80 17 00 00 */	lwz r0, 0(r23)
/* 803717CC  7F FF 02 14 */	add r31, r31, r0
/* 803717D0  57 F8 06 FF */	clrlwi. r24, r31, 0x1b
/* 803717D4  41 82 00 58 */	beq lbl_8037182C
/* 803717D8  57 F7 00 34 */	rlwinm r23, r31, 0, 0, 0x1a
/* 803717DC  7C 17 C8 40 */	cmplw r23, r25
/* 803717E0  41 82 00 30 */	beq lbl_80371810
/* 803717E4  3B 81 00 20 */	addi r28, r1, 0x20
/* 803717E8  7C 00 E3 AC */	dcbi 0, r28
/* 803717EC  4B FD F0 85 */	bl __ARClearInterrupt
/* 803717F0  7F 84 E3 78 */	mr r4, r28
/* 803717F4  7E E5 BB 78 */	mr r5, r23
/* 803717F8  38 60 00 01 */	li r3, 1
/* 803717FC  38 C0 00 20 */	li r6, 0x20
/* 80371800  4B FD ED D5 */	bl ARStartDMA
lbl_80371804:
/* 80371804  4B FD F0 8D */	bl __ARGetInterruptStatus
/* 80371808  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8037180C  41 82 FF F8 */	beq lbl_80371804
lbl_80371810:
/* 80371810  7F 3E FA 14 */	add r25, r30, r31
/* 80371814  38 81 00 20 */	addi r4, r1, 0x20
/* 80371818  7F 23 CB 78 */	mr r3, r25
/* 8037181C  20 B8 00 20 */	subfic r5, r24, 0x20
/* 80371820  7C 84 C2 14 */	add r4, r4, r24
/* 80371824  4B C9 1D 9D */	bl TRK_memcpy
/* 80371828  7C 00 C8 AC */	dcbf 0, r25
lbl_8037182C:
/* 8037182C  7C 00 04 AC */	sync
/* 80371830  4B FD F0 41 */	bl __ARClearInterrupt
/* 80371834  7F C4 F3 78 */	mr r4, r30
/* 80371838  7F 65 DB 78 */	mr r5, r27
/* 8037183C  7F 46 D3 78 */	mr r6, r26
/* 80371840  38 60 00 00 */	li r3, 0
/* 80371844  4B FD ED 91 */	bl ARStartDMA
/* 80371848  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 8037184C  40 82 00 14 */	bne lbl_80371860
lbl_80371850:
/* 80371850  4B FD F0 41 */	bl __ARGetInterruptStatus
/* 80371854  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80371858  41 82 FF F8 */	beq lbl_80371850
/* 8037185C  4B FD F0 15 */	bl __ARClearInterrupt
lbl_80371860:
/* 80371860  81 41 00 00 */	lwz r10, 0(r1)
/* 80371864  BA EA FF DC */	lmw r23, -0x24(r10)
/* 80371868  80 0A 00 04 */	lwz r0, 4(r10)
/* 8037186C  7C 08 03 A6 */	mtlr r0
/* 80371870  7D 41 53 78 */	mr r1, r10
/* 80371874  4E 80 00 20 */	blr 
