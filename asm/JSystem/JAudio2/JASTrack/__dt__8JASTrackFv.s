lbl_8029131C:
/* 8029131C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80291320  7C 08 02 A6 */	mflr r0
/* 80291324  90 01 00 34 */	stw r0, 0x34(r1)
/* 80291328  39 61 00 30 */	addi r11, r1, 0x30
/* 8029132C  48 0D 0E A5 */	bl _savegpr_26
/* 80291330  7C 7D 1B 79 */	or. r29, r3, r3
/* 80291334  7C 9E 23 78 */	mr r30, r4
/* 80291338  41 82 00 F0 */	beq lbl_80291428
/* 8029133C  3B E0 00 01 */	li r31, 1
/* 80291340  3B 80 00 04 */	li r28, 4
/* 80291344  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 80291348  3B 63 1A F4 */	addi r27, r3, data_80431AF4@l /* 0x80431AF4@l */
lbl_8029134C:
/* 8029134C  38 1C 01 70 */	addi r0, r28, 0x170
/* 80291350  7F 5D 00 2E */	lwzx r26, r29, r0
/* 80291354  88 0D 8C B0 */	lbz r0, struct_80451230+0x0(r13)
/* 80291358  7C 00 07 75 */	extsb. r0, r0
/* 8029135C  40 82 00 34 */	bne lbl_80291390
/* 80291360  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 80291364  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 80291368  4B FF F4 E1 */	bl __ct__17JASGenericMemPoolFv
/* 8029136C  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 80291370  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 80291374  3C 80 80 29 */	lis r4, func_80293334@ha /* 0x80293334@ha */
/* 80291378  38 84 33 34 */	addi r4, r4, func_80293334@l /* 0x80293334@l */
/* 8029137C  3C A0 80 43 */	lis r5, lit_470@ha /* 0x80431ADC@ha */
/* 80291380  38 A5 1A DC */	addi r5, r5, lit_470@l /* 0x80431ADC@l */
/* 80291384  48 0D 08 A1 */	bl __register_global_object
/* 80291388  38 00 00 01 */	li r0, 1
/* 8029138C  98 0D 8C B0 */	stb r0, struct_80451230+0x0(r13)
lbl_80291390:
/* 80291390  48 0A C3 65 */	bl OSDisableInterrupts
/* 80291394  90 61 00 0C */	stw r3, 0xc(r1)
/* 80291398  7F 63 DB 78 */	mr r3, r27
/* 8029139C  7F 44 D3 78 */	mr r4, r26
/* 802913A0  38 A0 00 50 */	li r5, 0x50
/* 802913A4  4B FF F5 F1 */	bl free__17JASGenericMemPoolFPvUl
/* 802913A8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802913AC  48 0A C3 71 */	bl OSRestoreInterrupts
/* 802913B0  3B FF 00 01 */	addi r31, r31, 1
/* 802913B4  2C 1F 00 04 */	cmpwi r31, 4
/* 802913B8  3B 9C 00 04 */	addi r28, r28, 4
/* 802913BC  41 80 FF 90 */	blt lbl_8029134C
/* 802913C0  7F C0 07 35 */	extsh. r0, r30
/* 802913C4  40 81 00 64 */	ble lbl_80291428
/* 802913C8  88 0D 8C B1 */	lbz r0, struct_80451230+0x1(r13)
/* 802913CC  7C 00 07 75 */	extsb. r0, r0
/* 802913D0  40 82 00 34 */	bne lbl_80291404
/* 802913D4  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802913D8  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802913DC  4B FF F4 6D */	bl __ct__17JASGenericMemPoolFv
/* 802913E0  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802913E4  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802913E8  3C 80 80 29 */	lis r4, func_802932E0@ha /* 0x802932E0@ha */
/* 802913EC  38 84 32 E0 */	addi r4, r4, func_802932E0@l /* 0x802932E0@l */
/* 802913F0  3C A0 80 43 */	lis r5, lit_476@ha /* 0x80431AE8@ha */
/* 802913F4  38 A5 1A E8 */	addi r5, r5, lit_476@l /* 0x80431AE8@l */
/* 802913F8  48 0D 08 2D */	bl __register_global_object
/* 802913FC  38 00 00 01 */	li r0, 1
/* 80291400  98 0D 8C B1 */	stb r0, struct_80451230+0x1(r13)
lbl_80291404:
/* 80291404  48 0A C2 F1 */	bl OSDisableInterrupts
/* 80291408  90 61 00 08 */	stw r3, 8(r1)
/* 8029140C  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 80291410  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 80291414  7F A4 EB 78 */	mr r4, r29
/* 80291418  38 A0 02 48 */	li r5, 0x248
/* 8029141C  4B FF F5 79 */	bl free__17JASGenericMemPoolFPvUl
/* 80291420  80 61 00 08 */	lwz r3, 8(r1)
/* 80291424  48 0A C2 F9 */	bl OSRestoreInterrupts
lbl_80291428:
/* 80291428  7F A3 EB 78 */	mr r3, r29
/* 8029142C  39 61 00 30 */	addi r11, r1, 0x30
/* 80291430  48 0D 0D ED */	bl _restgpr_26
/* 80291434  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80291438  7C 08 03 A6 */	mtlr r0
/* 8029143C  38 21 00 30 */	addi r1, r1, 0x30
/* 80291440  4E 80 00 20 */	blr 
