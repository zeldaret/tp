lbl_80607B80:
/* 80607B80  3C 80 00 FC */	lis r4, 0x00FC /* 0x00FBFDFD@ha */
/* 80607B84  38 04 FD FD */	addi r0, r4, 0xFDFD /* 0x00FBFDFD@l */
/* 80607B88  90 03 1F B8 */	stw r0, 0x1fb8(r3)
/* 80607B8C  38 80 00 00 */	li r4, 0
/* 80607B90  38 00 00 0F */	li r0, 0xf
/* 80607B94  7C 09 03 A6 */	mtctr r0
lbl_80607B98:
/* 80607B98  80 A3 1F B8 */	lwz r5, 0x1fb8(r3)
/* 80607B9C  38 04 0D 98 */	addi r0, r4, 0xd98
/* 80607BA0  7C A3 01 2E */	stwx r5, r3, r0
/* 80607BA4  38 84 01 38 */	addi r4, r4, 0x138
/* 80607BA8  42 00 FF F0 */	bdnz lbl_80607B98
/* 80607BAC  4E 80 00 20 */	blr 
