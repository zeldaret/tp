lbl_802D89BC:
/* 802D89BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D89C0  7C 08 02 A6 */	mflr r0
/* 802D89C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D89C8  39 61 00 30 */	addi r11, r1, 0x30
/* 802D89CC  48 08 98 01 */	bl _savegpr_25
/* 802D89D0  7C 7F 1B 78 */	mr r31, r3
/* 802D89D4  7C 9A 23 78 */	mr r26, r4
/* 802D89D8  38 00 00 00 */	li r0, 0
/* 802D89DC  90 03 00 44 */	stw r0, 0x44(r3)
/* 802D89E0  90 03 00 64 */	stw r0, 0x64(r3)
/* 802D89E4  90 03 00 68 */	stw r0, 0x68(r3)
/* 802D89E8  90 03 00 6C */	stw r0, 0x6c(r3)
/* 802D89EC  90 03 00 74 */	stw r0, 0x74(r3)
/* 802D89F0  90 03 00 78 */	stw r0, 0x78(r3)
/* 802D89F4  90 03 00 7C */	stw r0, 0x7c(r3)
/* 802D89F8  90 03 00 48 */	stw r0, 0x48(r3)
/* 802D89FC  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802D8A00  90 03 00 54 */	stw r0, 0x54(r3)
/* 802D8A04  38 60 00 F8 */	li r3, 0xf8
/* 802D8A08  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D8A0C  38 A0 00 00 */	li r5, 0
/* 802D8A10  4B FF 62 89 */	bl __nw__FUlP7JKRHeapi
/* 802D8A14  7C 60 1B 79 */	or. r0, r3, r3
/* 802D8A18  41 82 00 10 */	beq lbl_802D8A28
/* 802D8A1C  7F 44 D3 78 */	mr r4, r26
/* 802D8A20  48 00 0C 81 */	bl __ct__10JKRDvdFileFl
/* 802D8A24  7C 60 1B 78 */	mr r0, r3
lbl_802D8A28:
/* 802D8A28  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802D8A2C  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 802D8A30  28 00 00 00 */	cmplwi r0, 0
/* 802D8A34  40 82 00 14 */	bne lbl_802D8A48
/* 802D8A38  38 00 00 00 */	li r0, 0
/* 802D8A3C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8A40  38 60 00 00 */	li r3, 0
/* 802D8A44  48 00 04 E4 */	b lbl_802D8F28
lbl_802D8A48:
/* 802D8A48  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D8A4C  38 80 00 20 */	li r4, 0x20
/* 802D8A50  38 A0 FF E0 */	li r5, -32
/* 802D8A54  4B FF 5A 81 */	bl alloc__7JKRHeapFUli
/* 802D8A58  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D8A5C  40 82 00 10 */	bne lbl_802D8A6C
/* 802D8A60  38 00 00 00 */	li r0, 0
/* 802D8A64  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8A68  48 00 04 70 */	b lbl_802D8ED8
lbl_802D8A6C:
/* 802D8A6C  38 00 00 00 */	li r0, 0
/* 802D8A70  90 01 00 08 */	stw r0, 8(r1)
/* 802D8A74  7F 43 D3 78 */	mr r3, r26
/* 802D8A78  7F C4 F3 78 */	mr r4, r30
/* 802D8A7C  38 A0 00 01 */	li r5, 1
/* 802D8A80  38 C0 00 20 */	li r6, 0x20
/* 802D8A84  38 E0 00 00 */	li r7, 0
/* 802D8A88  39 00 00 01 */	li r8, 1
/* 802D8A8C  39 20 00 00 */	li r9, 0
/* 802D8A90  39 5F 00 5C */	addi r10, r31, 0x5c
/* 802D8A94  48 00 11 C1 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8A98  7F C3 F3 78 */	mr r3, r30
/* 802D8A9C  38 80 00 20 */	li r4, 0x20
/* 802D8AA0  48 06 2A E1 */	bl DCInvalidateRange
/* 802D8AA4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802D8AA8  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802D8AAC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802D8AB0  90 1F 00 78 */	stw r0, 0x78(r31)
/* 802D8AB4  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 802D8AB8  2C 00 00 01 */	cmpwi r0, 1
/* 802D8ABC  41 82 01 60 */	beq lbl_802D8C1C
/* 802D8AC0  40 80 00 10 */	bge lbl_802D8AD0
/* 802D8AC4  2C 00 00 00 */	cmpwi r0, 0
/* 802D8AC8  40 80 00 10 */	bge lbl_802D8AD8
/* 802D8ACC  48 00 03 58 */	b lbl_802D8E24
lbl_802D8AD0:
/* 802D8AD0  2C 00 00 03 */	cmpwi r0, 3
/* 802D8AD4  40 80 03 50 */	bge lbl_802D8E24
lbl_802D8AD8:
/* 802D8AD8  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D8ADC  2C 00 00 01 */	cmpwi r0, 1
/* 802D8AE0  38 80 FF E0 */	li r4, -32
/* 802D8AE4  40 82 00 08 */	bne lbl_802D8AEC
/* 802D8AE8  38 80 00 20 */	li r4, 0x20
lbl_802D8AEC:
/* 802D8AEC  7C 9D 23 78 */	mr r29, r4
/* 802D8AF0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802D8AF4  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802D8AF8  7C 63 02 14 */	add r3, r3, r0
/* 802D8AFC  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D8B00  4B FF 59 75 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D8B04  90 7F 00 44 */	stw r3, 0x44(r31)
/* 802D8B08  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D8B0C  28 04 00 00 */	cmplwi r4, 0
/* 802D8B10  40 82 00 10 */	bne lbl_802D8B20
/* 802D8B14  38 00 00 00 */	li r0, 0
/* 802D8B18  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8B1C  48 00 03 08 */	b lbl_802D8E24
lbl_802D8B20:
/* 802D8B20  38 00 00 00 */	li r0, 0
/* 802D8B24  90 01 00 08 */	stw r0, 8(r1)
/* 802D8B28  7F 43 D3 78 */	mr r3, r26
/* 802D8B2C  38 A0 00 01 */	li r5, 1
/* 802D8B30  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 802D8B34  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802D8B38  7C C6 02 14 */	add r6, r6, r0
/* 802D8B3C  38 E0 00 00 */	li r7, 0
/* 802D8B40  39 00 00 01 */	li r8, 1
/* 802D8B44  39 20 00 20 */	li r9, 0x20
/* 802D8B48  39 40 00 00 */	li r10, 0
/* 802D8B4C  48 00 11 09 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8B50  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8B54  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802D8B58  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802D8B5C  7C 84 02 14 */	add r4, r4, r0
/* 802D8B60  48 06 2A 21 */	bl DCInvalidateRange
/* 802D8B64  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8B68  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D8B6C  7C 03 02 14 */	add r0, r3, r0
/* 802D8B70  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802D8B74  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802D8B78  28 04 00 00 */	cmplwi r4, 0
/* 802D8B7C  41 82 00 5C */	beq lbl_802D8BD8
/* 802D8B80  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802D8B84  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802D8B88  38 A0 00 00 */	li r5, 0
/* 802D8B8C  4B FF A4 31 */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 802D8B90  90 7F 00 68 */	stw r3, 0x68(r31)
/* 802D8B94  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 802D8B98  28 03 00 00 */	cmplwi r3, 0
/* 802D8B9C  40 82 00 10 */	bne lbl_802D8BAC
/* 802D8BA0  38 00 00 00 */	li r0, 0
/* 802D8BA4  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8BA8  48 00 02 7C */	b lbl_802D8E24
lbl_802D8BAC:
/* 802D8BAC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802D8BB0  7F 43 D3 78 */	mr r3, r26
/* 802D8BB4  38 A0 00 01 */	li r5, 1
/* 802D8BB8  80 DF 00 74 */	lwz r6, 0x74(r31)
/* 802D8BBC  80 FE 00 08 */	lwz r7, 8(r30)
/* 802D8BC0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D8BC4  7C C0 32 14 */	add r6, r0, r6
/* 802D8BC8  7C C7 32 14 */	add r6, r7, r6
/* 802D8BCC  38 E0 00 00 */	li r7, 0
/* 802D8BD0  39 00 00 00 */	li r8, 0
/* 802D8BD4  48 00 1C A1 */	bl loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUlPUl
lbl_802D8BD8:
/* 802D8BD8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8BDC  80 03 00 04 */	lwz r0, 4(r3)
/* 802D8BE0  7C 03 02 14 */	add r0, r3, r0
/* 802D8BE4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802D8BE8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8BEC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D8BF0  7C 03 02 14 */	add r0, r3, r0
/* 802D8BF4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 802D8BF8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8BFC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D8C00  7C 03 02 14 */	add r0, r3, r0
/* 802D8C04  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802D8C08  80 7E 00 08 */	lwz r3, 8(r30)
/* 802D8C0C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D8C10  7C 03 02 14 */	add r0, r3, r0
/* 802D8C14  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 802D8C18  48 00 02 0C */	b lbl_802D8E24
lbl_802D8C1C:
/* 802D8C1C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802D8C20  81 83 00 00 */	lwz r12, 0(r3)
/* 802D8C24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D8C28  7D 89 03 A6 */	mtctr r12
/* 802D8C2C  4E 80 04 21 */	bctrl 
/* 802D8C30  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D8C34  54 19 00 34 */	rlwinm r25, r0, 0, 0, 0x1a
/* 802D8C38  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D8C3C  2C 00 00 01 */	cmpwi r0, 1
/* 802D8C40  3B A0 FF E0 */	li r29, -32
/* 802D8C44  40 82 00 08 */	bne lbl_802D8C4C
/* 802D8C48  3B A0 00 20 */	li r29, 0x20
lbl_802D8C4C:
/* 802D8C4C  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D8C50  7F 24 CB 78 */	mr r4, r25
/* 802D8C54  7F 9D 00 D0 */	neg r28, r29
/* 802D8C58  7F 85 E3 78 */	mr r5, r28
/* 802D8C5C  4B FF 58 79 */	bl alloc__7JKRHeapFUli
/* 802D8C60  7C 7B 1B 79 */	or. r27, r3, r3
/* 802D8C64  40 82 00 10 */	bne lbl_802D8C74
/* 802D8C68  38 00 00 00 */	li r0, 0
/* 802D8C6C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8C70  48 00 01 74 */	b lbl_802D8DE4
lbl_802D8C74:
/* 802D8C74  38 00 00 00 */	li r0, 0
/* 802D8C78  90 01 00 08 */	stw r0, 8(r1)
/* 802D8C7C  7F 43 D3 78 */	mr r3, r26
/* 802D8C80  7F 64 DB 78 */	mr r4, r27
/* 802D8C84  38 A0 00 02 */	li r5, 2
/* 802D8C88  7F 26 CB 78 */	mr r6, r25
/* 802D8C8C  38 E0 00 00 */	li r7, 0
/* 802D8C90  39 00 00 01 */	li r8, 1
/* 802D8C94  39 20 00 00 */	li r9, 0
/* 802D8C98  39 40 00 00 */	li r10, 0
/* 802D8C9C  48 00 0F B9 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8CA0  7F 63 DB 78 */	mr r3, r27
/* 802D8CA4  7F 24 CB 78 */	mr r4, r25
/* 802D8CA8  48 06 28 D9 */	bl DCInvalidateRange
/* 802D8CAC  88 BB 00 07 */	lbz r5, 7(r27)
/* 802D8CB0  88 9B 00 06 */	lbz r4, 6(r27)
/* 802D8CB4  88 7B 00 04 */	lbz r3, 4(r27)
/* 802D8CB8  88 1B 00 05 */	lbz r0, 5(r27)
/* 802D8CBC  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D8CC0  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D8CC4  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D8CC8  7C A3 03 78 */	or r3, r5, r0
/* 802D8CCC  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D8CD0  54 19 00 34 */	rlwinm r25, r0, 0, 0, 0x1a
/* 802D8CD4  7F 23 CB 78 */	mr r3, r25
/* 802D8CD8  7F 84 E3 78 */	mr r4, r28
/* 802D8CDC  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D8CE0  4B FF 57 95 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D8CE4  7C 7C 1B 79 */	or. r28, r3, r3
/* 802D8CE8  40 82 00 10 */	bne lbl_802D8CF8
/* 802D8CEC  38 00 00 00 */	li r0, 0
/* 802D8CF0  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8CF4  48 00 00 F0 */	b lbl_802D8DE4
lbl_802D8CF8:
/* 802D8CF8  7F 9E E3 78 */	mr r30, r28
/* 802D8CFC  7F 63 DB 78 */	mr r3, r27
/* 802D8D00  7F 84 E3 78 */	mr r4, r28
/* 802D8D04  7F 25 CB 78 */	mr r5, r25
/* 802D8D08  38 C0 00 00 */	li r6, 0
/* 802D8D0C  48 00 2C 7D */	bl orderSync__9JKRDecompFPUcPUcUlUl
/* 802D8D10  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D8D14  7F 64 DB 78 */	mr r4, r27
/* 802D8D18  4B FF 58 31 */	bl free__7JKRHeapFPv
/* 802D8D1C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802D8D20  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802D8D24  7C 63 02 14 */	add r3, r3, r0
/* 802D8D28  7F A4 EB 78 */	mr r4, r29
/* 802D8D2C  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D8D30  4B FF 57 45 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D8D34  90 7F 00 44 */	stw r3, 0x44(r31)
/* 802D8D38  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8D3C  28 03 00 00 */	cmplwi r3, 0
/* 802D8D40  40 82 00 10 */	bne lbl_802D8D50
/* 802D8D44  38 00 00 00 */	li r0, 0
/* 802D8D48  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8D4C  48 00 00 98 */	b lbl_802D8DE4
lbl_802D8D50:
/* 802D8D50  38 9E 00 20 */	addi r4, r30, 0x20
/* 802D8D54  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802D8D58  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802D8D5C  7C A5 02 14 */	add r5, r5, r0
/* 802D8D60  4B FF 5D B9 */	bl copyMemory__7JKRHeapFPvPvUl
/* 802D8D64  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8D68  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D8D6C  7C 03 02 14 */	add r0, r3, r0
/* 802D8D70  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802D8D74  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802D8D78  28 04 00 00 */	cmplwi r4, 0
/* 802D8D7C  41 82 00 68 */	beq lbl_802D8DE4
/* 802D8D80  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802D8D84  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802D8D88  38 A0 00 00 */	li r5, 0
/* 802D8D8C  4B FF A2 31 */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 802D8D90  90 7F 00 68 */	stw r3, 0x68(r31)
/* 802D8D94  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 802D8D98  28 03 00 00 */	cmplwi r3, 0
/* 802D8D9C  40 82 00 10 */	bne lbl_802D8DAC
/* 802D8DA0  38 00 00 00 */	li r0, 0
/* 802D8DA4  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8DA8  48 00 00 3C */	b lbl_802D8DE4
lbl_802D8DAC:
/* 802D8DAC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802D8DB0  80 7E 00 08 */	lwz r3, 8(r30)
/* 802D8DB4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D8DB8  7C 63 02 14 */	add r3, r3, r0
/* 802D8DBC  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 802D8DC0  7C 63 02 14 */	add r3, r3, r0
/* 802D8DC4  7C 7C 1A 14 */	add r3, r28, r3
/* 802D8DC8  80 BF 00 78 */	lwz r5, 0x78(r31)
/* 802D8DCC  38 C0 00 00 */	li r6, 0
/* 802D8DD0  38 E0 00 00 */	li r7, 0
/* 802D8DD4  39 00 00 00 */	li r8, 0
/* 802D8DD8  39 20 FF FF */	li r9, -1
/* 802D8DDC  39 40 00 00 */	li r10, 0
/* 802D8DE0  4B FF 95 5D */	bl mainRamToAram__7JKRAramFPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl
lbl_802D8DE4:
/* 802D8DE4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8DE8  80 03 00 04 */	lwz r0, 4(r3)
/* 802D8DEC  7C 03 02 14 */	add r0, r3, r0
/* 802D8DF0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802D8DF4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8DF8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D8DFC  7C 03 02 14 */	add r0, r3, r0
/* 802D8E00  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 802D8E04  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8E08  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D8E0C  7C 03 02 14 */	add r0, r3, r0
/* 802D8E10  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802D8E14  80 7E 00 08 */	lwz r3, 8(r30)
/* 802D8E18  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D8E1C  7C 03 02 14 */	add r0, r3, r0
/* 802D8E20  90 1F 00 6C */	stw r0, 0x6c(r31)
lbl_802D8E24:
/* 802D8E24  38 00 00 00 */	li r0, 0
/* 802D8E28  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802D8E2C  38 80 00 00 */	li r4, 0
/* 802D8E30  80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 802D8E34  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8E38  80 03 00 08 */	lwz r0, 8(r3)
/* 802D8E3C  7C 09 03 A6 */	mtctr r0
/* 802D8E40  28 00 00 00 */	cmplwi r0, 0
/* 802D8E44  40 81 00 30 */	ble lbl_802D8E74
lbl_802D8E48:
/* 802D8E48  80 05 00 04 */	lwz r0, 4(r5)
/* 802D8E4C  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D8E50  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D8E54  41 82 00 18 */	beq lbl_802D8E6C
/* 802D8E58  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 802D8E5C  40 82 00 10 */	bne lbl_802D8E6C
/* 802D8E60  54 60 07 7A */	rlwinm r0, r3, 0, 0x1d, 0x1d
/* 802D8E64  7C 80 03 78 */	or r0, r4, r0
/* 802D8E68  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_802D8E6C:
/* 802D8E6C  38 A5 00 14 */	addi r5, r5, 0x14
/* 802D8E70  42 00 FF D8 */	bdnz lbl_802D8E48
lbl_802D8E74:
/* 802D8E74  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802D8E78  41 82 00 60 */	beq lbl_802D8ED8
/* 802D8E7C  7F A3 EB 78 */	mr r3, r29
/* 802D8E80  48 08 C2 51 */	bl abs
/* 802D8E84  7C 64 1B 78 */	mr r4, r3
/* 802D8E88  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D8E8C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D8E90  80 03 00 08 */	lwz r0, 8(r3)
/* 802D8E94  54 03 10 3A */	slwi r3, r0, 2
/* 802D8E98  4B FF 55 DD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D8E9C  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802D8EA0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802D8EA4  28 03 00 00 */	cmplwi r3, 0
/* 802D8EA8  40 82 00 1C */	bne lbl_802D8EC4
/* 802D8EAC  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D8EB0  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D8EB4  4B FF 56 95 */	bl free__7JKRHeapFPv
/* 802D8EB8  38 00 00 00 */	li r0, 0
/* 802D8EBC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D8EC0  48 00 00 18 */	b lbl_802D8ED8
lbl_802D8EC4:
/* 802D8EC4  38 80 00 00 */	li r4, 0
/* 802D8EC8  80 BF 00 44 */	lwz r5, 0x44(r31)
/* 802D8ECC  80 05 00 08 */	lwz r0, 8(r5)
/* 802D8ED0  54 05 10 3A */	slwi r5, r0, 2
/* 802D8ED4  4B D2 A5 85 */	bl memset
lbl_802D8ED8:
/* 802D8ED8  28 1E 00 00 */	cmplwi r30, 0
/* 802D8EDC  41 82 00 10 */	beq lbl_802D8EEC
/* 802D8EE0  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D8EE4  7F C4 F3 78 */	mr r4, r30
/* 802D8EE8  4B FF 56 61 */	bl free__7JKRHeapFPv
lbl_802D8EEC:
/* 802D8EEC  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 802D8EF0  28 00 00 00 */	cmplwi r0, 0
/* 802D8EF4  40 82 00 30 */	bne lbl_802D8F24
/* 802D8EF8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802D8EFC  28 03 00 00 */	cmplwi r3, 0
/* 802D8F00  41 82 00 1C */	beq lbl_802D8F1C
/* 802D8F04  41 82 00 18 */	beq lbl_802D8F1C
/* 802D8F08  38 80 00 01 */	li r4, 1
/* 802D8F0C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D8F10  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D8F14  7D 89 03 A6 */	mtctr r12
/* 802D8F18  4E 80 04 21 */	bctrl 
lbl_802D8F1C:
/* 802D8F1C  38 60 00 00 */	li r3, 0
/* 802D8F20  48 00 00 08 */	b lbl_802D8F28
lbl_802D8F24:
/* 802D8F24  38 60 00 01 */	li r3, 1
lbl_802D8F28:
/* 802D8F28  39 61 00 30 */	addi r11, r1, 0x30
/* 802D8F2C  48 08 92 ED */	bl _restgpr_25
/* 802D8F30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D8F34  7C 08 03 A6 */	mtlr r0
/* 802D8F38  38 21 00 30 */	addi r1, r1, 0x30
/* 802D8F3C  4E 80 00 20 */	blr 
