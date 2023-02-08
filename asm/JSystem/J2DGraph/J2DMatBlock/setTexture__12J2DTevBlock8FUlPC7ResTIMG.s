lbl_802EF80C:
/* 802EF80C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EF810  7C 08 02 A6 */	mflr r0
/* 802EF814  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EF818  39 61 00 30 */	addi r11, r1, 0x30
/* 802EF81C  48 07 29 B1 */	bl _savegpr_25
/* 802EF820  7C 79 1B 78 */	mr r25, r3
/* 802EF824  7C 9A 23 78 */	mr r26, r4
/* 802EF828  7C BB 2B 78 */	mr r27, r5
/* 802EF82C  28 1A 00 08 */	cmplwi r26, 8
/* 802EF830  41 80 00 0C */	blt lbl_802EF83C
/* 802EF834  38 60 00 00 */	li r3, 0
/* 802EF838  48 00 02 48 */	b lbl_802EFA80
lbl_802EF83C:
/* 802EF83C  3B 80 00 00 */	li r28, 0
/* 802EF840  28 1B 00 00 */	cmplwi r27, 0
/* 802EF844  41 82 00 CC */	beq lbl_802EF910
/* 802EF848  88 1B 00 08 */	lbz r0, 8(r27)
/* 802EF84C  28 00 00 00 */	cmplwi r0, 0
/* 802EF850  41 82 00 C0 */	beq lbl_802EF910
/* 802EF854  38 C0 00 00 */	li r6, 0
/* 802EF858  38 E0 00 00 */	li r7, 0
/* 802EF85C  38 60 00 00 */	li r3, 0
/* 802EF860  38 00 00 08 */	li r0, 8
/* 802EF864  7C 09 03 A6 */	mtctr r0
lbl_802EF868:
/* 802EF868  7C 07 D0 40 */	cmplw r7, r26
/* 802EF86C  41 82 00 60 */	beq lbl_802EF8CC
/* 802EF870  38 03 00 DC */	addi r0, r3, 0xdc
/* 802EF874  7C B9 00 2E */	lwzx r5, r25, r0
/* 802EF878  28 05 00 00 */	cmplwi r5, 0
/* 802EF87C  41 82 00 50 */	beq lbl_802EF8CC
/* 802EF880  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802EF884  28 04 00 00 */	cmplwi r4, 0
/* 802EF888  41 82 00 44 */	beq lbl_802EF8CC
/* 802EF88C  88 04 00 08 */	lbz r0, 8(r4)
/* 802EF890  28 00 00 00 */	cmplwi r0, 0
/* 802EF894  41 82 00 38 */	beq lbl_802EF8CC
/* 802EF898  88 85 00 3A */	lbz r4, 0x3a(r5)
/* 802EF89C  2C 04 00 10 */	cmpwi r4, 0x10
/* 802EF8A0  38 00 00 00 */	li r0, 0
/* 802EF8A4  41 80 00 08 */	blt lbl_802EF8AC
/* 802EF8A8  38 00 00 10 */	li r0, 0x10
lbl_802EF8AC:
/* 802EF8AC  7C 00 20 50 */	subf r0, r0, r4
/* 802EF8B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EF8B4  28 04 00 08 */	cmplwi r4, 8
/* 802EF8B8  40 80 00 14 */	bge lbl_802EF8CC
/* 802EF8BC  38 00 00 01 */	li r0, 1
/* 802EF8C0  7C 00 20 30 */	slw r0, r0, r4
/* 802EF8C4  7C C0 03 78 */	or r0, r6, r0
/* 802EF8C8  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_802EF8CC:
/* 802EF8CC  38 E7 00 01 */	addi r7, r7, 1
/* 802EF8D0  38 63 00 04 */	addi r3, r3, 4
/* 802EF8D4  42 00 FF 94 */	bdnz lbl_802EF868
/* 802EF8D8  38 A0 00 00 */	li r5, 0
/* 802EF8DC  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 802EF8E0  38 60 00 01 */	li r3, 1
/* 802EF8E4  48 00 00 20 */	b lbl_802EF904
lbl_802EF8E8:
/* 802EF8E8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802EF8EC  7C 60 00 30 */	slw r0, r3, r0
/* 802EF8F0  7C 80 00 39 */	and. r0, r4, r0
/* 802EF8F4  40 82 00 0C */	bne lbl_802EF900
/* 802EF8F8  7C BC 2B 78 */	mr r28, r5
/* 802EF8FC  48 00 00 14 */	b lbl_802EF910
lbl_802EF900:
/* 802EF900  38 A5 00 01 */	addi r5, r5, 1
lbl_802EF904:
/* 802EF904  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802EF908  28 00 00 04 */	cmplwi r0, 4
/* 802EF90C  41 80 FF DC */	blt lbl_802EF8E8
lbl_802EF910:
/* 802EF910  57 5D 10 3A */	slwi r29, r26, 2
/* 802EF914  7F F9 EA 14 */	add r31, r25, r29
/* 802EF918  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 802EF91C  28 03 00 00 */	cmplwi r3, 0
/* 802EF920  40 82 00 84 */	bne lbl_802EF9A4
/* 802EF924  28 1B 00 00 */	cmplwi r27, 0
/* 802EF928  41 82 00 64 */	beq lbl_802EF98C
/* 802EF92C  38 60 00 40 */	li r3, 0x40
/* 802EF930  4B FD F3 1D */	bl __nw__FUl
/* 802EF934  7C 7E 1B 79 */	or. r30, r3, r3
/* 802EF938  41 82 00 24 */	beq lbl_802EF95C
/* 802EF93C  38 00 00 00 */	li r0, 0
/* 802EF940  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802EF944  7F 64 DB 78 */	mr r4, r27
/* 802EF948  7F 85 E3 78 */	mr r5, r28
/* 802EF94C  4B FE E9 5D */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EF950  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802EF954  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EF958  98 1E 00 3B */	stb r0, 0x3b(r30)
lbl_802EF95C:
/* 802EF95C  93 DF 00 DC */	stw r30, 0xdc(r31)
/* 802EF960  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 802EF964  28 00 00 00 */	cmplwi r0, 0
/* 802EF968  40 82 00 0C */	bne lbl_802EF974
/* 802EF96C  38 60 00 00 */	li r3, 0
/* 802EF970  48 00 01 10 */	b lbl_802EFA80
lbl_802EF974:
/* 802EF974  88 79 01 20 */	lbz r3, 0x120(r25)
/* 802EF978  38 00 00 01 */	li r0, 1
/* 802EF97C  7C 00 D0 30 */	slw r0, r0, r26
/* 802EF980  7C 60 03 78 */	or r0, r3, r0
/* 802EF984  98 19 01 20 */	stb r0, 0x120(r25)
/* 802EF988  48 00 00 CC */	b lbl_802EFA54
lbl_802EF98C:
/* 802EF98C  88 79 01 20 */	lbz r3, 0x120(r25)
/* 802EF990  38 00 00 01 */	li r0, 1
/* 802EF994  7C 00 D0 30 */	slw r0, r0, r26
/* 802EF998  7C 60 00 78 */	andc r0, r3, r0
/* 802EF99C  98 19 01 20 */	stb r0, 0x120(r25)
/* 802EF9A0  48 00 00 B4 */	b lbl_802EFA54
lbl_802EF9A4:
/* 802EF9A4  88 99 01 20 */	lbz r4, 0x120(r25)
/* 802EF9A8  38 00 00 01 */	li r0, 1
/* 802EF9AC  7C 1E D0 30 */	slw r30, r0, r26
/* 802EF9B0  7C 80 F0 39 */	and. r0, r4, r30
/* 802EF9B4  41 82 00 3C */	beq lbl_802EF9F0
/* 802EF9B8  28 1B 00 00 */	cmplwi r27, 0
/* 802EF9BC  41 82 00 14 */	beq lbl_802EF9D0
/* 802EF9C0  7F 64 DB 78 */	mr r4, r27
/* 802EF9C4  7F 85 E3 78 */	mr r5, r28
/* 802EF9C8  4B FE E8 E1 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EF9CC  48 00 00 88 */	b lbl_802EFA54
lbl_802EF9D0:
/* 802EF9D0  38 80 00 01 */	li r4, 1
/* 802EF9D4  4B FE E8 61 */	bl __dt__10JUTTextureFv
/* 802EF9D8  38 00 00 00 */	li r0, 0
/* 802EF9DC  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 802EF9E0  88 19 01 20 */	lbz r0, 0x120(r25)
/* 802EF9E4  7C 00 F0 78 */	andc r0, r0, r30
/* 802EF9E8  98 19 01 20 */	stb r0, 0x120(r25)
/* 802EF9EC  48 00 00 68 */	b lbl_802EFA54
lbl_802EF9F0:
/* 802EF9F0  38 00 00 00 */	li r0, 0
/* 802EF9F4  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 802EF9F8  28 1B 00 00 */	cmplwi r27, 0
/* 802EF9FC  41 82 00 58 */	beq lbl_802EFA54
/* 802EFA00  38 60 00 40 */	li r3, 0x40
/* 802EFA04  4B FD F2 49 */	bl __nw__FUl
/* 802EFA08  7C 7C 1B 79 */	or. r28, r3, r3
/* 802EFA0C  41 82 00 24 */	beq lbl_802EFA30
/* 802EFA10  38 00 00 00 */	li r0, 0
/* 802EFA14  90 1C 00 28 */	stw r0, 0x28(r28)
/* 802EFA18  7F 64 DB 78 */	mr r4, r27
/* 802EFA1C  38 A0 00 00 */	li r5, 0
/* 802EFA20  4B FE E8 89 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EFA24  88 1C 00 3B */	lbz r0, 0x3b(r28)
/* 802EFA28  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EFA2C  98 1C 00 3B */	stb r0, 0x3b(r28)
lbl_802EFA30:
/* 802EFA30  93 9F 00 DC */	stw r28, 0xdc(r31)
/* 802EFA34  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 802EFA38  28 00 00 00 */	cmplwi r0, 0
/* 802EFA3C  40 82 00 0C */	bne lbl_802EFA48
/* 802EFA40  38 60 00 00 */	li r3, 0
/* 802EFA44  48 00 00 3C */	b lbl_802EFA80
lbl_802EFA48:
/* 802EFA48  88 19 01 20 */	lbz r0, 0x120(r25)
/* 802EFA4C  7C 00 F3 78 */	or r0, r0, r30
/* 802EFA50  98 19 01 20 */	stb r0, 0x120(r25)
lbl_802EFA54:
/* 802EFA54  7F 79 EA 14 */	add r27, r25, r29
/* 802EFA58  80 7B 00 FC */	lwz r3, 0xfc(r27)
/* 802EFA5C  4B FD F2 E1 */	bl __dl__FPv
/* 802EFA60  38 00 00 00 */	li r0, 0
/* 802EFA64  90 1B 00 FC */	stw r0, 0xfc(r27)
/* 802EFA68  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EFA6C  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EFA70  57 40 08 3C */	slwi r0, r26, 1
/* 802EFA74  7C 79 02 14 */	add r3, r25, r0
/* 802EFA78  B0 83 00 04 */	sth r4, 4(r3)
/* 802EFA7C  38 60 00 01 */	li r3, 1
lbl_802EFA80:
/* 802EFA80  39 61 00 30 */	addi r11, r1, 0x30
/* 802EFA84  48 07 27 95 */	bl _restgpr_25
/* 802EFA88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EFA8C  7C 08 03 A6 */	mtlr r0
/* 802EFA90  38 21 00 30 */	addi r1, r1, 0x30
/* 802EFA94  4E 80 00 20 */	blr 
