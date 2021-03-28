lbl_802F0FC8:
/* 802F0FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0FCC  7C 08 02 A6 */	mflr r0
/* 802F0FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F0FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F0FD8  93 C1 00 08 */	stw r30, 8(r1)
/* 802F0FDC  7C 7E 1B 78 */	mr r30, r3
/* 802F0FE0  7C 9F 23 78 */	mr r31, r4
/* 802F0FE4  28 1F 00 08 */	cmplwi r31, 8
/* 802F0FE8  41 80 00 0C */	blt lbl_802F0FF4
/* 802F0FEC  38 60 00 00 */	li r3, 0
/* 802F0FF0  48 00 00 B8 */	b lbl_802F10A8
lbl_802F0FF4:
/* 802F0FF4  88 7E 01 B0 */	lbz r3, 0x1b0(r30)
/* 802F0FF8  38 00 00 01 */	li r0, 1
/* 802F0FFC  7C 00 F8 30 */	slw r0, r0, r31
/* 802F1000  7C 60 00 39 */	and. r0, r3, r0
/* 802F1004  41 82 00 18 */	beq lbl_802F101C
/* 802F1008  57 E0 10 3A */	slwi r0, r31, 2
/* 802F100C  7C 7E 02 14 */	add r3, r30, r0
/* 802F1010  80 63 01 6C */	lwz r3, 0x16c(r3)
/* 802F1014  38 80 00 01 */	li r4, 1
/* 802F1018  4B FE D2 1D */	bl __dt__10JUTTextureFv
lbl_802F101C:
/* 802F101C  57 E0 10 3A */	slwi r0, r31, 2
/* 802F1020  7C 7E 02 14 */	add r3, r30, r0
/* 802F1024  80 63 01 8C */	lwz r3, 0x18c(r3)
/* 802F1028  4B FD DD 15 */	bl __dl__FPv
/* 802F102C  57 E4 10 3A */	slwi r4, r31, 2
/* 802F1030  57 E3 08 3C */	slwi r3, r31, 1
/* 802F1034  20 1F 00 07 */	subfic r0, r31, 7
/* 802F1038  7C 09 03 A6 */	mtctr r0
/* 802F103C  28 1F 00 07 */	cmplwi r31, 7
/* 802F1040  40 80 00 30 */	bge lbl_802F1070
lbl_802F1044:
/* 802F1044  7C BE 22 14 */	add r5, r30, r4
/* 802F1048  80 05 01 70 */	lwz r0, 0x170(r5)
/* 802F104C  90 05 01 6C */	stw r0, 0x16c(r5)
/* 802F1050  80 05 01 90 */	lwz r0, 0x190(r5)
/* 802F1054  90 05 01 8C */	stw r0, 0x18c(r5)
/* 802F1058  7C BE 1A 14 */	add r5, r30, r3
/* 802F105C  A0 05 00 06 */	lhz r0, 6(r5)
/* 802F1060  B0 05 00 04 */	sth r0, 4(r5)
/* 802F1064  38 63 00 02 */	addi r3, r3, 2
/* 802F1068  38 84 00 04 */	addi r4, r4, 4
/* 802F106C  42 00 FF D8 */	bdnz lbl_802F1044
lbl_802F1070:
/* 802F1070  38 00 00 00 */	li r0, 0
/* 802F1074  90 1E 01 88 */	stw r0, 0x188(r30)
/* 802F1078  90 1E 01 A8 */	stw r0, 0x1a8(r30)
/* 802F107C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F1080  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F1084  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 802F1088  7F C3 F3 78 */	mr r3, r30
/* 802F108C  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802F1090  38 A0 00 00 */	li r5, 0
/* 802F1094  81 9E 00 00 */	lwz r12, 0(r30)
/* 802F1098  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802F109C  7D 89 03 A6 */	mtctr r12
/* 802F10A0  4E 80 04 21 */	bctrl 
/* 802F10A4  38 60 00 01 */	li r3, 1
lbl_802F10A8:
/* 802F10A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F10AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F10B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F10B4  7C 08 03 A6 */	mtlr r0
/* 802F10B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F10BC  4E 80 00 20 */	blr 
