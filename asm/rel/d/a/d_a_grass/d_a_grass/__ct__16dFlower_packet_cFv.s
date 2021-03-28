lbl_80521C64:
/* 80521C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80521C68  7C 08 02 A6 */	mflr r0
/* 80521C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80521C70  39 61 00 20 */	addi r11, r1, 0x20
/* 80521C74  4B E4 05 68 */	b _savegpr_29
/* 80521C78  7C 7F 1B 78 */	mr r31, r3
/* 80521C7C  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80521C80  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80521C84  90 1F 00 00 */	stw r0, 0(r31)
/* 80521C88  38 00 00 00 */	li r0, 0
/* 80521C8C  90 1F 00 04 */	stw r0, 4(r31)
/* 80521C90  90 1F 00 08 */	stw r0, 8(r31)
/* 80521C94  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80521C98  3C 60 80 52 */	lis r3, __vt__16dFlower_packet_c@ha
/* 80521C9C  38 03 78 90 */	addi r0, r3, __vt__16dFlower_packet_c@l
/* 80521CA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80521CA4  38 7F 00 14 */	addi r3, r31, 0x14
/* 80521CA8  3C 80 80 52 */	lis r4, __ct__14dFlower_data_cFv@ha
/* 80521CAC  38 84 30 08 */	addi r4, r4, __ct__14dFlower_data_cFv@l
/* 80521CB0  3C A0 80 52 */	lis r5, __dt__14dFlower_data_cFv@ha
/* 80521CB4  38 A5 2F CC */	addi r5, r5, __dt__14dFlower_data_cFv@l
/* 80521CB8  38 C0 00 48 */	li r6, 0x48
/* 80521CBC  38 E0 03 E8 */	li r7, 0x3e8
/* 80521CC0  4B E4 00 A0 */	b __construct_array
/* 80521CC4  3C 7F 00 01 */	addis r3, r31, 1
/* 80521CC8  3C 80 80 52 */	lis r4, __ct__13dFlower_anm_cFv@ha
/* 80521CCC  38 84 2F C0 */	addi r4, r4, __ct__13dFlower_anm_cFv@l
/* 80521CD0  38 A0 00 00 */	li r5, 0
/* 80521CD4  38 C0 00 38 */	li r6, 0x38
/* 80521CD8  38 E0 00 48 */	li r7, 0x48
/* 80521CDC  38 63 19 54 */	addi r3, r3, 0x1954
/* 80521CE0  4B E4 00 80 */	b __construct_array
/* 80521CE4  3C 7F 00 01 */	addis r3, r31, 1
/* 80521CE8  3C 80 80 52 */	lis r4, __ct__14dFlower_room_cFv@ha
/* 80521CEC  38 84 2F B4 */	addi r4, r4, __ct__14dFlower_room_cFv@l
/* 80521CF0  38 A0 00 00 */	li r5, 0
/* 80521CF4  38 C0 00 04 */	li r6, 4
/* 80521CF8  38 E0 00 40 */	li r7, 0x40
/* 80521CFC  38 63 29 14 */	addi r3, r3, 0x2914
/* 80521D00  4B E4 00 60 */	b __construct_array
/* 80521D04  38 9F 00 14 */	addi r4, r31, 0x14
/* 80521D08  38 60 00 00 */	li r3, 0
/* 80521D0C  38 00 03 E8 */	li r0, 0x3e8
/* 80521D10  7C 09 03 A6 */	mtctr r0
lbl_80521D14:
/* 80521D14  98 64 00 00 */	stb r3, 0(r4)
/* 80521D18  38 84 00 48 */	addi r4, r4, 0x48
/* 80521D1C  42 00 FF F8 */	bdnz lbl_80521D14
/* 80521D20  3C 9F 00 01 */	addis r4, r31, 1
/* 80521D24  38 60 00 00 */	li r3, 0
/* 80521D28  38 00 00 48 */	li r0, 0x48
/* 80521D2C  7C 09 03 A6 */	mtctr r0
/* 80521D30  38 84 19 54 */	addi r4, r4, 0x1954
lbl_80521D34:
/* 80521D34  98 64 00 00 */	stb r3, 0(r4)
/* 80521D38  38 84 00 38 */	addi r4, r4, 0x38
/* 80521D3C  42 00 FF F8 */	bdnz lbl_80521D34
/* 80521D40  3B C0 00 00 */	li r30, 0
/* 80521D44  3B A0 00 00 */	li r29, 0
lbl_80521D48:
/* 80521D48  7F E3 FB 78 */	mr r3, r31
/* 80521D4C  7F A4 EB 78 */	mr r4, r29
/* 80521D50  7F C5 F3 78 */	mr r5, r30
/* 80521D54  48 00 12 39 */	bl setAnm__16dFlower_packet_cFis
/* 80521D58  3B BD 00 01 */	addi r29, r29, 1
/* 80521D5C  2C 1D 00 08 */	cmpwi r29, 8
/* 80521D60  3B DE 20 00 */	addi r30, r30, 0x2000
/* 80521D64  41 80 FF E4 */	blt lbl_80521D48
/* 80521D68  3C 60 80 42 */	lis r3, m_deleteRoom__16dFlower_packet_c@ha
/* 80521D6C  38 A3 45 94 */	addi r5, r3, m_deleteRoom__16dFlower_packet_c@l
/* 80521D70  3C 60 80 52 */	lis r3, lit_5875@ha
/* 80521D74  38 83 77 D4 */	addi r4, r3, lit_5875@l
/* 80521D78  80 64 00 00 */	lwz r3, 0(r4)
/* 80521D7C  80 04 00 04 */	lwz r0, 4(r4)
/* 80521D80  90 65 00 00 */	stw r3, 0(r5)
/* 80521D84  90 05 00 04 */	stw r0, 4(r5)
/* 80521D88  80 04 00 08 */	lwz r0, 8(r4)
/* 80521D8C  90 05 00 08 */	stw r0, 8(r5)
/* 80521D90  7F E3 FB 78 */	mr r3, r31
/* 80521D94  39 61 00 20 */	addi r11, r1, 0x20
/* 80521D98  4B E4 04 90 */	b _restgpr_29
/* 80521D9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80521DA0  7C 08 03 A6 */	mtlr r0
/* 80521DA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80521DA8  4E 80 00 20 */	blr 
