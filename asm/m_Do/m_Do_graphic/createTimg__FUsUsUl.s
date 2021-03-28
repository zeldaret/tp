lbl_80007D9C:
/* 80007D9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007DA0  7C 08 02 A6 */	mflr r0
/* 80007DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80007DA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80007DAC  48 35 A4 29 */	bl _savegpr_27
/* 80007DB0  7C 7B 1B 78 */	mr r27, r3
/* 80007DB4  7C 9C 23 78 */	mr r28, r4
/* 80007DB8  7C BD 2B 78 */	mr r29, r5
/* 80007DBC  38 C0 00 00 */	li r6, 0
/* 80007DC0  38 E0 00 00 */	li r7, 0
/* 80007DC4  48 35 5E 59 */	bl GXGetTexBufferSize
/* 80007DC8  3B E3 00 20 */	addi r31, r3, 0x20
/* 80007DCC  7F E3 FB 78 */	mr r3, r31
/* 80007DD0  38 80 00 20 */	li r4, 0x20
/* 80007DD4  38 A0 00 00 */	li r5, 0
/* 80007DD8  48 2C 66 9D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80007DDC  7C 60 1B 78 */	mr r0, r3
/* 80007DE0  7C 1E 03 79 */	or. r30, r0, r0
/* 80007DE4  40 82 00 0C */	bne lbl_80007DF0
/* 80007DE8  38 60 00 00 */	li r3, 0
/* 80007DEC  48 00 00 40 */	b lbl_80007E2C
lbl_80007DF0:
/* 80007DF0  38 80 00 00 */	li r4, 0
/* 80007DF4  7F E5 FB 78 */	mr r5, r31
/* 80007DF8  48 26 7B 65 */	bl cLib_memSet__FPviUl
/* 80007DFC  9B BE 00 00 */	stb r29, 0(r30)
/* 80007E00  38 00 00 00 */	li r0, 0
/* 80007E04  98 1E 00 01 */	stb r0, 1(r30)
/* 80007E08  B3 7E 00 02 */	sth r27, 2(r30)
/* 80007E0C  B3 9E 00 04 */	sth r28, 4(r30)
/* 80007E10  38 00 00 01 */	li r0, 1
/* 80007E14  98 1E 00 14 */	stb r0, 0x14(r30)
/* 80007E18  98 1E 00 15 */	stb r0, 0x15(r30)
/* 80007E1C  98 1E 00 18 */	stb r0, 0x18(r30)
/* 80007E20  38 00 00 20 */	li r0, 0x20
/* 80007E24  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80007E28  7F C3 F3 78 */	mr r3, r30
lbl_80007E2C:
/* 80007E2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80007E30  48 35 A3 F1 */	bl _restgpr_27
/* 80007E34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007E38  7C 08 03 A6 */	mtlr r0
/* 80007E3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80007E40  4E 80 00 20 */	blr 
