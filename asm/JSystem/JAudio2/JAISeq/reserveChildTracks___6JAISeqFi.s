lbl_802A0CA4:
/* 802A0CA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A0CA8  7C 08 02 A6 */	mflr r0
/* 802A0CAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A0CB0  39 61 00 30 */	addi r11, r1, 0x30
/* 802A0CB4  48 0C 15 15 */	bl _savegpr_24
/* 802A0CB8  7C 7D 1B 78 */	mr r29, r3
/* 802A0CBC  7C 9C 23 78 */	mr r28, r4
/* 802A0CC0  3B C0 00 00 */	li r30, 0
/* 802A0CC4  3B E0 00 00 */	li r31, 0
/* 802A0CC8  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A0CCC  3B 63 1B 04 */	addi r27, r3, data_80431B04@l /* 0x80431B04@l */
lbl_802A0CD0:
/* 802A0CD0  88 0D 8C B1 */	lbz r0, struct_80451230+0x1(r13)
/* 802A0CD4  7C 00 07 75 */	extsb. r0, r0
/* 802A0CD8  40 82 00 34 */	bne lbl_802A0D0C
/* 802A0CDC  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A0CE0  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802A0CE4  4B FE FB 65 */	bl __ct__17JASGenericMemPoolFv
/* 802A0CE8  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A0CEC  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802A0CF0  3C 80 80 29 */	lis r4, func_802932E0@ha /* 0x802932E0@ha */
/* 802A0CF4  38 84 32 E0 */	addi r4, r4, func_802932E0@l /* 0x802932E0@l */
/* 802A0CF8  3C A0 80 43 */	lis r5, lit_716@ha /* 0x80434098@ha */
/* 802A0CFC  38 A5 40 98 */	addi r5, r5, lit_716@l /* 0x80434098@l */
/* 802A0D00  48 0C 0F 25 */	bl __register_global_object
/* 802A0D04  38 00 00 01 */	li r0, 1
/* 802A0D08  98 0D 8C B1 */	stb r0, struct_80451230+0x1(r13)
lbl_802A0D0C:
/* 802A0D0C  48 09 C9 E9 */	bl OSDisableInterrupts
/* 802A0D10  90 61 00 0C */	stw r3, 0xc(r1)
/* 802A0D14  7F 63 DB 78 */	mr r3, r27
/* 802A0D18  38 80 02 48 */	li r4, 0x248
/* 802A0D1C  4B FE FC 2D */	bl alloc__17JASGenericMemPoolFUl
/* 802A0D20  7C 7A 1B 78 */	mr r26, r3
/* 802A0D24  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A0D28  48 09 C9 F5 */	bl OSRestoreInterrupts
/* 802A0D2C  28 1A 00 00 */	cmplwi r26, 0
/* 802A0D30  41 82 00 10 */	beq lbl_802A0D40
/* 802A0D34  7F 43 D3 78 */	mr r3, r26
/* 802A0D38  4B FF 04 F1 */	bl __ct__8JASTrackFv
/* 802A0D3C  7C 7A 1B 78 */	mr r26, r3
lbl_802A0D40:
/* 802A0D40  28 1A 00 00 */	cmplwi r26, 0
/* 802A0D44  41 82 00 DC */	beq lbl_802A0E20
/* 802A0D48  38 60 00 01 */	li r3, 1
/* 802A0D4C  88 1A 02 16 */	lbz r0, 0x216(r26)
/* 802A0D50  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 802A0D54  98 1A 02 16 */	stb r0, 0x216(r26)
/* 802A0D58  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 802A0D5C  7F C4 F3 78 */	mr r4, r30
/* 802A0D60  7F 45 D3 78 */	mr r5, r26
/* 802A0D64  4B FF 0E 29 */	bl connectChild__8JASTrackFUlP8JASTrack
/* 802A0D68  3B 20 00 00 */	li r25, 0
lbl_802A0D6C:
/* 802A0D6C  7C 19 FA 14 */	add r0, r25, r31
/* 802A0D70  7C 00 E0 00 */	cmpw r0, r28
/* 802A0D74  40 80 00 A0 */	bge lbl_802A0E14
/* 802A0D78  88 0D 8C B1 */	lbz r0, struct_80451230+0x1(r13)
/* 802A0D7C  7C 00 07 75 */	extsb. r0, r0
/* 802A0D80  40 82 00 34 */	bne lbl_802A0DB4
/* 802A0D84  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A0D88  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802A0D8C  4B FE FA BD */	bl __ct__17JASGenericMemPoolFv
/* 802A0D90  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A0D94  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802A0D98  3C 80 80 29 */	lis r4, func_802932E0@ha /* 0x802932E0@ha */
/* 802A0D9C  38 84 32 E0 */	addi r4, r4, func_802932E0@l /* 0x802932E0@l */
/* 802A0DA0  3C A0 80 43 */	lis r5, lit_716@ha /* 0x80434098@ha */
/* 802A0DA4  38 A5 40 98 */	addi r5, r5, lit_716@l /* 0x80434098@l */
/* 802A0DA8  48 0C 0E 7D */	bl __register_global_object
/* 802A0DAC  38 00 00 01 */	li r0, 1
/* 802A0DB0  98 0D 8C B1 */	stb r0, struct_80451230+0x1(r13)
lbl_802A0DB4:
/* 802A0DB4  48 09 C9 41 */	bl OSDisableInterrupts
/* 802A0DB8  90 61 00 08 */	stw r3, 8(r1)
/* 802A0DBC  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A0DC0  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802A0DC4  38 80 02 48 */	li r4, 0x248
/* 802A0DC8  4B FE FB 81 */	bl alloc__17JASGenericMemPoolFUl
/* 802A0DCC  7C 78 1B 78 */	mr r24, r3
/* 802A0DD0  80 61 00 08 */	lwz r3, 8(r1)
/* 802A0DD4  48 09 C9 49 */	bl OSRestoreInterrupts
/* 802A0DD8  28 18 00 00 */	cmplwi r24, 0
/* 802A0DDC  41 82 00 10 */	beq lbl_802A0DEC
/* 802A0DE0  7F 03 C3 78 */	mr r3, r24
/* 802A0DE4  4B FF 04 45 */	bl __ct__8JASTrackFv
/* 802A0DE8  7C 78 1B 78 */	mr r24, r3
lbl_802A0DEC:
/* 802A0DEC  28 18 00 00 */	cmplwi r24, 0
/* 802A0DF0  41 82 00 24 */	beq lbl_802A0E14
/* 802A0DF4  38 60 00 01 */	li r3, 1
/* 802A0DF8  88 18 02 16 */	lbz r0, 0x216(r24)
/* 802A0DFC  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 802A0E00  98 18 02 16 */	stb r0, 0x216(r24)
/* 802A0E04  7F 43 D3 78 */	mr r3, r26
/* 802A0E08  7F 24 CB 78 */	mr r4, r25
/* 802A0E0C  7F 05 C3 78 */	mr r5, r24
/* 802A0E10  4B FF 0D 7D */	bl connectChild__8JASTrackFUlP8JASTrack
lbl_802A0E14:
/* 802A0E14  3B 39 00 01 */	addi r25, r25, 1
/* 802A0E18  2C 19 00 10 */	cmpwi r25, 0x10
/* 802A0E1C  41 80 FF 50 */	blt lbl_802A0D6C
lbl_802A0E20:
/* 802A0E20  3B DE 00 01 */	addi r30, r30, 1
/* 802A0E24  2C 1E 00 02 */	cmpwi r30, 2
/* 802A0E28  3B FF 00 10 */	addi r31, r31, 0x10
/* 802A0E2C  41 80 FE A4 */	blt lbl_802A0CD0
/* 802A0E30  39 61 00 30 */	addi r11, r1, 0x30
/* 802A0E34  48 0C 13 E1 */	bl _restgpr_24
/* 802A0E38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A0E3C  7C 08 03 A6 */	mtlr r0
/* 802A0E40  38 21 00 30 */	addi r1, r1, 0x30
/* 802A0E44  4E 80 00 20 */	blr 
