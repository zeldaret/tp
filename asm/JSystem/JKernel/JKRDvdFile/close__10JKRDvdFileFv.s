lbl_802D9938:
/* 802D9938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D993C  7C 08 02 A6 */	mflr r0
/* 802D9940  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9948  7C 7F 1B 78 */	mr r31, r3
/* 802D994C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802D9950  28 00 00 00 */	cmplwi r0, 0
/* 802D9954  41 82 00 4C */	beq lbl_802D99A0
/* 802D9958  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802D995C  48 06 EF FD */	bl DVDClose
/* 802D9960  2C 03 00 00 */	cmpwi r3, 0
/* 802D9964  41 82 00 20 */	beq lbl_802D9984
/* 802D9968  38 00 00 00 */	li r0, 0
/* 802D996C  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D9970  3C 60 80 43 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 802D9974  38 63 43 6C */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 802D9978  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 802D997C  48 00 27 E1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D9980  48 00 00 20 */	b lbl_802D99A0
lbl_802D9984:
/* 802D9984  3C 60 80 3A */	lis r3, JKRDvdFile__stringBase0@ha
/* 802D9988  38 63 D2 60 */	addi r3, r3, JKRDvdFile__stringBase0@l
/* 802D998C  38 80 00 D5 */	li r4, 0xd5
/* 802D9990  38 A3 00 0F */	addi r5, r3, 0xf
/* 802D9994  38 C3 00 12 */	addi r6, r3, 0x12
/* 802D9998  4C C6 31 82 */	crclr 6
/* 802D999C  48 00 88 61 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802D99A0:
/* 802D99A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D99A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D99A8  7C 08 03 A6 */	mtlr r0
/* 802D99AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D99B0  4E 80 00 20 */	blr 
