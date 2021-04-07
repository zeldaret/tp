lbl_801E0E84:
/* 801E0E84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E0E88  7C 08 02 A6 */	mflr r0
/* 801E0E8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E0E90  39 61 00 30 */	addi r11, r1, 0x30
/* 801E0E94  48 18 13 39 */	bl _savegpr_25
/* 801E0E98  7C 7C 1B 78 */	mr r28, r3
/* 801E0E9C  88 03 03 6F */	lbz r0, 0x36f(r3)
/* 801E0EA0  1C 00 00 06 */	mulli r0, r0, 6
/* 801E0EA4  3B 20 00 00 */	li r25, 0
/* 801E0EA8  3B 60 00 00 */	li r27, 0
/* 801E0EAC  7F DC 02 14 */	add r30, r28, r0
/* 801E0EB0  3C 60 80 3C */	lis r3, letter_data__12dMenu_Letter@ha /* 0x803BF81C@ha */
/* 801E0EB4  3B A3 F8 1C */	addi r29, r3, letter_data__12dMenu_Letter@l /* 0x803BF81C@l */
/* 801E0EB8  48 00 00 D4 */	b lbl_801E0F8C
lbl_801E0EBC:
/* 801E0EBC  38 19 03 AC */	addi r0, r25, 0x3ac
/* 801E0EC0  7C 7E 00 AE */	lbzx r3, r30, r0
/* 801E0EC4  38 03 FF FF */	addi r0, r3, -1
/* 801E0EC8  80 7C 03 10 */	lwz r3, 0x310(r28)
/* 801E0ECC  54 00 1D 78 */	rlwinm r0, r0, 3, 0x15, 0x1c
/* 801E0ED0  7F 5D 02 14 */	add r26, r29, r0
/* 801E0ED4  A0 9A 00 00 */	lhz r4, 0(r26)
/* 801E0ED8  7F FC DA 14 */	add r31, r28, r27
/* 801E0EDC  80 BF 01 24 */	lwz r5, 0x124(r31)
/* 801E0EE0  38 C0 00 00 */	li r6, 0
/* 801E0EE4  38 E0 00 00 */	li r7, 0
/* 801E0EE8  39 00 00 00 */	li r8, 0
/* 801E0EEC  39 20 00 00 */	li r9, 0
/* 801E0EF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0EF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E0EF8  7D 89 03 A6 */	mtctr r12
/* 801E0EFC  4E 80 04 21 */	bctrl 
/* 801E0F00  80 7C 03 10 */	lwz r3, 0x310(r28)
/* 801E0F04  A0 9A 00 00 */	lhz r4, 0(r26)
/* 801E0F08  80 BF 01 28 */	lwz r5, 0x128(r31)
/* 801E0F0C  38 C0 00 00 */	li r6, 0
/* 801E0F10  38 E0 00 00 */	li r7, 0
/* 801E0F14  39 00 00 00 */	li r8, 0
/* 801E0F18  39 20 00 00 */	li r9, 0
/* 801E0F1C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0F20  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E0F24  7D 89 03 A6 */	mtctr r12
/* 801E0F28  4E 80 04 21 */	bctrl 
/* 801E0F2C  80 7C 03 10 */	lwz r3, 0x310(r28)
/* 801E0F30  A4 9A 00 02 */	lhzu r4, 2(r26)
/* 801E0F34  80 BF 01 2C */	lwz r5, 0x12c(r31)
/* 801E0F38  38 C0 00 00 */	li r6, 0
/* 801E0F3C  38 E0 00 00 */	li r7, 0
/* 801E0F40  39 00 00 00 */	li r8, 0
/* 801E0F44  39 20 00 00 */	li r9, 0
/* 801E0F48  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0F4C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E0F50  7D 89 03 A6 */	mtctr r12
/* 801E0F54  4E 80 04 21 */	bctrl 
/* 801E0F58  80 7C 03 10 */	lwz r3, 0x310(r28)
/* 801E0F5C  A0 9A 00 00 */	lhz r4, 0(r26)
/* 801E0F60  80 BF 01 30 */	lwz r5, 0x130(r31)
/* 801E0F64  38 C0 00 00 */	li r6, 0
/* 801E0F68  38 E0 00 00 */	li r7, 0
/* 801E0F6C  39 00 00 00 */	li r8, 0
/* 801E0F70  39 20 00 00 */	li r9, 0
/* 801E0F74  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0F78  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E0F7C  7D 89 03 A6 */	mtctr r12
/* 801E0F80  4E 80 04 21 */	bctrl 
/* 801E0F84  3B 39 00 01 */	addi r25, r25, 1
/* 801E0F88  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_801E0F8C:
/* 801E0F8C  88 1C 03 73 */	lbz r0, 0x373(r28)
/* 801E0F90  7C 19 00 00 */	cmpw r25, r0
/* 801E0F94  41 80 FF 28 */	blt lbl_801E0EBC
/* 801E0F98  3B A0 00 00 */	li r29, 0
/* 801E0F9C  3B 60 00 00 */	li r27, 0
/* 801E0FA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801E0FA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801E0FA8  3B E3 01 1C */	addi r31, r3, 0x11c
lbl_801E0FAC:
/* 801E0FAC  88 1C 03 73 */	lbz r0, 0x373(r28)
/* 801E0FB0  7C 1D 00 00 */	cmpw r29, r0
/* 801E0FB4  40 80 00 4C */	bge lbl_801E1000
/* 801E0FB8  7F E3 FB 78 */	mr r3, r31
/* 801E0FBC  38 1D 03 AC */	addi r0, r29, 0x3ac
/* 801E0FC0  7C 9E 00 AE */	lbzx r4, r30, r0
/* 801E0FC4  38 04 FF FF */	addi r0, r4, -1
/* 801E0FC8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801E0FCC  4B E5 34 D1 */	bl isLetterReadFlag__17dSv_letter_info_cCFi
/* 801E0FD0  2C 03 00 00 */	cmpwi r3, 0
/* 801E0FD4  40 82 00 18 */	bne lbl_801E0FEC
/* 801E0FD8  38 80 00 01 */	li r4, 1
/* 801E0FDC  38 1B 00 44 */	addi r0, r27, 0x44
/* 801E0FE0  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801E0FE4  98 83 00 B0 */	stb r4, 0xb0(r3)
/* 801E0FE8  48 00 00 28 */	b lbl_801E1010
lbl_801E0FEC:
/* 801E0FEC  38 80 00 00 */	li r4, 0
/* 801E0FF0  38 1B 00 44 */	addi r0, r27, 0x44
/* 801E0FF4  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801E0FF8  98 83 00 B0 */	stb r4, 0xb0(r3)
/* 801E0FFC  48 00 00 14 */	b lbl_801E1010
lbl_801E1000:
/* 801E1000  38 80 00 00 */	li r4, 0
/* 801E1004  38 1B 00 44 */	addi r0, r27, 0x44
/* 801E1008  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801E100C  98 83 00 B0 */	stb r4, 0xb0(r3)
lbl_801E1010:
/* 801E1010  3B BD 00 01 */	addi r29, r29, 1
/* 801E1014  2C 1D 00 06 */	cmpwi r29, 6
/* 801E1018  3B 7B 00 14 */	addi r27, r27, 0x14
/* 801E101C  41 80 FF 90 */	blt lbl_801E0FAC
/* 801E1020  39 61 00 30 */	addi r11, r1, 0x30
/* 801E1024  48 18 11 F5 */	bl _restgpr_25
/* 801E1028  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E102C  7C 08 03 A6 */	mtlr r0
/* 801E1030  38 21 00 30 */	addi r1, r1, 0x30
/* 801E1034  4E 80 00 20 */	blr 
