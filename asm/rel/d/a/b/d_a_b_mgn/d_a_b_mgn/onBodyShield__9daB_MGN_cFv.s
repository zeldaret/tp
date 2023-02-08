lbl_80607B50:
/* 80607B50  3C 80 DC FC */	lis r4, 0xDCFC /* 0xDCFBFDFD@ha */
/* 80607B54  38 04 FD FD */	addi r0, r4, 0xFDFD /* 0xDCFBFDFD@l */
/* 80607B58  90 03 1F B8 */	stw r0, 0x1fb8(r3)
/* 80607B5C  38 80 00 00 */	li r4, 0
/* 80607B60  38 00 00 0F */	li r0, 0xf
/* 80607B64  7C 09 03 A6 */	mtctr r0
lbl_80607B68:
/* 80607B68  80 A3 1F B8 */	lwz r5, 0x1fb8(r3)
/* 80607B6C  38 04 0D 98 */	addi r0, r4, 0xd98
/* 80607B70  7C A3 01 2E */	stwx r5, r3, r0
/* 80607B74  38 84 01 38 */	addi r4, r4, 0x138
/* 80607B78  42 00 FF F0 */	bdnz lbl_80607B68
/* 80607B7C  4E 80 00 20 */	blr 
