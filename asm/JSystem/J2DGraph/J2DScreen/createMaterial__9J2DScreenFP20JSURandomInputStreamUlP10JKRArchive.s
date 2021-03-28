lbl_802F937C:
/* 802F937C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802F9380  7C 08 02 A6 */	mflr r0
/* 802F9384  90 01 00 94 */	stw r0, 0x94(r1)
/* 802F9388  39 61 00 90 */	addi r11, r1, 0x90
/* 802F938C  48 06 8E 41 */	bl _savegpr_25
/* 802F9390  7C 7F 1B 78 */	mr r31, r3
/* 802F9394  7C 99 23 78 */	mr r25, r4
/* 802F9398  7C BA 2B 78 */	mr r26, r5
/* 802F939C  7C DB 33 78 */	mr r27, r6
/* 802F93A0  7F 23 CB 78 */	mr r3, r25
/* 802F93A4  81 99 00 00 */	lwz r12, 0(r25)
/* 802F93A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F93AC  7D 89 03 A6 */	mtctr r12
/* 802F93B0  4E 80 04 21 */	bctrl 
/* 802F93B4  7C 7D 1B 78 */	mr r29, r3
/* 802F93B8  7F 23 CB 78 */	mr r3, r25
/* 802F93BC  38 81 00 0C */	addi r4, r1, 0xc
/* 802F93C0  38 A0 00 08 */	li r5, 8
/* 802F93C4  4B FE 2E D5 */	bl read__14JSUInputStreamFPvl
/* 802F93C8  7F 23 CB 78 */	mr r3, r25
/* 802F93CC  38 81 00 08 */	addi r4, r1, 8
/* 802F93D0  38 A0 00 02 */	li r5, 2
/* 802F93D4  4B FE 2E C5 */	bl read__14JSUInputStreamFPvl
/* 802F93D8  A0 01 00 08 */	lhz r0, 8(r1)
/* 802F93DC  B0 1F 01 02 */	sth r0, 0x102(r31)
/* 802F93E0  7F 23 CB 78 */	mr r3, r25
/* 802F93E4  38 80 00 02 */	li r4, 2
/* 802F93E8  81 99 00 00 */	lwz r12, 0(r25)
/* 802F93EC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F93F0  7D 89 03 A6 */	mtctr r12
/* 802F93F4  4E 80 04 21 */	bctrl 
/* 802F93F8  57 5E 02 DF */	rlwinm. r30, r26, 0, 0xb, 0xf
/* 802F93FC  41 82 00 38 */	beq lbl_802F9434
/* 802F9400  A3 9F 01 02 */	lhz r28, 0x102(r31)
/* 802F9404  1C 7C 00 88 */	mulli r3, r28, 0x88
/* 802F9408  38 63 00 10 */	addi r3, r3, 0x10
/* 802F940C  4B FD 58 B9 */	bl __nwa__FUl
/* 802F9410  3C 80 80 2F */	lis r4, __ct__11J2DMaterialFv@ha
/* 802F9414  38 84 A1 AC */	addi r4, r4, __ct__11J2DMaterialFv@l
/* 802F9418  3C A0 80 2F */	lis r5, __dt__11J2DMaterialFv@ha
/* 802F941C  38 A5 A2 CC */	addi r5, r5, __dt__11J2DMaterialFv@l
/* 802F9420  38 C0 00 88 */	li r6, 0x88
/* 802F9424  7F 87 E3 78 */	mr r7, r28
/* 802F9428  48 06 8A ED */	bl __construct_new_array
/* 802F942C  90 7F 01 04 */	stw r3, 0x104(r31)
/* 802F9430  48 00 00 38 */	b lbl_802F9468
lbl_802F9434:
/* 802F9434  A3 9F 01 02 */	lhz r28, 0x102(r31)
/* 802F9438  1C 7C 00 88 */	mulli r3, r28, 0x88
/* 802F943C  38 63 00 10 */	addi r3, r3, 0x10
/* 802F9440  38 80 FF FC */	li r4, -4
/* 802F9444  4B FD 58 A9 */	bl __nwa__FUli
/* 802F9448  3C 80 80 2F */	lis r4, __ct__11J2DMaterialFv@ha
/* 802F944C  38 84 A1 AC */	addi r4, r4, __ct__11J2DMaterialFv@l
/* 802F9450  3C A0 80 2F */	lis r5, __dt__11J2DMaterialFv@ha
/* 802F9454  38 A5 A2 CC */	addi r5, r5, __dt__11J2DMaterialFv@l
/* 802F9458  38 C0 00 88 */	li r6, 0x88
/* 802F945C  7F 87 E3 78 */	mr r7, r28
/* 802F9460  48 06 8A B5 */	bl __construct_new_array
/* 802F9464  90 7F 01 04 */	stw r3, 0x104(r31)
lbl_802F9468:
/* 802F9468  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802F946C  38 80 FF FC */	li r4, -4
/* 802F9470  4B FD 58 7D */	bl __nwa__FUli
/* 802F9474  7C 7C 1B 78 */	mr r28, r3
/* 802F9478  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 802F947C  28 00 00 00 */	cmplwi r0, 0
/* 802F9480  41 82 01 54 */	beq lbl_802F95D4
/* 802F9484  28 1C 00 00 */	cmplwi r28, 0
/* 802F9488  41 82 01 4C */	beq lbl_802F95D4
/* 802F948C  7F 23 CB 78 */	mr r3, r25
/* 802F9490  7F A4 EB 78 */	mr r4, r29
/* 802F9494  38 A0 00 00 */	li r5, 0
/* 802F9498  4B FE 30 45 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F949C  7F 23 CB 78 */	mr r3, r25
/* 802F94A0  7F 84 E3 78 */	mr r4, r28
/* 802F94A4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 802F94A8  4B FE 2D F1 */	bl read__14JSUInputStreamFPvl
/* 802F94AC  38 61 00 14 */	addi r3, r1, 0x14
/* 802F94B0  7F 84 E3 78 */	mr r4, r28
/* 802F94B4  4B FF 96 1D */	bl __ct__18J2DMaterialFactoryFRC16J2DMaterialBlock
/* 802F94B8  3B 20 00 00 */	li r25, 0
/* 802F94BC  48 00 00 30 */	b lbl_802F94EC
lbl_802F94C0:
/* 802F94C0  38 61 00 14 */	addi r3, r1, 0x14
/* 802F94C4  80 9F 01 04 */	lwz r4, 0x104(r31)
/* 802F94C8  57 25 04 3E */	clrlwi r5, r25, 0x10
/* 802F94CC  1C 05 00 88 */	mulli r0, r5, 0x88
/* 802F94D0  7C 84 02 14 */	add r4, r4, r0
/* 802F94D4  7F 46 D3 78 */	mr r6, r26
/* 802F94D8  80 FF 01 08 */	lwz r7, 0x108(r31)
/* 802F94DC  81 1F 01 0C */	lwz r8, 0x10c(r31)
/* 802F94E0  7F 69 DB 78 */	mr r9, r27
/* 802F94E4  4B FF 98 39 */	bl create__18J2DMaterialFactoryCFP11J2DMaterialiUlP15J2DResReferenceP15J2DResReferenceP10JKRArchive
/* 802F94E8  3B 39 00 01 */	addi r25, r25, 1
lbl_802F94EC:
/* 802F94EC  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 802F94F0  A0 1F 01 02 */	lhz r0, 0x102(r31)
/* 802F94F4  7C 03 00 40 */	cmplw r3, r0
/* 802F94F8  41 80 FF C8 */	blt lbl_802F94C0
/* 802F94FC  28 1E 00 00 */	cmplwi r30, 0
/* 802F9500  41 82 00 C4 */	beq lbl_802F95C4
/* 802F9504  88 BC 00 17 */	lbz r5, 0x17(r28)
/* 802F9508  88 9C 00 16 */	lbz r4, 0x16(r28)
/* 802F950C  88 7C 00 14 */	lbz r3, 0x14(r28)
/* 802F9510  88 1C 00 15 */	lbz r0, 0x15(r28)
/* 802F9514  54 00 80 1E */	slwi r0, r0, 0x10
/* 802F9518  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802F951C  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802F9520  7C A0 03 78 */	or r0, r5, r0
/* 802F9524  7F 3C 02 14 */	add r25, r28, r0
/* 802F9528  A0 19 00 00 */	lhz r0, 0(r25)
/* 802F952C  54 00 10 3A */	slwi r0, r0, 2
/* 802F9530  7C 79 02 14 */	add r3, r25, r0
/* 802F9534  A0 83 00 02 */	lhz r4, 2(r3)
/* 802F9538  48 00 00 08 */	b lbl_802F9540
lbl_802F953C:
/* 802F953C  38 84 00 01 */	addi r4, r4, 1
lbl_802F9540:
/* 802F9540  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 802F9544  7C 19 18 AE */	lbzx r0, r25, r3
/* 802F9548  7C 00 07 75 */	extsb. r0, r0
/* 802F954C  40 82 FF F0 */	bne lbl_802F953C
/* 802F9550  3B 43 00 01 */	addi r26, r3, 1
/* 802F9554  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 802F9558  4B FD 57 6D */	bl __nwa__FUl
/* 802F955C  7C 7B 1B 79 */	or. r27, r3, r3
/* 802F9560  41 82 00 74 */	beq lbl_802F95D4
/* 802F9564  38 A0 00 00 */	li r5, 0
/* 802F9568  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 802F956C  48 00 00 14 */	b lbl_802F9580
lbl_802F9570:
/* 802F9570  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 802F9574  7C 79 20 AE */	lbzx r3, r25, r4
/* 802F9578  7C 7B 21 AE */	stbx r3, r27, r4
/* 802F957C  38 A5 00 01 */	addi r5, r5, 1
lbl_802F9580:
/* 802F9580  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 802F9584  7C 03 00 40 */	cmplw r3, r0
/* 802F9588  41 80 FF E8 */	blt lbl_802F9570
/* 802F958C  38 60 00 10 */	li r3, 0x10
/* 802F9590  4B FD 56 BD */	bl __nw__FUl
/* 802F9594  7C 60 1B 79 */	or. r0, r3, r3
/* 802F9598  41 82 00 10 */	beq lbl_802F95A8
/* 802F959C  7F 64 DB 78 */	mr r4, r27
/* 802F95A0  4B FE 54 41 */	bl __ct__10JUTNameTabFPC7ResNTAB
/* 802F95A4  7C 60 1B 78 */	mr r0, r3
lbl_802F95A8:
/* 802F95A8  90 1F 01 10 */	stw r0, 0x110(r31)
/* 802F95AC  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 802F95B0  28 00 00 00 */	cmplwi r0, 0
/* 802F95B4  40 82 00 10 */	bne lbl_802F95C4
/* 802F95B8  7F 63 DB 78 */	mr r3, r27
/* 802F95BC  4B FD 57 A5 */	bl __dla__FPv
/* 802F95C0  48 00 00 14 */	b lbl_802F95D4
lbl_802F95C4:
/* 802F95C4  7F 83 E3 78 */	mr r3, r28
/* 802F95C8  4B FD 57 99 */	bl __dla__FPv
/* 802F95CC  38 60 00 01 */	li r3, 1
/* 802F95D0  48 00 00 18 */	b lbl_802F95E8
lbl_802F95D4:
/* 802F95D4  7F 83 E3 78 */	mr r3, r28
/* 802F95D8  4B FD 57 89 */	bl __dla__FPv
/* 802F95DC  7F E3 FB 78 */	mr r3, r31
/* 802F95E0  4B FF EF C9 */	bl clean__9J2DScreenFv
/* 802F95E4  38 60 00 00 */	li r3, 0
lbl_802F95E8:
/* 802F95E8  39 61 00 90 */	addi r11, r1, 0x90
/* 802F95EC  48 06 8C 2D */	bl _restgpr_25
/* 802F95F0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802F95F4  7C 08 03 A6 */	mtlr r0
/* 802F95F8  38 21 00 90 */	addi r1, r1, 0x90
/* 802F95FC  4E 80 00 20 */	blr 
