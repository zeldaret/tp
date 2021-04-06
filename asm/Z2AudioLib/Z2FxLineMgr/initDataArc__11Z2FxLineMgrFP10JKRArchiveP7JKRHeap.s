lbl_802BA7FC:
/* 802BA7FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802BA800  7C 08 02 A6 */	mflr r0
/* 802BA804  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BA808  39 61 00 50 */	addi r11, r1, 0x50
/* 802BA80C  48 0A 79 B5 */	bl _savegpr_22
/* 802BA810  7C 77 1B 78 */	mr r23, r3
/* 802BA814  7C 98 23 78 */	mr r24, r4
/* 802BA818  7C B6 2B 78 */	mr r22, r5
/* 802BA81C  38 60 28 00 */	li r3, 0x2800
/* 802BA820  7E C4 B3 78 */	mr r4, r22
/* 802BA824  38 A0 00 20 */	li r5, 0x20
/* 802BA828  48 01 44 E9 */	bl __nwa__FUlP7JKRHeapi
/* 802BA82C  90 77 00 04 */	stw r3, 4(r23)
/* 802BA830  38 60 28 00 */	li r3, 0x2800
/* 802BA834  7E C4 B3 78 */	mr r4, r22
/* 802BA838  38 A0 00 20 */	li r5, 0x20
/* 802BA83C  48 01 44 D5 */	bl __nwa__FUlP7JKRHeapi
/* 802BA840  90 77 00 08 */	stw r3, 8(r23)
/* 802BA844  38 60 4B 00 */	li r3, 0x4b00
/* 802BA848  7E C4 B3 78 */	mr r4, r22
/* 802BA84C  38 A0 00 20 */	li r5, 0x20
/* 802BA850  48 01 44 C1 */	bl __nwa__FUlP7JKRHeapi
/* 802BA854  90 77 00 0C */	stw r3, 0xc(r23)
/* 802BA858  38 60 4B 00 */	li r3, 0x4b00
/* 802BA85C  7E C4 B3 78 */	mr r4, r22
/* 802BA860  38 A0 00 20 */	li r5, 0x20
/* 802BA864  48 01 44 AD */	bl __nwa__FUlP7JKRHeapi
/* 802BA868  90 77 00 10 */	stw r3, 0x10(r23)
/* 802BA86C  7F 03 C3 78 */	mr r3, r24
/* 802BA870  48 01 B8 9D */	bl countResource__10JKRArchiveCFv
/* 802BA874  98 77 00 15 */	stb r3, 0x15(r23)
/* 802BA878  88 17 00 15 */	lbz r0, 0x15(r23)
/* 802BA87C  1C 60 00 30 */	mulli r3, r0, 0x30
/* 802BA880  7E C4 B3 78 */	mr r4, r22
/* 802BA884  38 A0 00 00 */	li r5, 0
/* 802BA888  48 01 44 89 */	bl __nwa__FUlP7JKRHeapi
/* 802BA88C  90 77 00 00 */	stw r3, 0(r23)
/* 802BA890  3B 40 00 00 */	li r26, 0
/* 802BA894  3A C1 00 08 */	addi r22, r1, 8
/* 802BA898  3C 60 80 3C */	lis r3, __vt__10JSUIosBase@ha /* 0x803C2DF8@ha */
/* 802BA89C  3B 83 2D F8 */	addi r28, r3, __vt__10JSUIosBase@l /* 0x803C2DF8@l */
/* 802BA8A0  3C 60 80 3D */	lis r3, __vt__14JSUInputStream@ha /* 0x803CC4D4@ha */
/* 802BA8A4  3B A3 C4 D4 */	addi r29, r3, __vt__14JSUInputStream@l /* 0x803CC4D4@l */
/* 802BA8A8  3C 60 80 3D */	lis r3, __vt__20JSURandomInputStream@ha /* 0x803CC4B0@ha */
/* 802BA8AC  3B C3 C4 B0 */	addi r30, r3, __vt__20JSURandomInputStream@l /* 0x803CC4B0@l */
/* 802BA8B0  3C 60 80 3D */	lis r3, __vt__20JSUMemoryInputStream@ha /* 0x803CC4F0@ha */
/* 802BA8B4  3B E3 C4 F0 */	addi r31, r3, __vt__20JSUMemoryInputStream@l /* 0x803CC4F0@l */
/* 802BA8B8  48 00 03 20 */	b lbl_802BABD8
lbl_802BA8BC:
/* 802BA8BC  7F 03 C3 78 */	mr r3, r24
/* 802BA8C0  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 802BA8C4  48 01 B4 75 */	bl getResource__10JKRArchiveFUs
/* 802BA8C8  7C 79 1B 78 */	mr r25, r3
/* 802BA8CC  7F 03 C3 78 */	mr r3, r24
/* 802BA8D0  7F 24 CB 78 */	mr r4, r25
/* 802BA8D4  81 98 00 00 */	lwz r12, 0(r24)
/* 802BA8D8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802BA8DC  7D 89 03 A6 */	mtctr r12
/* 802BA8E0  4E 80 04 21 */	bctrl 
/* 802BA8E4  38 03 00 1F */	addi r0, r3, 0x1f
/* 802BA8E8  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 802BA8EC  93 81 00 08 */	stw r28, 8(r1)
/* 802BA8F0  38 00 00 00 */	li r0, 0
/* 802BA8F4  98 01 00 0C */	stb r0, 0xc(r1)
/* 802BA8F8  93 A1 00 08 */	stw r29, 8(r1)
/* 802BA8FC  93 C1 00 08 */	stw r30, 8(r1)
/* 802BA900  93 E1 00 08 */	stw r31, 8(r1)
/* 802BA904  7E C3 B3 78 */	mr r3, r22
/* 802BA908  7F 24 CB 78 */	mr r4, r25
/* 802BA90C  48 02 1C 15 */	bl setBuffer__20JSUMemoryInputStreamFPCvl
/* 802BA910  38 61 00 08 */	addi r3, r1, 8
/* 802BA914  80 97 00 00 */	lwz r4, 0(r23)
/* 802BA918  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 802BA91C  1F 60 00 30 */	mulli r27, r0, 0x30
/* 802BA920  7C 84 DA 14 */	add r4, r4, r27
/* 802BA924  38 A0 00 01 */	li r5, 1
/* 802BA928  48 02 19 71 */	bl read__14JSUInputStreamFPvl
/* 802BA92C  38 61 00 08 */	addi r3, r1, 8
/* 802BA930  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA934  38 9B 00 01 */	addi r4, r27, 1
/* 802BA938  7C 80 22 14 */	add r4, r0, r4
/* 802BA93C  38 A0 00 01 */	li r5, 1
/* 802BA940  48 02 19 59 */	bl read__14JSUInputStreamFPvl
/* 802BA944  38 61 00 08 */	addi r3, r1, 8
/* 802BA948  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA94C  38 9B 00 02 */	addi r4, r27, 2
/* 802BA950  7C 80 22 14 */	add r4, r0, r4
/* 802BA954  38 A0 00 01 */	li r5, 1
/* 802BA958  48 02 19 41 */	bl read__14JSUInputStreamFPvl
/* 802BA95C  38 61 00 08 */	addi r3, r1, 8
/* 802BA960  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA964  38 9B 00 03 */	addi r4, r27, 3
/* 802BA968  7C 80 22 14 */	add r4, r0, r4
/* 802BA96C  38 A0 00 01 */	li r5, 1
/* 802BA970  48 02 19 29 */	bl read__14JSUInputStreamFPvl
/* 802BA974  38 61 00 08 */	addi r3, r1, 8
/* 802BA978  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA97C  38 9B 00 04 */	addi r4, r27, 4
/* 802BA980  7C 80 22 14 */	add r4, r0, r4
/* 802BA984  38 A0 00 02 */	li r5, 2
/* 802BA988  48 02 19 11 */	bl read__14JSUInputStreamFPvl
/* 802BA98C  38 61 00 08 */	addi r3, r1, 8
/* 802BA990  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA994  38 9B 00 06 */	addi r4, r27, 6
/* 802BA998  7C 80 22 14 */	add r4, r0, r4
/* 802BA99C  38 A0 00 02 */	li r5, 2
/* 802BA9A0  48 02 18 F9 */	bl read__14JSUInputStreamFPvl
/* 802BA9A4  38 61 00 08 */	addi r3, r1, 8
/* 802BA9A8  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA9AC  38 9B 00 08 */	addi r4, r27, 8
/* 802BA9B0  7C 80 22 14 */	add r4, r0, r4
/* 802BA9B4  38 A0 00 02 */	li r5, 2
/* 802BA9B8  48 02 18 E1 */	bl read__14JSUInputStreamFPvl
/* 802BA9BC  38 61 00 08 */	addi r3, r1, 8
/* 802BA9C0  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA9C4  38 9B 00 0A */	addi r4, r27, 0xa
/* 802BA9C8  7C 80 22 14 */	add r4, r0, r4
/* 802BA9CC  38 A0 00 02 */	li r5, 2
/* 802BA9D0  48 02 18 C9 */	bl read__14JSUInputStreamFPvl
/* 802BA9D4  38 61 00 08 */	addi r3, r1, 8
/* 802BA9D8  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA9DC  38 9B 00 0C */	addi r4, r27, 0xc
/* 802BA9E0  7C 80 22 14 */	add r4, r0, r4
/* 802BA9E4  38 A0 00 02 */	li r5, 2
/* 802BA9E8  48 02 18 B1 */	bl read__14JSUInputStreamFPvl
/* 802BA9EC  38 61 00 08 */	addi r3, r1, 8
/* 802BA9F0  80 17 00 00 */	lwz r0, 0(r23)
/* 802BA9F4  38 9B 00 0E */	addi r4, r27, 0xe
/* 802BA9F8  7C 80 22 14 */	add r4, r0, r4
/* 802BA9FC  38 A0 00 02 */	li r5, 2
/* 802BAA00  48 02 18 99 */	bl read__14JSUInputStreamFPvl
/* 802BAA04  38 61 00 08 */	addi r3, r1, 8
/* 802BAA08  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAA0C  38 9B 00 10 */	addi r4, r27, 0x10
/* 802BAA10  7C 80 22 14 */	add r4, r0, r4
/* 802BAA14  38 A0 00 02 */	li r5, 2
/* 802BAA18  48 02 18 81 */	bl read__14JSUInputStreamFPvl
/* 802BAA1C  38 61 00 08 */	addi r3, r1, 8
/* 802BAA20  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAA24  38 9B 00 12 */	addi r4, r27, 0x12
/* 802BAA28  7C 80 22 14 */	add r4, r0, r4
/* 802BAA2C  38 A0 00 02 */	li r5, 2
/* 802BAA30  48 02 18 69 */	bl read__14JSUInputStreamFPvl
/* 802BAA34  38 61 00 08 */	addi r3, r1, 8
/* 802BAA38  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAA3C  38 9B 00 14 */	addi r4, r27, 0x14
/* 802BAA40  7C 80 22 14 */	add r4, r0, r4
/* 802BAA44  38 A0 00 02 */	li r5, 2
/* 802BAA48  48 02 18 51 */	bl read__14JSUInputStreamFPvl
/* 802BAA4C  38 61 00 08 */	addi r3, r1, 8
/* 802BAA50  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAA54  38 9B 00 16 */	addi r4, r27, 0x16
/* 802BAA58  7C 80 22 14 */	add r4, r0, r4
/* 802BAA5C  38 A0 00 02 */	li r5, 2
/* 802BAA60  48 02 18 39 */	bl read__14JSUInputStreamFPvl
/* 802BAA64  38 61 00 08 */	addi r3, r1, 8
/* 802BAA68  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAA6C  38 9B 00 18 */	addi r4, r27, 0x18
/* 802BAA70  7C 80 22 14 */	add r4, r0, r4
/* 802BAA74  38 A0 00 01 */	li r5, 1
/* 802BAA78  48 02 18 21 */	bl read__14JSUInputStreamFPvl
/* 802BAA7C  38 61 00 08 */	addi r3, r1, 8
/* 802BAA80  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAA84  38 9B 00 19 */	addi r4, r27, 0x19
/* 802BAA88  7C 80 22 14 */	add r4, r0, r4
/* 802BAA8C  38 A0 00 01 */	li r5, 1
/* 802BAA90  48 02 18 09 */	bl read__14JSUInputStreamFPvl
/* 802BAA94  38 61 00 08 */	addi r3, r1, 8
/* 802BAA98  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAA9C  38 9B 00 1A */	addi r4, r27, 0x1a
/* 802BAAA0  7C 80 22 14 */	add r4, r0, r4
/* 802BAAA4  38 A0 00 01 */	li r5, 1
/* 802BAAA8  48 02 17 F1 */	bl read__14JSUInputStreamFPvl
/* 802BAAAC  38 61 00 08 */	addi r3, r1, 8
/* 802BAAB0  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAAB4  38 9B 00 1B */	addi r4, r27, 0x1b
/* 802BAAB8  7C 80 22 14 */	add r4, r0, r4
/* 802BAABC  38 A0 00 01 */	li r5, 1
/* 802BAAC0  48 02 17 D9 */	bl read__14JSUInputStreamFPvl
/* 802BAAC4  38 61 00 08 */	addi r3, r1, 8
/* 802BAAC8  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAACC  38 9B 00 1C */	addi r4, r27, 0x1c
/* 802BAAD0  7C 80 22 14 */	add r4, r0, r4
/* 802BAAD4  38 A0 00 02 */	li r5, 2
/* 802BAAD8  48 02 17 C1 */	bl read__14JSUInputStreamFPvl
/* 802BAADC  38 61 00 08 */	addi r3, r1, 8
/* 802BAAE0  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAAE4  38 9B 00 1E */	addi r4, r27, 0x1e
/* 802BAAE8  7C 80 22 14 */	add r4, r0, r4
/* 802BAAEC  38 A0 00 02 */	li r5, 2
/* 802BAAF0  48 02 17 A9 */	bl read__14JSUInputStreamFPvl
/* 802BAAF4  38 61 00 08 */	addi r3, r1, 8
/* 802BAAF8  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAAFC  38 9B 00 20 */	addi r4, r27, 0x20
/* 802BAB00  7C 80 22 14 */	add r4, r0, r4
/* 802BAB04  38 A0 00 02 */	li r5, 2
/* 802BAB08  48 02 17 91 */	bl read__14JSUInputStreamFPvl
/* 802BAB0C  38 61 00 08 */	addi r3, r1, 8
/* 802BAB10  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAB14  38 9B 00 22 */	addi r4, r27, 0x22
/* 802BAB18  7C 80 22 14 */	add r4, r0, r4
/* 802BAB1C  38 A0 00 02 */	li r5, 2
/* 802BAB20  48 02 17 79 */	bl read__14JSUInputStreamFPvl
/* 802BAB24  38 61 00 08 */	addi r3, r1, 8
/* 802BAB28  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAB2C  38 9B 00 24 */	addi r4, r27, 0x24
/* 802BAB30  7C 80 22 14 */	add r4, r0, r4
/* 802BAB34  38 A0 00 02 */	li r5, 2
/* 802BAB38  48 02 17 61 */	bl read__14JSUInputStreamFPvl
/* 802BAB3C  38 61 00 08 */	addi r3, r1, 8
/* 802BAB40  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAB44  38 9B 00 26 */	addi r4, r27, 0x26
/* 802BAB48  7C 80 22 14 */	add r4, r0, r4
/* 802BAB4C  38 A0 00 02 */	li r5, 2
/* 802BAB50  48 02 17 49 */	bl read__14JSUInputStreamFPvl
/* 802BAB54  38 61 00 08 */	addi r3, r1, 8
/* 802BAB58  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAB5C  38 9B 00 28 */	addi r4, r27, 0x28
/* 802BAB60  7C 80 22 14 */	add r4, r0, r4
/* 802BAB64  38 A0 00 02 */	li r5, 2
/* 802BAB68  48 02 17 31 */	bl read__14JSUInputStreamFPvl
/* 802BAB6C  38 61 00 08 */	addi r3, r1, 8
/* 802BAB70  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAB74  38 9B 00 2A */	addi r4, r27, 0x2a
/* 802BAB78  7C 80 22 14 */	add r4, r0, r4
/* 802BAB7C  38 A0 00 02 */	li r5, 2
/* 802BAB80  48 02 17 19 */	bl read__14JSUInputStreamFPvl
/* 802BAB84  38 61 00 08 */	addi r3, r1, 8
/* 802BAB88  80 17 00 00 */	lwz r0, 0(r23)
/* 802BAB8C  38 9B 00 2C */	addi r4, r27, 0x2c
/* 802BAB90  7C 80 22 14 */	add r4, r0, r4
/* 802BAB94  38 A0 00 02 */	li r5, 2
/* 802BAB98  48 02 17 01 */	bl read__14JSUInputStreamFPvl
/* 802BAB9C  38 61 00 08 */	addi r3, r1, 8
/* 802BABA0  80 17 00 00 */	lwz r0, 0(r23)
/* 802BABA4  38 9B 00 2E */	addi r4, r27, 0x2e
/* 802BABA8  7C 80 22 14 */	add r4, r0, r4
/* 802BABAC  38 A0 00 02 */	li r5, 2
/* 802BABB0  48 02 16 E9 */	bl read__14JSUInputStreamFPvl
/* 802BABB4  7F 23 CB 78 */	mr r3, r25
/* 802BABB8  38 80 00 00 */	li r4, 0
/* 802BABBC  48 01 39 45 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802BABC0  93 E1 00 08 */	stw r31, 8(r1)
/* 802BABC4  93 C1 00 08 */	stw r30, 8(r1)
/* 802BABC8  38 61 00 08 */	addi r3, r1, 8
/* 802BABCC  38 80 00 00 */	li r4, 0
/* 802BABD0  48 02 16 6D */	bl __dt__14JSUInputStreamFv
/* 802BABD4  3B 5A 00 01 */	addi r26, r26, 1
lbl_802BABD8:
/* 802BABD8  57 43 06 3E */	clrlwi r3, r26, 0x18
/* 802BABDC  88 17 00 15 */	lbz r0, 0x15(r23)
/* 802BABE0  7C 03 00 40 */	cmplw r3, r0
/* 802BABE4  41 80 FC D8 */	blt lbl_802BA8BC
/* 802BABE8  7E E3 BB 78 */	mr r3, r23
/* 802BABEC  38 80 FF FF */	li r4, -1
/* 802BABF0  38 A0 00 00 */	li r5, 0
/* 802BABF4  38 C0 00 00 */	li r6, 0
/* 802BABF8  48 00 00 31 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BABFC  7E E3 BB 78 */	mr r3, r23
/* 802BAC00  38 80 FF FF */	li r4, -1
/* 802BAC04  38 A0 00 01 */	li r5, 1
/* 802BAC08  38 C0 00 00 */	li r6, 0
/* 802BAC0C  48 00 00 1D */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAC10  39 61 00 50 */	addi r11, r1, 0x50
/* 802BAC14  48 0A 75 F9 */	bl _restgpr_22
/* 802BAC18  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BAC1C  7C 08 03 A6 */	mtlr r0
/* 802BAC20  38 21 00 50 */	addi r1, r1, 0x50
/* 802BAC24  4E 80 00 20 */	blr 
