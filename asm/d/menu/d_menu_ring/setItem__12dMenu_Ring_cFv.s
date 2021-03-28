lbl_801EBB10:
/* 801EBB10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801EBB14  7C 08 02 A6 */	mflr r0
/* 801EBB18  90 01 00 34 */	stw r0, 0x34(r1)
/* 801EBB1C  39 61 00 30 */	addi r11, r1, 0x30
/* 801EBB20  48 17 66 A9 */	bl _savegpr_24
/* 801EBB24  7C 7E 1B 78 */	mr r30, r3
/* 801EBB28  88 03 06 AA */	lbz r0, 0x6aa(r3)
/* 801EBB2C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBB30  41 82 00 10 */	beq lbl_801EBB40
/* 801EBB34  7C 7E 02 14 */	add r3, r30, r0
/* 801EBB38  8B 83 06 90 */	lbz r28, 0x690(r3)
/* 801EBB3C  48 00 00 08 */	b lbl_801EBB44
lbl_801EBB40:
/* 801EBB40  3B 80 00 FF */	li r28, 0xff
lbl_801EBB44:
/* 801EBB44  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 801EBB48  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBB4C  41 82 00 10 */	beq lbl_801EBB5C
/* 801EBB50  7C 7E 02 14 */	add r3, r30, r0
/* 801EBB54  8B 63 06 90 */	lbz r27, 0x690(r3)
/* 801EBB58  48 00 00 08 */	b lbl_801EBB60
lbl_801EBB5C:
/* 801EBB5C  3B 60 00 FF */	li r27, 0xff
lbl_801EBB60:
/* 801EBB60  88 1E 06 AC */	lbz r0, 0x6ac(r30)
/* 801EBB64  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBB68  41 82 00 10 */	beq lbl_801EBB78
/* 801EBB6C  7C 7E 02 14 */	add r3, r30, r0
/* 801EBB70  8B A3 06 90 */	lbz r29, 0x690(r3)
/* 801EBB74  48 00 00 08 */	b lbl_801EBB7C
lbl_801EBB78:
/* 801EBB78  3B A0 00 FF */	li r29, 0xff
lbl_801EBB7C:
/* 801EBB7C  88 1E 06 AD */	lbz r0, 0x6ad(r30)
/* 801EBB80  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBB84  41 82 00 10 */	beq lbl_801EBB94
/* 801EBB88  7C 7E 02 14 */	add r3, r30, r0
/* 801EBB8C  8B E3 06 90 */	lbz r31, 0x690(r3)
/* 801EBB90  48 00 00 08 */	b lbl_801EBB98
lbl_801EBB94:
/* 801EBB94  3B E0 00 FF */	li r31, 0xff
lbl_801EBB98:
/* 801EBB98  38 60 00 00 */	li r3, 0
/* 801EBB9C  4B E4 22 2D */	bl dComIfGs_getMixItemIndex__Fi
/* 801EBBA0  7C 7A 1B 78 */	mr r26, r3
/* 801EBBA4  38 60 00 01 */	li r3, 1
/* 801EBBA8  4B E4 22 21 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EBBAC  7C 79 1B 78 */	mr r25, r3
/* 801EBBB0  3B 00 00 00 */	li r24, 0
lbl_801EBBB4:
/* 801EBBB4  7F C3 F3 78 */	mr r3, r30
/* 801EBBB8  7F 04 C3 78 */	mr r4, r24
/* 801EBBBC  48 00 23 71 */	bl setSelectItemForce__12dMenu_Ring_cFi
/* 801EBBC0  3B 18 00 01 */	addi r24, r24, 1
/* 801EBBC4  2C 18 00 04 */	cmpwi r24, 4
/* 801EBBC8  41 80 FF EC */	blt lbl_801EBBB4
/* 801EBBCC  7F C3 F3 78 */	mr r3, r30
/* 801EBBD0  48 00 26 59 */	bl checkExplainForce__12dMenu_Ring_cFv
/* 801EBBD4  88 1E 06 B3 */	lbz r0, 0x6b3(r30)
/* 801EBBD8  28 00 00 00 */	cmplwi r0, 0
/* 801EBBDC  40 82 01 18 */	bne lbl_801EBCF4
/* 801EBBE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EBBE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EBBE8  38 80 00 01 */	li r4, 1
/* 801EBBEC  4B E4 6E 71 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EBBF0  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EBBF4  7C 9E 02 14 */	add r4, r30, r0
/* 801EBBF8  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EBBFC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EBC00  7C 04 00 40 */	cmplw r4, r0
/* 801EBC04  40 82 00 64 */	bne lbl_801EBC68
/* 801EBC08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EBC0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EBC10  38 80 00 00 */	li r4, 0
/* 801EBC14  4B E4 6E 49 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EBC18  7C 7A 1B 78 */	mr r26, r3
/* 801EBC1C  7F 5B D3 78 */	mr r27, r26
/* 801EBC20  38 60 00 00 */	li r3, 0
/* 801EBC24  4B E4 21 A5 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EBC28  7C 79 1B 78 */	mr r25, r3
/* 801EBC2C  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 801EBC30  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBC34  40 82 00 10 */	bne lbl_801EBC44
/* 801EBC38  38 00 00 FF */	li r0, 0xff
/* 801EBC3C  98 1E 06 AB */	stb r0, 0x6ab(r30)
/* 801EBC40  48 00 00 0C */	b lbl_801EBC4C
lbl_801EBC44:
/* 801EBC44  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 801EBC48  98 1E 06 AB */	stb r0, 0x6ab(r30)
lbl_801EBC4C:
/* 801EBC4C  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EBC50  98 1E 06 AA */	stb r0, 0x6aa(r30)
/* 801EBC54  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 801EBC58  7C 7E 02 14 */	add r3, r30, r0
/* 801EBC5C  8B 83 06 90 */	lbz r28, 0x690(r3)
/* 801EBC60  3B 40 00 FF */	li r26, 0xff
/* 801EBC64  48 00 01 A8 */	b lbl_801EBE0C
lbl_801EBC68:
/* 801EBC68  38 60 00 01 */	li r3, 1
/* 801EBC6C  4B E4 21 5D */	bl dComIfGs_getMixItemIndex__Fi
/* 801EBC70  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 801EBC74  88 BE 06 A8 */	lbz r5, 0x6a8(r30)
/* 801EBC78  7C 7E 2A 14 */	add r3, r30, r5
/* 801EBC7C  88 03 06 90 */	lbz r0, 0x690(r3)
/* 801EBC80  7C 00 20 40 */	cmplw r0, r4
/* 801EBC84  40 82 00 58 */	bne lbl_801EBCDC
/* 801EBC88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EBC8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EBC90  38 80 00 00 */	li r4, 0
/* 801EBC94  4B E4 6D C9 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EBC98  7C 7B 1B 78 */	mr r27, r3
/* 801EBC9C  3B 20 00 FF */	li r25, 0xff
/* 801EBCA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EBCA4  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBCA8  40 82 00 10 */	bne lbl_801EBCB8
/* 801EBCAC  38 00 00 FF */	li r0, 0xff
/* 801EBCB0  98 1E 06 AB */	stb r0, 0x6ab(r30)
/* 801EBCB4  48 00 00 0C */	b lbl_801EBCC0
lbl_801EBCB8:
/* 801EBCB8  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 801EBCBC  98 1E 06 AB */	stb r0, 0x6ab(r30)
lbl_801EBCC0:
/* 801EBCC0  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EBCC4  98 1E 06 AA */	stb r0, 0x6aa(r30)
/* 801EBCC8  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 801EBCCC  7C 7E 02 14 */	add r3, r30, r0
/* 801EBCD0  8B 83 06 90 */	lbz r28, 0x690(r3)
/* 801EBCD4  3B 40 00 FF */	li r26, 0xff
/* 801EBCD8  48 00 01 34 */	b lbl_801EBE0C
lbl_801EBCDC:
/* 801EBCDC  98 BE 06 AA */	stb r5, 0x6aa(r30)
/* 801EBCE0  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 801EBCE4  7C 7E 02 14 */	add r3, r30, r0
/* 801EBCE8  8B 83 06 90 */	lbz r28, 0x690(r3)
/* 801EBCEC  3B 40 00 FF */	li r26, 0xff
/* 801EBCF0  48 00 01 1C */	b lbl_801EBE0C
lbl_801EBCF4:
/* 801EBCF4  28 00 00 01 */	cmplwi r0, 1
/* 801EBCF8  40 82 01 14 */	bne lbl_801EBE0C
/* 801EBCFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EBD00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EBD04  38 80 00 00 */	li r4, 0
/* 801EBD08  4B E4 6D 55 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EBD0C  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EBD10  7C 9E 02 14 */	add r4, r30, r0
/* 801EBD14  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EBD18  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EBD1C  7C 04 00 40 */	cmplw r4, r0
/* 801EBD20  40 82 00 64 */	bne lbl_801EBD84
/* 801EBD24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EBD28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EBD2C  38 80 00 01 */	li r4, 1
/* 801EBD30  4B E4 6D 2D */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EBD34  7C 79 1B 78 */	mr r25, r3
/* 801EBD38  7F 3C CB 78 */	mr r28, r25
/* 801EBD3C  38 60 00 01 */	li r3, 1
/* 801EBD40  4B E4 20 89 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EBD44  7C 7A 1B 78 */	mr r26, r3
/* 801EBD48  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 801EBD4C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBD50  40 82 00 10 */	bne lbl_801EBD60
/* 801EBD54  38 00 00 FF */	li r0, 0xff
/* 801EBD58  98 1E 06 AA */	stb r0, 0x6aa(r30)
/* 801EBD5C  48 00 00 0C */	b lbl_801EBD68
lbl_801EBD60:
/* 801EBD60  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 801EBD64  98 1E 06 AA */	stb r0, 0x6aa(r30)
lbl_801EBD68:
/* 801EBD68  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EBD6C  98 1E 06 AB */	stb r0, 0x6ab(r30)
/* 801EBD70  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 801EBD74  7C 7E 02 14 */	add r3, r30, r0
/* 801EBD78  8B 63 06 90 */	lbz r27, 0x690(r3)
/* 801EBD7C  3B 20 00 FF */	li r25, 0xff
/* 801EBD80  48 00 00 8C */	b lbl_801EBE0C
lbl_801EBD84:
/* 801EBD84  38 60 00 00 */	li r3, 0
/* 801EBD88  4B E4 20 41 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EBD8C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 801EBD90  88 BE 06 A8 */	lbz r5, 0x6a8(r30)
/* 801EBD94  7C 7E 2A 14 */	add r3, r30, r5
/* 801EBD98  88 03 06 90 */	lbz r0, 0x690(r3)
/* 801EBD9C  7C 00 20 40 */	cmplw r0, r4
/* 801EBDA0  40 82 00 58 */	bne lbl_801EBDF8
/* 801EBDA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EBDA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EBDAC  38 80 00 01 */	li r4, 1
/* 801EBDB0  4B E4 6C AD */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EBDB4  7C 7C 1B 78 */	mr r28, r3
/* 801EBDB8  3B 40 00 FF */	li r26, 0xff
/* 801EBDBC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EBDC0  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBDC4  40 82 00 10 */	bne lbl_801EBDD4
/* 801EBDC8  38 00 00 FF */	li r0, 0xff
/* 801EBDCC  98 1E 06 AA */	stb r0, 0x6aa(r30)
/* 801EBDD0  48 00 00 0C */	b lbl_801EBDDC
lbl_801EBDD4:
/* 801EBDD4  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 801EBDD8  98 1E 06 AA */	stb r0, 0x6aa(r30)
lbl_801EBDDC:
/* 801EBDDC  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EBDE0  98 1E 06 AB */	stb r0, 0x6ab(r30)
/* 801EBDE4  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 801EBDE8  7C 7E 02 14 */	add r3, r30, r0
/* 801EBDEC  8B 63 06 90 */	lbz r27, 0x690(r3)
/* 801EBDF0  3B 20 00 FF */	li r25, 0xff
/* 801EBDF4  48 00 00 18 */	b lbl_801EBE0C
lbl_801EBDF8:
/* 801EBDF8  98 BE 06 AB */	stb r5, 0x6ab(r30)
/* 801EBDFC  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 801EBE00  7C 7E 02 14 */	add r3, r30, r0
/* 801EBE04  8B 63 06 90 */	lbz r27, 0x690(r3)
/* 801EBE08  3B 20 00 FF */	li r25, 0xff
lbl_801EBE0C:
/* 801EBE0C  9B 9E 06 B4 */	stb r28, 0x6b4(r30)
/* 801EBE10  9B 7E 06 B5 */	stb r27, 0x6b5(r30)
/* 801EBE14  9B BE 06 B6 */	stb r29, 0x6b6(r30)
/* 801EBE18  9B FE 06 B7 */	stb r31, 0x6b7(r30)
/* 801EBE1C  9B 5E 06 B8 */	stb r26, 0x6b8(r30)
/* 801EBE20  9B 3E 06 B9 */	stb r25, 0x6b9(r30)
/* 801EBE24  38 00 00 FF */	li r0, 0xff
/* 801EBE28  98 1E 06 BA */	stb r0, 0x6ba(r30)
/* 801EBE2C  98 1E 06 BB */	stb r0, 0x6bb(r30)
/* 801EBE30  98 1E 06 CD */	stb r0, 0x6cd(r30)
/* 801EBE34  7F C3 F3 78 */	mr r3, r30
/* 801EBE38  38 80 00 01 */	li r4, 1
/* 801EBE3C  48 00 00 1D */	bl setJumpItem__12dMenu_Ring_cFb
/* 801EBE40  39 61 00 30 */	addi r11, r1, 0x30
/* 801EBE44  48 17 63 D1 */	bl _restgpr_24
/* 801EBE48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801EBE4C  7C 08 03 A6 */	mtlr r0
/* 801EBE50  38 21 00 30 */	addi r1, r1, 0x30
/* 801EBE54  4E 80 00 20 */	blr 
