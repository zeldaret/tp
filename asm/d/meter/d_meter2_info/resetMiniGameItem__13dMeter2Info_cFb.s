lbl_8021E0C4:
/* 8021E0C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021E0C8  7C 08 02 A6 */	mflr r0
/* 8021E0CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021E0D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E0D4  48 14 41 01 */	bl _savegpr_27
/* 8021E0D8  7C 7E 1B 78 */	mr r30, r3
/* 8021E0DC  7C 9F 23 78 */	mr r31, r4
/* 8021E0E0  88 03 00 DD */	lbz r0, 0xdd(r3)
/* 8021E0E4  28 00 00 00 */	cmplwi r0, 0
/* 8021E0E8  41 82 01 68 */	beq lbl_8021E250
/* 8021E0EC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8021E0F0  41 82 00 9C */	beq lbl_8021E18C
/* 8021E0F4  3B 60 00 00 */	li r27, 0
/* 8021E0F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E0FC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
lbl_8021E100:
/* 8021E100  7F 63 DB 78 */	mr r3, r27
/* 8021E104  4B E0 FC C5 */	bl dComIfGs_getMixItemIndex__Fi
/* 8021E108  7F 9E DA 14 */	add r28, r30, r27
/* 8021E10C  98 7C 00 D4 */	stb r3, 0xd4(r28)
/* 8021E110  7F A3 EB 78 */	mr r3, r29
/* 8021E114  7F 64 DB 78 */	mr r4, r27
/* 8021E118  4B E1 49 45 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8021E11C  98 7C 00 D0 */	stb r3, 0xd0(r28)
/* 8021E120  3B 7B 00 01 */	addi r27, r27, 1
/* 8021E124  2C 1B 00 02 */	cmpwi r27, 2
/* 8021E128  41 80 FF D8 */	blt lbl_8021E100
/* 8021E12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021E134  3B 83 00 EC */	addi r28, r3, 0xec
/* 8021E138  7F 83 E3 78 */	mr r3, r28
/* 8021E13C  88 9E 00 DC */	lbz r4, 0xdc(r30)
/* 8021E140  4B E1 5E 3D */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 8021E144  98 7E 00 D8 */	stb r3, 0xd8(r30)
/* 8021E148  88 1C 00 00 */	lbz r0, 0(r28)
/* 8021E14C  98 1E 00 D9 */	stb r0, 0xd9(r30)
/* 8021E150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021E158  3B 83 00 9C */	addi r28, r3, 0x9c
/* 8021E15C  7F 83 E3 78 */	mr r3, r28
/* 8021E160  38 80 00 04 */	li r4, 4
/* 8021E164  38 A0 00 00 */	li r5, 0
/* 8021E168  4B E1 4E C9 */	bl getItem__17dSv_player_item_cCFib
/* 8021E16C  98 7E 00 DA */	stb r3, 0xda(r30)
/* 8021E170  7F 83 E3 78 */	mr r3, r28
/* 8021E174  88 9E 00 DC */	lbz r4, 0xdc(r30)
/* 8021E178  38 04 00 0F */	addi r0, r4, 0xf
/* 8021E17C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021E180  38 A0 00 00 */	li r5, 0
/* 8021E184  4B E1 4E AD */	bl getItem__17dSv_player_item_cCFib
/* 8021E188  98 7E 00 DB */	stb r3, 0xdb(r30)
lbl_8021E18C:
/* 8021E18C  3B 60 00 00 */	li r27, 0
lbl_8021E190:
/* 8021E190  7F 63 DB 78 */	mr r3, r27
/* 8021E194  7F 9E DA 14 */	add r28, r30, r27
/* 8021E198  88 9C 00 C8 */	lbz r4, 0xc8(r28)
/* 8021E19C  4B E0 FB 6D */	bl dComIfGs_setMixItemIndex__FiUc
/* 8021E1A0  7F 63 DB 78 */	mr r3, r27
/* 8021E1A4  88 9C 00 C4 */	lbz r4, 0xc4(r28)
/* 8021E1A8  4B E0 FB 1D */	bl dComIfGs_setSelectItemIndex__FiUc
/* 8021E1AC  3B 7B 00 01 */	addi r27, r27, 1
/* 8021E1B0  2C 1B 00 02 */	cmpwi r27, 2
/* 8021E1B4  41 80 FF DC */	blt lbl_8021E190
/* 8021E1B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E1BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021E1C0  3B 83 00 9C */	addi r28, r3, 0x9c
/* 8021E1C4  7F 83 E3 78 */	mr r3, r28
/* 8021E1C8  38 80 00 04 */	li r4, 4
/* 8021E1CC  88 BE 00 CE */	lbz r5, 0xce(r30)
/* 8021E1D0  4B E1 4D E9 */	bl setItem__17dSv_player_item_cFiUc
/* 8021E1D4  88 9E 00 CE */	lbz r4, 0xce(r30)
/* 8021E1D8  38 00 00 04 */	li r0, 4
/* 8021E1DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E1E0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8021E1E4  98 1D 5E 7D */	stb r0, 0x5e7d(r29)
/* 8021E1E8  98 9D 5E 7E */	stb r4, 0x5e7e(r29)
/* 8021E1EC  7F 83 E3 78 */	mr r3, r28
/* 8021E1F0  88 9E 00 DC */	lbz r4, 0xdc(r30)
/* 8021E1F4  38 04 00 0F */	addi r0, r4, 0xf
/* 8021E1F8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021E1FC  88 BE 00 CF */	lbz r5, 0xcf(r30)
/* 8021E200  4B E1 4D B9 */	bl setItem__17dSv_player_item_cFiUc
/* 8021E204  88 7E 00 CF */	lbz r3, 0xcf(r30)
/* 8021E208  88 9E 00 DC */	lbz r4, 0xdc(r30)
/* 8021E20C  38 04 00 0F */	addi r0, r4, 0xf
/* 8021E210  98 1D 5E 7D */	stb r0, 0x5e7d(r29)
/* 8021E214  98 7D 5E 7E */	stb r3, 0x5e7e(r29)
/* 8021E218  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E21C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021E220  3B 83 00 EC */	addi r28, r3, 0xec
/* 8021E224  7F 83 E3 78 */	mr r3, r28
/* 8021E228  88 BE 00 CC */	lbz r5, 0xcc(r30)
/* 8021E22C  4B E1 5D 41 */	bl setBombNum__24dSv_player_item_record_cFUcUc
/* 8021E230  88 1E 00 CD */	lbz r0, 0xcd(r30)
/* 8021E234  98 1C 00 00 */	stb r0, 0(r28)
/* 8021E238  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8021E23C  40 82 00 14 */	bne lbl_8021E250
/* 8021E240  38 00 00 00 */	li r0, 0
/* 8021E244  98 1E 00 DD */	stb r0, 0xdd(r30)
/* 8021E248  38 00 00 FF */	li r0, 0xff
/* 8021E24C  98 1E 00 DC */	stb r0, 0xdc(r30)
lbl_8021E250:
/* 8021E250  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E254  48 14 3F CD */	bl _restgpr_27
/* 8021E258  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021E25C  7C 08 03 A6 */	mtlr r0
/* 8021E260  38 21 00 20 */	addi r1, r1, 0x20
/* 8021E264  4E 80 00 20 */	blr 
