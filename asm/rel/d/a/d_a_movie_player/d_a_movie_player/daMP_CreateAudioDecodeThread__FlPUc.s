lbl_808763EC:
/* 808763EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808763F0  7C 08 02 A6 */	mflr r0
/* 808763F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808763F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808763FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80876400  7C 68 1B 78 */	mr r8, r3
/* 80876404  7C 85 23 79 */	or. r5, r4, r4
/* 80876408  3C 60 80 88 */	lis r3, lit_1109@ha /* 0x808795A0@ha */
/* 8087640C  38 63 95 A0 */	addi r3, r3, lit_1109@l /* 0x808795A0@l */
/* 80876410  3F C3 00 06 */	addis r30, r3, 6
/* 80876414  3F E3 00 0D */	addis r31, r3, 0xd
/* 80876418  41 82 00 3C */	beq lbl_80876454
/* 8087641C  38 7E 6F 78 */	addi r3, r30, 0x6f78
/* 80876420  3C 80 80 87 */	lis r4, daMP_AudioDecoderForOnMemory__FPv@ha /* 0x80876344@ha */
/* 80876424  38 84 63 44 */	addi r4, r4, daMP_AudioDecoderForOnMemory__FPv@l /* 0x80876344@l */
/* 80876428  38 DE 72 90 */	addi r6, r30, 0x7290
/* 8087642C  3C C6 00 06 */	addis r6, r6, 6
/* 80876430  3C E0 00 06 */	lis r7, 0x0006 /* 0x00064000@ha */
/* 80876434  38 E7 40 00 */	addi r7, r7, 0x4000 /* 0x00064000@l */
/* 80876438  39 20 00 01 */	li r9, 1
/* 8087643C  38 C6 40 00 */	addi r6, r6, 0x4000
/* 80876440  4B AC AE 4D */	bl OSCreateThread
/* 80876444  2C 03 00 00 */	cmpwi r3, 0
/* 80876448  40 82 00 5C */	bne lbl_808764A4
/* 8087644C  38 60 00 00 */	li r3, 0
/* 80876450  48 00 00 80 */	b lbl_808764D0
lbl_80876454:
/* 80876454  38 7E 6F 78 */	addi r3, r30, 0x6f78
/* 80876458  3C 80 80 87 */	lis r4, daMP_AudioDecoder__FPv@ha /* 0x8087631C@ha */
/* 8087645C  38 84 63 1C */	addi r4, r4, daMP_AudioDecoder__FPv@l /* 0x8087631C@l */
/* 80876460  38 A0 00 00 */	li r5, 0
/* 80876464  38 DE 72 90 */	addi r6, r30, 0x7290
/* 80876468  3C C6 00 06 */	addis r6, r6, 6
/* 8087646C  3C E0 00 06 */	lis r7, 0x0006 /* 0x00064000@ha */
/* 80876470  38 E7 40 00 */	addi r7, r7, 0x4000 /* 0x00064000@l */
/* 80876474  39 20 00 01 */	li r9, 1
/* 80876478  38 C6 40 00 */	addi r6, r6, 0x4000
/* 8087647C  4B AC AE 11 */	bl OSCreateThread
/* 80876480  2C 03 00 00 */	cmpwi r3, 0
/* 80876484  40 82 00 20 */	bne lbl_808764A4
/* 80876488  3C 60 80 88 */	lis r3, d_a_movie_player__stringBase0@ha /* 0x8087911C@ha */
/* 8087648C  38 63 91 1C */	addi r3, r3, d_a_movie_player__stringBase0@l /* 0x8087911C@l */
/* 80876490  38 63 00 3C */	addi r3, r3, 0x3c
/* 80876494  4C C6 31 82 */	crclr 6
/* 80876498  4B 79 06 25 */	bl OSReport
/* 8087649C  38 60 00 00 */	li r3, 0
/* 808764A0  48 00 00 30 */	b lbl_808764D0
lbl_808764A4:
/* 808764A4  38 7F B2 90 */	addi r3, r31, -19824
/* 808764A8  38 9F B2 D0 */	addi r4, r31, -19760
/* 808764AC  38 A0 00 03 */	li r5, 3
/* 808764B0  4B AC 84 E5 */	bl OSInitMessageQueue
/* 808764B4  38 7F B2 B0 */	addi r3, r31, -19792
/* 808764B8  38 9F B2 DC */	addi r4, r31, -19748
/* 808764BC  38 A0 00 03 */	li r5, 3
/* 808764C0  4B AC 84 D5 */	bl OSInitMessageQueue
/* 808764C4  38 00 00 01 */	li r0, 1
/* 808764C8  90 1E 6F 74 */	stw r0, 0x6f74(r30)
/* 808764CC  38 60 00 01 */	li r3, 1
lbl_808764D0:
/* 808764D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808764D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 808764D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808764DC  7C 08 03 A6 */	mtlr r0
/* 808764E0  38 21 00 10 */	addi r1, r1, 0x10
/* 808764E4  4E 80 00 20 */	blr 
