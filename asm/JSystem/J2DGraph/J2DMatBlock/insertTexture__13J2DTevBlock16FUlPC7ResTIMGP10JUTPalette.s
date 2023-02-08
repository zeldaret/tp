lbl_802F0730:
/* 802F0730  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F0734  7C 08 02 A6 */	mflr r0
/* 802F0738  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F073C  39 61 00 30 */	addi r11, r1, 0x30
/* 802F0740  48 07 1A 8D */	bl _savegpr_25
/* 802F0744  7C 79 1B 78 */	mr r25, r3
/* 802F0748  7C 9A 23 78 */	mr r26, r4
/* 802F074C  7C BB 2B 78 */	mr r27, r5
/* 802F0750  7C DC 33 78 */	mr r28, r6
/* 802F0754  28 1A 00 08 */	cmplwi r26, 8
/* 802F0758  40 80 00 0C */	bge lbl_802F0764
/* 802F075C  28 1B 00 00 */	cmplwi r27, 0
/* 802F0760  40 82 00 0C */	bne lbl_802F076C
lbl_802F0764:
/* 802F0764  38 60 00 00 */	li r3, 0
/* 802F0768  48 00 03 7C */	b lbl_802F0AE4
lbl_802F076C:
/* 802F076C  3B C0 00 00 */	li r30, 0
/* 802F0770  48 00 00 28 */	b lbl_802F0798
lbl_802F0774:
/* 802F0774  57 C3 15 BA */	rlwinm r3, r30, 2, 0x16, 0x1d
/* 802F0778  38 03 01 6C */	addi r0, r3, 0x16c
/* 802F077C  7C 79 00 2E */	lwzx r3, r25, r0
/* 802F0780  28 03 00 00 */	cmplwi r3, 0
/* 802F0784  41 82 00 20 */	beq lbl_802F07A4
/* 802F0788  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802F078C  28 00 00 00 */	cmplwi r0, 0
/* 802F0790  41 82 00 14 */	beq lbl_802F07A4
/* 802F0794  3B DE 00 01 */	addi r30, r30, 1
lbl_802F0798:
/* 802F0798  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802F079C  28 00 00 08 */	cmplwi r0, 8
/* 802F07A0  41 80 FF D4 */	blt lbl_802F0774
lbl_802F07A4:
/* 802F07A4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802F07A8  7C 00 D0 40 */	cmplw r0, r26
/* 802F07AC  40 80 00 0C */	bge lbl_802F07B8
/* 802F07B0  38 60 00 00 */	li r3, 0
/* 802F07B4  48 00 03 30 */	b lbl_802F0AE4
lbl_802F07B8:
/* 802F07B8  28 00 00 08 */	cmplwi r0, 8
/* 802F07BC  40 82 00 0C */	bne lbl_802F07C8
/* 802F07C0  38 60 00 00 */	li r3, 0
/* 802F07C4  48 00 03 20 */	b lbl_802F0AE4
lbl_802F07C8:
/* 802F07C8  3B A0 00 00 */	li r29, 0
/* 802F07CC  88 1B 00 08 */	lbz r0, 8(r27)
/* 802F07D0  28 00 00 00 */	cmplwi r0, 0
/* 802F07D4  41 82 00 B8 */	beq lbl_802F088C
/* 802F07D8  28 1C 00 00 */	cmplwi r28, 0
/* 802F07DC  40 82 00 B0 */	bne lbl_802F088C
/* 802F07E0  38 C0 00 00 */	li r6, 0
/* 802F07E4  38 60 00 00 */	li r3, 0
/* 802F07E8  38 00 00 07 */	li r0, 7
/* 802F07EC  7C 09 03 A6 */	mtctr r0
lbl_802F07F0:
/* 802F07F0  38 03 01 6C */	addi r0, r3, 0x16c
/* 802F07F4  7C B9 00 2E */	lwzx r5, r25, r0
/* 802F07F8  28 05 00 00 */	cmplwi r5, 0
/* 802F07FC  41 82 00 50 */	beq lbl_802F084C
/* 802F0800  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802F0804  28 04 00 00 */	cmplwi r4, 0
/* 802F0808  41 82 00 44 */	beq lbl_802F084C
/* 802F080C  88 04 00 08 */	lbz r0, 8(r4)
/* 802F0810  28 00 00 00 */	cmplwi r0, 0
/* 802F0814  41 82 00 38 */	beq lbl_802F084C
/* 802F0818  88 85 00 3A */	lbz r4, 0x3a(r5)
/* 802F081C  2C 04 00 10 */	cmpwi r4, 0x10
/* 802F0820  38 00 00 00 */	li r0, 0
/* 802F0824  41 80 00 08 */	blt lbl_802F082C
/* 802F0828  38 00 00 10 */	li r0, 0x10
lbl_802F082C:
/* 802F082C  7C 00 20 50 */	subf r0, r0, r4
/* 802F0830  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802F0834  28 04 00 08 */	cmplwi r4, 8
/* 802F0838  40 80 00 14 */	bge lbl_802F084C
/* 802F083C  38 00 00 01 */	li r0, 1
/* 802F0840  7C 00 20 30 */	slw r0, r0, r4
/* 802F0844  7C C0 03 78 */	or r0, r6, r0
/* 802F0848  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_802F084C:
/* 802F084C  38 63 00 04 */	addi r3, r3, 4
/* 802F0850  42 00 FF A0 */	bdnz lbl_802F07F0
/* 802F0854  38 A0 00 00 */	li r5, 0
/* 802F0858  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 802F085C  38 60 00 01 */	li r3, 1
/* 802F0860  48 00 00 20 */	b lbl_802F0880
lbl_802F0864:
/* 802F0864  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802F0868  7C 60 00 30 */	slw r0, r3, r0
/* 802F086C  7C 80 00 39 */	and. r0, r4, r0
/* 802F0870  40 82 00 0C */	bne lbl_802F087C
/* 802F0874  7C BD 2B 78 */	mr r29, r5
/* 802F0878  48 00 00 14 */	b lbl_802F088C
lbl_802F087C:
/* 802F087C  38 A5 00 01 */	addi r5, r5, 1
lbl_802F0880:
/* 802F0880  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802F0884  28 00 00 08 */	cmplwi r0, 8
/* 802F0888  41 80 FF DC */	blt lbl_802F0864
lbl_802F088C:
/* 802F088C  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 802F0890  7C 79 02 14 */	add r3, r25, r0
/* 802F0894  83 E3 01 6C */	lwz r31, 0x16c(r3)
/* 802F0898  28 1F 00 00 */	cmplwi r31, 0
/* 802F089C  40 82 00 EC */	bne lbl_802F0988
/* 802F08A0  38 60 00 40 */	li r3, 0x40
/* 802F08A4  4B FD E3 A9 */	bl __nw__FUl
/* 802F08A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802F08AC  41 82 00 24 */	beq lbl_802F08D0
/* 802F08B0  38 00 00 00 */	li r0, 0
/* 802F08B4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802F08B8  7F 64 DB 78 */	mr r4, r27
/* 802F08BC  7F A5 EB 78 */	mr r5, r29
/* 802F08C0  4B FE D9 E9 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802F08C4  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802F08C8  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802F08CC  98 1F 00 3B */	stb r0, 0x3b(r31)
lbl_802F08D0:
/* 802F08D0  28 1F 00 00 */	cmplwi r31, 0
/* 802F08D4  40 82 00 0C */	bne lbl_802F08E0
/* 802F08D8  38 60 00 00 */	li r3, 0
/* 802F08DC  48 00 02 08 */	b lbl_802F0AE4
lbl_802F08E0:
/* 802F08E0  28 1C 00 00 */	cmplwi r28, 0
/* 802F08E4  41 82 00 14 */	beq lbl_802F08F8
/* 802F08E8  7F E3 FB 78 */	mr r3, r31
/* 802F08EC  7F 64 DB 78 */	mr r4, r27
/* 802F08F0  7F 85 E3 78 */	mr r5, r28
/* 802F08F4  4B FE DB 59 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802F08F8:
/* 802F08F8  38 E0 00 07 */	li r7, 7
/* 802F08FC  48 00 00 40 */	b lbl_802F093C
lbl_802F0900:
/* 802F0900  54 80 10 3A */	slwi r0, r4, 2
/* 802F0904  7C B9 02 14 */	add r5, r25, r0
/* 802F0908  80 65 01 68 */	lwz r3, 0x168(r5)
/* 802F090C  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 802F0910  7C D9 02 14 */	add r6, r25, r0
/* 802F0914  90 66 01 6C */	stw r3, 0x16c(r6)
/* 802F0918  80 05 01 88 */	lwz r0, 0x188(r5)
/* 802F091C  90 06 01 8C */	stw r0, 0x18c(r6)
/* 802F0920  54 83 08 3C */	slwi r3, r4, 1
/* 802F0924  38 03 00 02 */	addi r0, r3, 2
/* 802F0928  7C 99 02 2E */	lhzx r4, r25, r0
/* 802F092C  54 E3 0D FC */	rlwinm r3, r7, 1, 0x17, 0x1e
/* 802F0930  38 03 00 04 */	addi r0, r3, 4
/* 802F0934  7C 99 03 2E */	sthx r4, r25, r0
/* 802F0938  38 E7 FF FF */	addi r7, r7, -1
lbl_802F093C:
/* 802F093C  54 E4 06 3E */	clrlwi r4, r7, 0x18
/* 802F0940  7C 04 D0 40 */	cmplw r4, r26
/* 802F0944  41 81 FF BC */	bgt lbl_802F0900
/* 802F0948  57 40 10 3A */	slwi r0, r26, 2
/* 802F094C  7C 79 02 14 */	add r3, r25, r0
/* 802F0950  93 E3 01 6C */	stw r31, 0x16c(r3)
/* 802F0954  7F 23 CB 78 */	mr r3, r25
/* 802F0958  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 802F095C  38 A0 00 01 */	li r5, 1
/* 802F0960  81 99 00 00 */	lwz r12, 0(r25)
/* 802F0964  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802F0968  7D 89 03 A6 */	mtctr r12
/* 802F096C  4E 80 04 21 */	bctrl 
/* 802F0970  88 79 01 B0 */	lbz r3, 0x1b0(r25)
/* 802F0974  38 00 00 01 */	li r0, 1
/* 802F0978  7C 00 D0 30 */	slw r0, r0, r26
/* 802F097C  7C 60 03 78 */	or r0, r3, r0
/* 802F0980  98 19 01 B0 */	stb r0, 0x1b0(r25)
/* 802F0984  48 00 01 38 */	b lbl_802F0ABC
lbl_802F0988:
/* 802F0988  28 1C 00 00 */	cmplwi r28, 0
/* 802F098C  40 82 00 18 */	bne lbl_802F09A4
/* 802F0990  7F E3 FB 78 */	mr r3, r31
/* 802F0994  7F 64 DB 78 */	mr r4, r27
/* 802F0998  7F A5 EB 78 */	mr r5, r29
/* 802F099C  4B FE D9 0D */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802F09A0  48 00 00 14 */	b lbl_802F09B4
lbl_802F09A4:
/* 802F09A4  7F E3 FB 78 */	mr r3, r31
/* 802F09A8  7F 64 DB 78 */	mr r4, r27
/* 802F09AC  7F 85 E3 78 */	mr r5, r28
/* 802F09B0  4B FE DA 9D */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802F09B4:
/* 802F09B4  38 E0 00 00 */	li r7, 0
/* 802F09B8  38 C0 00 01 */	li r6, 1
/* 802F09BC  38 61 00 08 */	addi r3, r1, 8
/* 802F09C0  48 00 00 24 */	b lbl_802F09E4
lbl_802F09C4:
/* 802F09C4  88 99 01 B0 */	lbz r4, 0x1b0(r25)
/* 802F09C8  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 802F09CC  7C C0 28 30 */	slw r0, r6, r5
/* 802F09D0  7C 84 00 38 */	and r4, r4, r0
/* 802F09D4  30 04 FF FF */	addic r0, r4, -1
/* 802F09D8  7C 00 21 10 */	subfe r0, r0, r4
/* 802F09DC  7C 03 29 AE */	stbx r0, r3, r5
/* 802F09E0  38 E7 00 01 */	addi r7, r7, 1
lbl_802F09E4:
/* 802F09E4  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802F09E8  28 00 00 08 */	cmplwi r0, 8
/* 802F09EC  41 80 FF D8 */	blt lbl_802F09C4
/* 802F09F0  7F C9 F3 78 */	mr r9, r30
/* 802F09F4  38 61 00 08 */	addi r3, r1, 8
/* 802F09F8  48 00 00 50 */	b lbl_802F0A48
lbl_802F09FC:
/* 802F09FC  54 C0 10 3A */	slwi r0, r6, 2
/* 802F0A00  7C B9 02 14 */	add r5, r25, r0
/* 802F0A04  80 85 01 68 */	lwz r4, 0x168(r5)
/* 802F0A08  55 28 06 3E */	clrlwi r8, r9, 0x18
/* 802F0A0C  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802F0A10  7C F9 02 14 */	add r7, r25, r0
/* 802F0A14  90 87 01 6C */	stw r4, 0x16c(r7)
/* 802F0A18  80 05 01 88 */	lwz r0, 0x188(r5)
/* 802F0A1C  90 07 01 8C */	stw r0, 0x18c(r7)
/* 802F0A20  54 C4 08 3C */	slwi r4, r6, 1
/* 802F0A24  38 04 00 02 */	addi r0, r4, 2
/* 802F0A28  7C B9 02 2E */	lhzx r5, r25, r0
/* 802F0A2C  55 24 0D FC */	rlwinm r4, r9, 1, 0x17, 0x1e
/* 802F0A30  38 04 00 04 */	addi r0, r4, 4
/* 802F0A34  7C B9 03 2E */	sthx r5, r25, r0
/* 802F0A38  38 06 FF FF */	addi r0, r6, -1
/* 802F0A3C  7C 03 00 AE */	lbzx r0, r3, r0
/* 802F0A40  7C 03 41 AE */	stbx r0, r3, r8
/* 802F0A44  39 29 FF FF */	addi r9, r9, -1
lbl_802F0A48:
/* 802F0A48  55 26 06 3E */	clrlwi r6, r9, 0x18
/* 802F0A4C  7C 06 D0 40 */	cmplw r6, r26
/* 802F0A50  41 81 FF AC */	bgt lbl_802F09FC
/* 802F0A54  57 40 10 3A */	slwi r0, r26, 2
/* 802F0A58  7C 79 02 14 */	add r3, r25, r0
/* 802F0A5C  93 E3 01 6C */	stw r31, 0x16c(r3)
/* 802F0A60  38 00 00 00 */	li r0, 0
/* 802F0A64  98 19 01 B0 */	stb r0, 0x1b0(r25)
/* 802F0A68  38 E0 00 00 */	li r7, 0
/* 802F0A6C  38 A1 00 08 */	addi r5, r1, 8
/* 802F0A70  38 60 00 01 */	li r3, 1
/* 802F0A74  48 00 00 28 */	b lbl_802F0A9C
lbl_802F0A78:
/* 802F0A78  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 802F0A7C  7C 05 30 AE */	lbzx r0, r5, r6
/* 802F0A80  28 00 00 00 */	cmplwi r0, 0
/* 802F0A84  41 82 00 14 */	beq lbl_802F0A98
/* 802F0A88  88 99 01 B0 */	lbz r4, 0x1b0(r25)
/* 802F0A8C  7C 60 30 30 */	slw r0, r3, r6
/* 802F0A90  7C 80 03 78 */	or r0, r4, r0
/* 802F0A94  98 19 01 B0 */	stb r0, 0x1b0(r25)
lbl_802F0A98:
/* 802F0A98  38 E7 00 01 */	addi r7, r7, 1
lbl_802F0A9C:
/* 802F0A9C  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802F0AA0  28 00 00 08 */	cmplwi r0, 8
/* 802F0AA4  41 80 FF D4 */	blt lbl_802F0A78
/* 802F0AA8  88 79 01 B0 */	lbz r3, 0x1b0(r25)
/* 802F0AAC  38 00 00 01 */	li r0, 1
/* 802F0AB0  7C 00 D0 30 */	slw r0, r0, r26
/* 802F0AB4  7C 60 03 78 */	or r0, r3, r0
/* 802F0AB8  98 19 01 B0 */	stb r0, 0x1b0(r25)
lbl_802F0ABC:
/* 802F0ABC  38 80 00 00 */	li r4, 0
/* 802F0AC0  57 40 10 3A */	slwi r0, r26, 2
/* 802F0AC4  7C 79 02 14 */	add r3, r25, r0
/* 802F0AC8  90 83 01 8C */	stw r4, 0x18c(r3)
/* 802F0ACC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F0AD0  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F0AD4  57 40 08 3C */	slwi r0, r26, 1
/* 802F0AD8  7C 79 02 14 */	add r3, r25, r0
/* 802F0ADC  B0 83 00 04 */	sth r4, 4(r3)
/* 802F0AE0  38 60 00 01 */	li r3, 1
lbl_802F0AE4:
/* 802F0AE4  39 61 00 30 */	addi r11, r1, 0x30
/* 802F0AE8  48 07 17 31 */	bl _restgpr_25
/* 802F0AEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0AF0  7C 08 03 A6 */	mtlr r0
/* 802F0AF4  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0AF8  4E 80 00 20 */	blr 
