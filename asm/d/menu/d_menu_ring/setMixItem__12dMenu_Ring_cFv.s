lbl_801EC754:
/* 801EC754  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801EC758  7C 08 02 A6 */	mflr r0
/* 801EC75C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801EC760  39 61 00 40 */	addi r11, r1, 0x40
/* 801EC764  48 17 5A 71 */	bl _savegpr_27
/* 801EC768  7C 7B 1B 78 */	mr r27, r3
/* 801EC76C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EC774  38 63 00 9C */	addi r3, r3, 0x9c
/* 801EC778  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801EC77C  7C 9B 02 14 */	add r4, r27, r0
/* 801EC780  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EC784  38 A0 00 00 */	li r5, 0
/* 801EC788  4B E4 68 A9 */	bl getItem__17dSv_player_item_cCFib
/* 801EC78C  7C 7F 1B 78 */	mr r31, r3
/* 801EC790  3B 80 00 00 */	li r28, 0
/* 801EC794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EC79C  38 80 00 00 */	li r4, 0
/* 801EC7A0  4B E4 62 BD */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EC7A4  7C 7E 1B 78 */	mr r30, r3
/* 801EC7A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC7AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EC7B0  38 80 00 01 */	li r4, 1
/* 801EC7B4  4B E4 62 A9 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EC7B8  7C 7D 1B 78 */	mr r29, r3
/* 801EC7BC  80 02 A9 DC */	lwz r0, lit_5171(r2)
/* 801EC7C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801EC7C4  38 60 00 00 */	li r3, 0
/* 801EC7C8  4B E4 16 01 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EC7CC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC7D0  28 00 00 04 */	cmplwi r0, 4
/* 801EC7D4  40 82 00 94 */	bne lbl_801EC868
/* 801EC7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EC7E0  38 80 00 00 */	li r4, 0
/* 801EC7E4  4B E4 62 79 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EC7E8  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801EC7EC  7C 9B 02 14 */	add r4, r27, r0
/* 801EC7F0  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EC7F4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC7F8  7C 04 00 40 */	cmplw r4, r0
/* 801EC7FC  40 82 00 6C */	bne lbl_801EC868
/* 801EC800  38 00 00 B6 */	li r0, 0xb6
/* 801EC804  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC808  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC80C  38 81 00 14 */	addi r4, r1, 0x14
/* 801EC810  38 A0 00 00 */	li r5, 0
/* 801EC814  38 C0 00 00 */	li r6, 0
/* 801EC818  38 E0 00 00 */	li r7, 0
/* 801EC81C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC820  FC 40 08 90 */	fmr f2, f1
/* 801EC824  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC828  FC 80 18 90 */	fmr f4, f3
/* 801EC82C  39 00 00 00 */	li r8, 0
/* 801EC830  48 0B F1 55 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EC834  9B DB 06 CB */	stb r30, 0x6cb(r27)
/* 801EC838  3B C0 00 04 */	li r30, 4
/* 801EC83C  7F 63 DB 78 */	mr r3, r27
/* 801EC840  38 80 00 04 */	li r4, 4
/* 801EC844  48 00 17 99 */	bl getCursorPos__12dMenu_Ring_cFUc
/* 801EC848  98 61 00 18 */	stb r3, 0x18(r1)
/* 801EC84C  38 00 00 FF */	li r0, 0xff
/* 801EC850  98 1B 06 B8 */	stb r0, 0x6b8(r27)
/* 801EC854  38 00 00 00 */	li r0, 0
/* 801EC858  98 1B 06 B3 */	stb r0, 0x6b3(r27)
/* 801EC85C  98 1B 06 CD */	stb r0, 0x6cd(r27)
/* 801EC860  3B 80 00 01 */	li r28, 1
/* 801EC864  48 00 02 5C */	b lbl_801ECAC0
lbl_801EC868:
/* 801EC868  38 60 00 01 */	li r3, 1
/* 801EC86C  4B E4 15 5D */	bl dComIfGs_getMixItemIndex__Fi
/* 801EC870  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC874  28 00 00 04 */	cmplwi r0, 4
/* 801EC878  40 82 00 94 */	bne lbl_801EC90C
/* 801EC87C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EC884  38 80 00 01 */	li r4, 1
/* 801EC888  4B E4 61 D5 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EC88C  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801EC890  7C 9B 02 14 */	add r4, r27, r0
/* 801EC894  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EC898  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC89C  7C 04 00 40 */	cmplw r4, r0
/* 801EC8A0  40 82 00 6C */	bne lbl_801EC90C
/* 801EC8A4  38 00 00 B6 */	li r0, 0xb6
/* 801EC8A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801EC8AC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC8B0  38 81 00 10 */	addi r4, r1, 0x10
/* 801EC8B4  38 A0 00 00 */	li r5, 0
/* 801EC8B8  38 C0 00 00 */	li r6, 0
/* 801EC8BC  38 E0 00 00 */	li r7, 0
/* 801EC8C0  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC8C4  FC 40 08 90 */	fmr f2, f1
/* 801EC8C8  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC8CC  FC 80 18 90 */	fmr f4, f3
/* 801EC8D0  39 00 00 00 */	li r8, 0
/* 801EC8D4  48 0B F0 B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EC8D8  9B BB 06 CB */	stb r29, 0x6cb(r27)
/* 801EC8DC  3B A0 00 04 */	li r29, 4
/* 801EC8E0  7F 63 DB 78 */	mr r3, r27
/* 801EC8E4  38 80 00 04 */	li r4, 4
/* 801EC8E8  48 00 16 F5 */	bl getCursorPos__12dMenu_Ring_cFUc
/* 801EC8EC  98 61 00 19 */	stb r3, 0x19(r1)
/* 801EC8F0  38 00 00 FF */	li r0, 0xff
/* 801EC8F4  98 1B 06 B9 */	stb r0, 0x6b9(r27)
/* 801EC8F8  38 00 00 01 */	li r0, 1
/* 801EC8FC  98 1B 06 B3 */	stb r0, 0x6b3(r27)
/* 801EC900  98 1B 06 CD */	stb r0, 0x6cd(r27)
/* 801EC904  3B 80 00 01 */	li r28, 1
/* 801EC908  48 00 01 B8 */	b lbl_801ECAC0
lbl_801EC90C:
/* 801EC90C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EC910  2C 00 00 70 */	cmpwi r0, 0x70
/* 801EC914  40 80 00 10 */	bge lbl_801EC924
/* 801EC918  2C 00 00 3E */	cmpwi r0, 0x3e
/* 801EC91C  41 82 00 10 */	beq lbl_801EC92C
/* 801EC920  48 00 01 A0 */	b lbl_801ECAC0
lbl_801EC924:
/* 801EC924  2C 00 00 73 */	cmpwi r0, 0x73
/* 801EC928  40 80 01 98 */	bge lbl_801ECAC0
lbl_801EC92C:
/* 801EC92C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC930  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EC934  38 80 00 00 */	li r4, 0
/* 801EC938  4B E4 61 25 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EC93C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC940  28 00 00 04 */	cmplwi r0, 4
/* 801EC944  40 82 00 18 */	bne lbl_801EC95C
/* 801EC948  38 60 00 00 */	li r3, 0
/* 801EC94C  4B E4 14 7D */	bl dComIfGs_getMixItemIndex__Fi
/* 801EC950  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC954  28 00 00 FF */	cmplwi r0, 0xff
/* 801EC958  41 82 00 18 */	beq lbl_801EC970
lbl_801EC95C:
/* 801EC95C  38 60 00 00 */	li r3, 0
/* 801EC960  4B E4 14 69 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EC964  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC968  28 00 00 04 */	cmplwi r0, 4
/* 801EC96C  40 82 00 8C */	bne lbl_801EC9F8
lbl_801EC970:
/* 801EC970  38 00 00 B5 */	li r0, 0xb5
/* 801EC974  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EC978  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC97C  38 81 00 0C */	addi r4, r1, 0xc
/* 801EC980  38 A0 00 00 */	li r5, 0
/* 801EC984  38 C0 00 00 */	li r6, 0
/* 801EC988  38 E0 00 00 */	li r7, 0
/* 801EC98C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC990  FC 40 08 90 */	fmr f2, f1
/* 801EC994  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC998  FC 80 18 90 */	fmr f4, f3
/* 801EC99C  39 00 00 00 */	li r8, 0
/* 801EC9A0  48 0B EF E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EC9A4  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801EC9A8  7C 7B 02 14 */	add r3, r27, r0
/* 801EC9AC  8B C3 06 90 */	lbz r30, 0x690(r3)
/* 801EC9B0  38 00 00 04 */	li r0, 4
/* 801EC9B4  98 1B 06 B8 */	stb r0, 0x6b8(r27)
/* 801EC9B8  38 00 00 00 */	li r0, 0
/* 801EC9BC  98 1B 06 B3 */	stb r0, 0x6b3(r27)
/* 801EC9C0  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801EC9C4  98 1B 06 AA */	stb r0, 0x6aa(r27)
/* 801EC9C8  38 A0 00 FF */	li r5, 0xff
/* 801EC9CC  98 BB 06 CD */	stb r5, 0x6cd(r27)
/* 801EC9D0  3B 80 00 01 */	li r28, 1
/* 801EC9D4  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 801EC9D8  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801EC9DC  7C 7B 02 14 */	add r3, r27, r0
/* 801EC9E0  88 03 06 90 */	lbz r0, 0x690(r3)
/* 801EC9E4  7C 04 00 40 */	cmplw r4, r0
/* 801EC9E8  40 82 00 D8 */	bne lbl_801ECAC0
/* 801EC9EC  3B A0 00 FF */	li r29, 0xff
/* 801EC9F0  98 BB 06 AB */	stb r5, 0x6ab(r27)
/* 801EC9F4  48 00 00 CC */	b lbl_801ECAC0
lbl_801EC9F8:
/* 801EC9F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC9FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ECA00  38 80 00 01 */	li r4, 1
/* 801ECA04  4B E4 60 59 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801ECA08  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801ECA0C  28 00 00 04 */	cmplwi r0, 4
/* 801ECA10  40 82 00 18 */	bne lbl_801ECA28
/* 801ECA14  38 60 00 01 */	li r3, 1
/* 801ECA18  4B E4 13 B1 */	bl dComIfGs_getMixItemIndex__Fi
/* 801ECA1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801ECA20  28 00 00 FF */	cmplwi r0, 0xff
/* 801ECA24  41 82 00 18 */	beq lbl_801ECA3C
lbl_801ECA28:
/* 801ECA28  38 60 00 01 */	li r3, 1
/* 801ECA2C  4B E4 13 9D */	bl dComIfGs_getMixItemIndex__Fi
/* 801ECA30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801ECA34  28 00 00 04 */	cmplwi r0, 4
/* 801ECA38  40 82 00 88 */	bne lbl_801ECAC0
lbl_801ECA3C:
/* 801ECA3C  38 00 00 B5 */	li r0, 0xb5
/* 801ECA40  90 01 00 08 */	stw r0, 8(r1)
/* 801ECA44  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801ECA48  38 81 00 08 */	addi r4, r1, 8
/* 801ECA4C  38 A0 00 00 */	li r5, 0
/* 801ECA50  38 C0 00 00 */	li r6, 0
/* 801ECA54  38 E0 00 00 */	li r7, 0
/* 801ECA58  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801ECA5C  FC 40 08 90 */	fmr f2, f1
/* 801ECA60  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801ECA64  FC 80 18 90 */	fmr f4, f3
/* 801ECA68  39 00 00 00 */	li r8, 0
/* 801ECA6C  48 0B EF 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801ECA70  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801ECA74  7C 7B 02 14 */	add r3, r27, r0
/* 801ECA78  8B A3 06 90 */	lbz r29, 0x690(r3)
/* 801ECA7C  38 00 00 04 */	li r0, 4
/* 801ECA80  98 1B 06 B9 */	stb r0, 0x6b9(r27)
/* 801ECA84  38 00 00 01 */	li r0, 1
/* 801ECA88  98 1B 06 B3 */	stb r0, 0x6b3(r27)
/* 801ECA8C  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801ECA90  98 1B 06 AB */	stb r0, 0x6ab(r27)
/* 801ECA94  38 A0 00 FF */	li r5, 0xff
/* 801ECA98  98 BB 06 CD */	stb r5, 0x6cd(r27)
/* 801ECA9C  3B 80 00 01 */	li r28, 1
/* 801ECAA0  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 801ECAA4  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801ECAA8  7C 7B 02 14 */	add r3, r27, r0
/* 801ECAAC  88 03 06 90 */	lbz r0, 0x690(r3)
/* 801ECAB0  7C 04 00 40 */	cmplw r4, r0
/* 801ECAB4  40 82 00 0C */	bne lbl_801ECAC0
/* 801ECAB8  3B C0 00 FF */	li r30, 0xff
/* 801ECABC  98 BB 06 AA */	stb r5, 0x6aa(r27)
lbl_801ECAC0:
/* 801ECAC0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801ECAC4  41 82 00 38 */	beq lbl_801ECAFC
/* 801ECAC8  9B DB 06 B4 */	stb r30, 0x6b4(r27)
/* 801ECACC  9B BB 06 B5 */	stb r29, 0x6b5(r27)
/* 801ECAD0  7F 63 DB 78 */	mr r3, r27
/* 801ECAD4  38 80 00 00 */	li r4, 0
/* 801ECAD8  4B FF F3 81 */	bl setJumpItem__12dMenu_Ring_cFb
/* 801ECADC  88 01 00 18 */	lbz r0, 0x18(r1)
/* 801ECAE0  28 00 00 FF */	cmplwi r0, 0xff
/* 801ECAE4  41 82 00 08 */	beq lbl_801ECAEC
/* 801ECAE8  98 1B 06 AA */	stb r0, 0x6aa(r27)
lbl_801ECAEC:
/* 801ECAEC  88 01 00 19 */	lbz r0, 0x19(r1)
/* 801ECAF0  28 00 00 FF */	cmplwi r0, 0xff
/* 801ECAF4  41 82 00 08 */	beq lbl_801ECAFC
/* 801ECAF8  98 1B 06 AB */	stb r0, 0x6ab(r27)
lbl_801ECAFC:
/* 801ECAFC  39 61 00 40 */	addi r11, r1, 0x40
/* 801ECB00  48 17 57 21 */	bl _restgpr_27
/* 801ECB04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801ECB08  7C 08 03 A6 */	mtlr r0
/* 801ECB0C  38 21 00 40 */	addi r1, r1, 0x40
/* 801ECB10  4E 80 00 20 */	blr 
