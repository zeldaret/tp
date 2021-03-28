lbl_802EA79C:
/* 802EA79C  38 A0 00 00 */	li r5, 0
/* 802EA7A0  90 A3 00 00 */	stw r5, 0(r3)
/* 802EA7A4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EA7A8  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EA7AC  B0 83 00 10 */	sth r4, 0x10(r3)
/* 802EA7B0  90 A3 00 04 */	stw r5, 4(r3)
/* 802EA7B4  38 00 00 08 */	li r0, 8
/* 802EA7B8  7C 09 03 A6 */	mtctr r0
lbl_802EA7BC:
/* 802EA7BC  38 05 00 12 */	addi r0, r5, 0x12
/* 802EA7C0  7C 83 03 2E */	sthx r4, r3, r0
/* 802EA7C4  38 A5 00 02 */	addi r5, r5, 2
/* 802EA7C8  42 00 FF F4 */	bdnz lbl_802EA7BC
/* 802EA7CC  38 00 00 00 */	li r0, 0
/* 802EA7D0  90 03 00 08 */	stw r0, 8(r3)
/* 802EA7D4  38 80 00 00 */	li r4, 0
/* 802EA7D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 802EA7DC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 802EA7E0  38 00 00 08 */	li r0, 8
/* 802EA7E4  7C 09 03 A6 */	mtctr r0
lbl_802EA7E8:
/* 802EA7E8  38 04 00 22 */	addi r0, r4, 0x22
/* 802EA7EC  7C A3 03 2E */	sthx r5, r3, r0
/* 802EA7F0  38 84 00 02 */	addi r4, r4, 2
/* 802EA7F4  42 00 FF F4 */	bdnz lbl_802EA7E8
/* 802EA7F8  38 00 00 00 */	li r0, 0
/* 802EA7FC  90 03 00 0C */	stw r0, 0xc(r3)
/* 802EA800  38 80 00 00 */	li r4, 0
/* 802EA804  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 802EA808  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 802EA80C  38 00 00 04 */	li r0, 4
/* 802EA810  7C 09 03 A6 */	mtctr r0
lbl_802EA814:
/* 802EA814  38 04 00 32 */	addi r0, r4, 0x32
/* 802EA818  7C A3 03 2E */	sthx r5, r3, r0
/* 802EA81C  38 84 00 02 */	addi r4, r4, 2
/* 802EA820  42 00 FF F4 */	bdnz lbl_802EA814
/* 802EA824  38 80 00 00 */	li r4, 0
/* 802EA828  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 802EA82C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 802EA830  38 00 00 04 */	li r0, 4
/* 802EA834  7C 09 03 A6 */	mtctr r0
lbl_802EA838:
/* 802EA838  38 04 00 3A */	addi r0, r4, 0x3a
/* 802EA83C  7C A3 03 2E */	sthx r5, r3, r0
/* 802EA840  38 84 00 02 */	addi r4, r4, 2
/* 802EA844  42 00 FF F4 */	bdnz lbl_802EA838
/* 802EA848  4E 80 00 20 */	blr 
