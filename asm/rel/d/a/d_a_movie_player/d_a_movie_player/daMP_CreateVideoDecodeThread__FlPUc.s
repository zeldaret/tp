lbl_80875FD4:
/* 80875FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875FD8  7C 08 02 A6 */	mflr r0
/* 80875FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80875FE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80875FE8  7C 68 1B 78 */	mr r8, r3
/* 80875FEC  7C 85 23 79 */	or. r5, r4, r4
/* 80875FF0  3C 60 80 88 */	lis r3, lit_1109@ha /* 0x808795A0@ha */
/* 80875FF4  3B C3 95 A0 */	addi r30, r3, lit_1109@l /* 0x808795A0@l */
/* 80875FF8  3F FE 00 06 */	addis r31, r30, 6
/* 80875FFC  41 82 00 54 */	beq lbl_80876050
/* 80876000  38 7E 2C 00 */	addi r3, r30, 0x2c00
/* 80876004  3C 80 80 87 */	lis r4, daMP_VideoDecoderForOnMemory__FPv@ha /* 0x80875EA0@ha */
/* 80876008  38 84 5E A0 */	addi r4, r4, daMP_VideoDecoderForOnMemory__FPv@l /* 0x80875EA0@l */
/* 8087600C  3C C0 80 88 */	lis r6, daMP_VideoDecodeThreadStack@ha /* 0x8087C4B8@ha */
/* 80876010  38 C6 C4 B8 */	addi r6, r6, daMP_VideoDecodeThreadStack@l /* 0x8087C4B8@l */
/* 80876014  3C C6 00 06 */	addis r6, r6, 6
/* 80876018  3C E0 00 06 */	lis r7, 0x0006 /* 0x00064000@ha */
/* 8087601C  38 E7 40 00 */	addi r7, r7, 0x4000 /* 0x00064000@l */
/* 80876020  39 20 00 01 */	li r9, 1
/* 80876024  38 C6 40 00 */	addi r6, r6, 0x4000
/* 80876028  4B AC B2 65 */	bl OSCreateThread
/* 8087602C  2C 03 00 00 */	cmpwi r3, 0
/* 80876030  40 82 00 74 */	bne lbl_808760A4
/* 80876034  3C 60 80 88 */	lis r3, d_a_movie_player__stringBase0@ha /* 0x8087911C@ha */
/* 80876038  38 63 91 1C */	addi r3, r3, d_a_movie_player__stringBase0@l /* 0x8087911C@l */
/* 8087603C  38 63 00 1A */	addi r3, r3, 0x1a
/* 80876040  4C C6 31 82 */	crclr 6
/* 80876044  4B 79 0A 79 */	bl OSReport
/* 80876048  38 60 00 00 */	li r3, 0
/* 8087604C  48 00 00 88 */	b lbl_808760D4
lbl_80876050:
/* 80876050  38 7E 2C 00 */	addi r3, r30, 0x2c00
/* 80876054  3C 80 80 87 */	lis r4, daMP_VideoDecoder__FPv@ha /* 0x80875DD8@ha */
/* 80876058  38 84 5D D8 */	addi r4, r4, daMP_VideoDecoder__FPv@l /* 0x80875DD8@l */
/* 8087605C  38 A0 00 00 */	li r5, 0
/* 80876060  3C C0 80 88 */	lis r6, daMP_VideoDecodeThreadStack@ha /* 0x8087C4B8@ha */
/* 80876064  38 C6 C4 B8 */	addi r6, r6, daMP_VideoDecodeThreadStack@l /* 0x8087C4B8@l */
/* 80876068  3C C6 00 06 */	addis r6, r6, 6
/* 8087606C  3C E0 00 06 */	lis r7, 0x0006 /* 0x00064000@ha */
/* 80876070  38 E7 40 00 */	addi r7, r7, 0x4000 /* 0x00064000@l */
/* 80876074  39 20 00 01 */	li r9, 1
/* 80876078  38 C6 40 00 */	addi r6, r6, 0x4000
/* 8087607C  4B AC B2 11 */	bl OSCreateThread
/* 80876080  2C 03 00 00 */	cmpwi r3, 0
/* 80876084  40 82 00 20 */	bne lbl_808760A4
/* 80876088  3C 60 80 88 */	lis r3, d_a_movie_player__stringBase0@ha /* 0x8087911C@ha */
/* 8087608C  38 63 91 1C */	addi r3, r3, d_a_movie_player__stringBase0@l /* 0x8087911C@l */
/* 80876090  38 63 00 1A */	addi r3, r3, 0x1a
/* 80876094  4C C6 31 82 */	crclr 6
/* 80876098  4B 79 0A 25 */	bl OSReport
/* 8087609C  38 60 00 00 */	li r3, 0
/* 808760A0  48 00 00 34 */	b lbl_808760D4
lbl_808760A4:
/* 808760A4  38 7F 6F 18 */	addi r3, r31, 0x6f18
/* 808760A8  38 9F 6F 58 */	addi r4, r31, 0x6f58
/* 808760AC  38 A0 00 03 */	li r5, 3
/* 808760B0  4B AC 88 E5 */	bl OSInitMessageQueue
/* 808760B4  38 7F 6F 38 */	addi r3, r31, 0x6f38
/* 808760B8  38 9F 6F 64 */	addi r4, r31, 0x6f64
/* 808760BC  38 A0 00 03 */	li r5, 3
/* 808760C0  4B AC 88 D5 */	bl OSInitMessageQueue
/* 808760C4  38 00 00 01 */	li r0, 1
/* 808760C8  90 1E 2B F8 */	stw r0, 0x2bf8(r30)
/* 808760CC  90 1F 6F 70 */	stw r0, 0x6f70(r31)
/* 808760D0  38 60 00 01 */	li r3, 1
lbl_808760D4:
/* 808760D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808760D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 808760DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808760E0  7C 08 03 A6 */	mtlr r0
/* 808760E4  38 21 00 10 */	addi r1, r1, 0x10
/* 808760E8  4E 80 00 20 */	blr 
