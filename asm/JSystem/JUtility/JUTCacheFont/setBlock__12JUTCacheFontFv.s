lbl_802DD8EC:
/* 802DD8EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802DD8F0  7C 08 02 A6 */	mflr r0
/* 802DD8F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802DD8F8  39 61 00 40 */	addi r11, r1, 0x40
/* 802DD8FC  48 08 48 C1 */	bl _savegpr_21
/* 802DD900  7C 78 1B 78 */	mr r24, r3
/* 802DD904  3A E0 00 00 */	li r23, 0
/* 802DD908  3A C0 00 00 */	li r22, 0
/* 802DD90C  3A A0 00 00 */	li r21, 0
/* 802DD910  83 C3 00 7C */	lwz r30, 0x7c(r3)
/* 802DD914  83 A3 00 80 */	lwz r29, 0x80(r3)
/* 802DD918  83 83 00 84 */	lwz r28, 0x84(r3)
/* 802DD91C  80 63 00 AC */	lwz r3, 0xac(r3)
/* 802DD920  83 63 00 14 */	lwz r27, 0x14(r3)
/* 802DD924  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802DD928  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802DD92C  B0 18 00 68 */	sth r0, 0x68(r24)
/* 802DD930  80 78 00 48 */	lwz r3, 0x48(r24)
/* 802DD934  3B 43 00 20 */	addi r26, r3, 0x20
/* 802DD938  3B 20 00 00 */	li r25, 0
/* 802DD93C  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415031@ha */
/* 802DD940  3B E3 50 31 */	addi r31, r3, 0x5031 /* 0x4D415031@l */
/* 802DD944  48 00 01 A0 */	b lbl_802DDAE4
lbl_802DD948:
/* 802DD948  80 9A 00 00 */	lwz r4, 0(r26)
/* 802DD94C  7C 04 F8 00 */	cmpw r4, r31
/* 802DD950  41 82 01 34 */	beq lbl_802DDA84
/* 802DD954  40 80 00 2C */	bge lbl_802DD980
/* 802DD958  3C 60 49 4E */	lis r3, 0x494E /* 0x494E4631@ha */
/* 802DD95C  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x494E4631@l */
/* 802DD960  7C 04 00 00 */	cmpw r4, r0
/* 802DD964  41 82 00 30 */	beq lbl_802DD994
/* 802DD968  40 80 01 60 */	bge lbl_802DDAC8
/* 802DD96C  3C 60 47 4C */	lis r3, 0x474C /* 0x474C5931@ha */
/* 802DD970  38 03 59 31 */	addi r0, r3, 0x5931 /* 0x474C5931@l */
/* 802DD974  7C 04 00 00 */	cmpw r4, r0
/* 802DD978  41 82 00 74 */	beq lbl_802DD9EC
/* 802DD97C  48 00 01 4C */	b lbl_802DDAC8
lbl_802DD980:
/* 802DD980  3C 60 57 49 */	lis r3, 0x5749 /* 0x57494431@ha */
/* 802DD984  38 03 44 31 */	addi r0, r3, 0x4431 /* 0x57494431@l */
/* 802DD988  7C 04 00 00 */	cmpw r4, r0
/* 802DD98C  41 82 00 38 */	beq lbl_802DD9C4
/* 802DD990  48 00 01 38 */	b lbl_802DDAC8
lbl_802DD994:
/* 802DD994  80 78 00 4C */	lwz r3, 0x4c(r24)
/* 802DD998  7F 44 D3 78 */	mr r4, r26
/* 802DD99C  38 A0 00 20 */	li r5, 0x20
/* 802DD9A0  4B D2 5B A1 */	bl memcpy
/* 802DD9A4  80 78 00 4C */	lwz r3, 0x4c(r24)
/* 802DD9A8  A0 03 00 08 */	lhz r0, 8(r3)
/* 802DD9AC  54 04 10 3A */	slwi r4, r0, 2
/* 802DD9B0  3C 60 80 3A */	lis r3, saoAboutEncoding___10JUTResFont@ha
/* 802DD9B4  38 03 D3 90 */	addi r0, r3, saoAboutEncoding___10JUTResFont@l
/* 802DD9B8  7C 00 22 14 */	add r0, r0, r4
/* 802DD9BC  90 18 00 6C */	stw r0, 0x6c(r24)
/* 802DD9C0  48 00 01 18 */	b lbl_802DDAD8
lbl_802DD9C4:
/* 802DD9C4  7F C3 F3 78 */	mr r3, r30
/* 802DD9C8  7F 44 D3 78 */	mr r4, r26
/* 802DD9CC  80 BA 00 04 */	lwz r5, 4(r26)
/* 802DD9D0  4B D2 5B 71 */	bl memcpy
/* 802DD9D4  80 78 00 54 */	lwz r3, 0x54(r24)
/* 802DD9D8  7F C3 B9 2E */	stwx r30, r3, r23
/* 802DD9DC  80 1A 00 04 */	lwz r0, 4(r26)
/* 802DD9E0  7F DE 02 14 */	add r30, r30, r0
/* 802DD9E4  3A F7 00 04 */	addi r23, r23, 4
/* 802DD9E8  48 00 00 F0 */	b lbl_802DDAD8
lbl_802DD9EC:
/* 802DD9EC  7F A3 EB 78 */	mr r3, r29
/* 802DD9F0  7F 44 D3 78 */	mr r4, r26
/* 802DD9F4  38 A0 00 20 */	li r5, 0x20
/* 802DD9F8  4B D2 5B 49 */	bl memcpy
/* 802DD9FC  38 7A 00 20 */	addi r3, r26, 0x20
/* 802DDA00  7F 64 DB 78 */	mr r4, r27
/* 802DDA04  80 BA 00 04 */	lwz r5, 4(r26)
/* 802DDA08  38 A5 FF E0 */	addi r5, r5, -32
/* 802DDA0C  38 C0 00 00 */	li r6, 0
/* 802DDA10  38 E0 00 00 */	li r7, 0
/* 802DDA14  39 00 00 00 */	li r8, 0
/* 802DDA18  39 20 FF FF */	li r9, -1
/* 802DDA1C  39 40 00 00 */	li r10, 0
/* 802DDA20  4B FF 49 1D */	bl mainRamToAram__7JKRAramFPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802DDA24  28 03 00 00 */	cmplwi r3, 0
/* 802DDA28  40 82 00 24 */	bne lbl_802DDA4C
/* 802DDA2C  3C 60 80 3A */	lis r3, JUTCacheFont__stringBase0@ha
/* 802DDA30  38 C3 D2 F0 */	addi r6, r3, JUTCacheFont__stringBase0@l
/* 802DDA34  38 66 00 22 */	addi r3, r6, 0x22
/* 802DDA38  38 80 01 DD */	li r4, 0x1dd
/* 802DDA3C  38 A6 00 33 */	addi r5, r6, 0x33
/* 802DDA40  38 C6 00 36 */	addi r6, r6, 0x36
/* 802DDA44  4C C6 31 82 */	crclr 6
/* 802DDA48  48 00 47 B5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802DDA4C:
/* 802DDA4C  93 7D 00 00 */	stw r27, 0(r29)
/* 802DDA50  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802DDA54  80 18 00 88 */	lwz r0, 0x88(r24)
/* 802DDA58  7C 03 00 40 */	cmplw r3, r0
/* 802DDA5C  40 81 00 08 */	ble lbl_802DDA64
/* 802DDA60  90 78 00 88 */	stw r3, 0x88(r24)
lbl_802DDA64:
/* 802DDA64  80 78 00 58 */	lwz r3, 0x58(r24)
/* 802DDA68  7F A3 B1 2E */	stwx r29, r3, r22
/* 802DDA6C  80 1A 00 04 */	lwz r0, 4(r26)
/* 802DDA70  7F 60 DA 14 */	add r27, r0, r27
/* 802DDA74  3B 7B FF E0 */	addi r27, r27, -32
/* 802DDA78  3A D6 00 04 */	addi r22, r22, 4
/* 802DDA7C  3B BD 00 20 */	addi r29, r29, 0x20
/* 802DDA80  48 00 00 58 */	b lbl_802DDAD8
lbl_802DDA84:
/* 802DDA84  7F 83 E3 78 */	mr r3, r28
/* 802DDA88  7F 44 D3 78 */	mr r4, r26
/* 802DDA8C  80 BA 00 04 */	lwz r5, 4(r26)
/* 802DDA90  4B D2 5A B1 */	bl memcpy
/* 802DDA94  80 78 00 5C */	lwz r3, 0x5c(r24)
/* 802DDA98  7F 83 A9 2E */	stwx r28, r3, r21
/* 802DDA9C  A0 18 00 68 */	lhz r0, 0x68(r24)
/* 802DDAA0  80 78 00 5C */	lwz r3, 0x5c(r24)
/* 802DDAA4  7C 63 A8 2E */	lwzx r3, r3, r21
/* 802DDAA8  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 802DDAAC  7C 00 18 40 */	cmplw r0, r3
/* 802DDAB0  40 81 00 08 */	ble lbl_802DDAB8
/* 802DDAB4  B0 78 00 68 */	sth r3, 0x68(r24)
lbl_802DDAB8:
/* 802DDAB8  80 1A 00 04 */	lwz r0, 4(r26)
/* 802DDABC  7F 9C 02 14 */	add r28, r28, r0
/* 802DDAC0  3A B5 00 04 */	addi r21, r21, 4
/* 802DDAC4  48 00 00 14 */	b lbl_802DDAD8
lbl_802DDAC8:
/* 802DDAC8  3C 60 80 3A */	lis r3, JUTCacheFont__stringBase0@ha
/* 802DDACC  38 63 D2 F0 */	addi r3, r3, JUTCacheFont__stringBase0@l
/* 802DDAD0  38 63 00 5C */	addi r3, r3, 0x5c
/* 802DDAD4  48 00 AB 75 */	bl JUTReportConsole
lbl_802DDAD8:
/* 802DDAD8  80 1A 00 04 */	lwz r0, 4(r26)
/* 802DDADC  7F 5A 02 14 */	add r26, r26, r0
/* 802DDAE0  3B 39 00 01 */	addi r25, r25, 1
lbl_802DDAE4:
/* 802DDAE4  80 78 00 48 */	lwz r3, 0x48(r24)
/* 802DDAE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802DDAEC  7C 19 00 40 */	cmplw r25, r0
/* 802DDAF0  41 80 FE 58 */	blt lbl_802DD948
/* 802DDAF4  39 61 00 40 */	addi r11, r1, 0x40
/* 802DDAF8  48 08 47 11 */	bl _restgpr_21
/* 802DDAFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802DDB00  7C 08 03 A6 */	mtlr r0
/* 802DDB04  38 21 00 40 */	addi r1, r1, 0x40
/* 802DDB08  4E 80 00 20 */	blr 
