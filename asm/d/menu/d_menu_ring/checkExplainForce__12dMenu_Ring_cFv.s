lbl_801EE228:
/* 801EE228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EE22C  7C 08 02 A6 */	mflr r0
/* 801EE230  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EE234  39 61 00 20 */	addi r11, r1, 0x20
/* 801EE238  48 17 3F A1 */	bl _savegpr_28
/* 801EE23C  7C 7D 1B 78 */	mr r29, r3
/* 801EE240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE248  38 80 00 00 */	li r4, 0
/* 801EE24C  4B E4 48 11 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EE250  7C 60 1B 78 */	mr r0, r3
/* 801EE254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE258  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE25C  3B 83 00 9C */	addi r28, r3, 0x9c
/* 801EE260  7F 83 E3 78 */	mr r3, r28
/* 801EE264  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801EE268  38 A0 00 00 */	li r5, 0
/* 801EE26C  4B E4 4D C5 */	bl getItem__17dSv_player_item_cCFib
/* 801EE270  7C 7E 1B 78 */	mr r30, r3
/* 801EE274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE27C  38 80 00 01 */	li r4, 1
/* 801EE280  4B E4 47 DD */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EE284  7C 60 1B 78 */	mr r0, r3
/* 801EE288  7F 83 E3 78 */	mr r3, r28
/* 801EE28C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801EE290  38 A0 00 00 */	li r5, 0
/* 801EE294  4B E4 4D 9D */	bl getItem__17dSv_player_item_cCFib
/* 801EE298  7C 7F 1B 78 */	mr r31, r3
/* 801EE29C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE2A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE2A4  38 80 00 02 */	li r4, 2
/* 801EE2A8  4B E4 47 B5 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EE2AC  7C 60 1B 78 */	mr r0, r3
/* 801EE2B0  7F 83 E3 78 */	mr r3, r28
/* 801EE2B4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801EE2B8  38 A0 00 00 */	li r5, 0
/* 801EE2BC  4B E4 4D 75 */	bl getItem__17dSv_player_item_cCFib
/* 801EE2C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE2C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE2C8  38 80 00 03 */	li r4, 3
/* 801EE2CC  4B E4 47 91 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EE2D0  7C 60 1B 78 */	mr r0, r3
/* 801EE2D4  7F 83 E3 78 */	mr r3, r28
/* 801EE2D8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801EE2DC  38 A0 00 00 */	li r5, 0
/* 801EE2E0  4B E4 4D 51 */	bl getItem__17dSv_player_item_cCFib
/* 801EE2E4  7F 83 E3 78 */	mr r3, r28
/* 801EE2E8  88 1D 06 A8 */	lbz r0, 0x6a8(r29)
/* 801EE2EC  7C 9D 02 14 */	add r4, r29, r0
/* 801EE2F0  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EE2F4  38 A0 00 01 */	li r5, 1
/* 801EE2F8  4B E4 4D 39 */	bl getItem__17dSv_player_item_cCFib
/* 801EE2FC  38 A0 00 FF */	li r5, 0xff
/* 801EE300  38 81 00 08 */	addi r4, r1, 8
/* 801EE304  38 00 00 04 */	li r0, 4
/* 801EE308  7C 09 03 A6 */	mtctr r0
lbl_801EE30C:
/* 801EE30C  98 A4 00 00 */	stb r5, 0(r4)
/* 801EE310  38 84 00 01 */	addi r4, r4, 1
/* 801EE314  42 00 FF F8 */	bdnz lbl_801EE30C
/* 801EE318  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EE31C  2C 00 00 4A */	cmpwi r0, 0x4a
/* 801EE320  41 82 01 B4 */	beq lbl_801EE4D4
/* 801EE324  40 80 00 28 */	bge lbl_801EE34C
/* 801EE328  2C 00 00 3E */	cmpwi r0, 0x3e
/* 801EE32C  41 82 00 E8 */	beq lbl_801EE414
/* 801EE330  40 80 00 10 */	bge lbl_801EE340
/* 801EE334  2C 00 00 3D */	cmpwi r0, 0x3d
/* 801EE338  40 80 01 6C */	bge lbl_801EE4A4
/* 801EE33C  48 00 02 14 */	b lbl_801EE550
lbl_801EE340:
/* 801EE340  2C 00 00 43 */	cmpwi r0, 0x43
/* 801EE344  41 82 00 34 */	beq lbl_801EE378
/* 801EE348  48 00 02 08 */	b lbl_801EE550
lbl_801EE34C:
/* 801EE34C  2C 00 00 74 */	cmpwi r0, 0x74
/* 801EE350  41 82 01 24 */	beq lbl_801EE474
/* 801EE354  40 80 00 18 */	bge lbl_801EE36C
/* 801EE358  2C 00 00 73 */	cmpwi r0, 0x73
/* 801EE35C  40 80 01 F4 */	bge lbl_801EE550
/* 801EE360  2C 00 00 70 */	cmpwi r0, 0x70
/* 801EE364  40 80 00 80 */	bge lbl_801EE3E4
/* 801EE368  48 00 01 E8 */	b lbl_801EE550
lbl_801EE36C:
/* 801EE36C  2C 00 00 76 */	cmpwi r0, 0x76
/* 801EE370  41 82 00 D4 */	beq lbl_801EE444
/* 801EE374  48 00 01 DC */	b lbl_801EE550
lbl_801EE378:
/* 801EE378  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801EE37C  2C 00 00 70 */	cmpwi r0, 0x70
/* 801EE380  40 80 00 10 */	bge lbl_801EE390
/* 801EE384  2C 00 00 3E */	cmpwi r0, 0x3e
/* 801EE388  41 82 00 1C */	beq lbl_801EE3A4
/* 801EE38C  48 00 00 20 */	b lbl_801EE3AC
lbl_801EE390:
/* 801EE390  2C 00 00 73 */	cmpwi r0, 0x73
/* 801EE394  40 80 00 18 */	bge lbl_801EE3AC
/* 801EE398  38 00 00 59 */	li r0, 0x59
/* 801EE39C  98 01 00 08 */	stb r0, 8(r1)
/* 801EE3A0  48 00 00 0C */	b lbl_801EE3AC
lbl_801EE3A4:
/* 801EE3A4  38 00 00 5A */	li r0, 0x5a
/* 801EE3A8  98 01 00 08 */	stb r0, 8(r1)
lbl_801EE3AC:
/* 801EE3AC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EE3B0  2C 00 00 70 */	cmpwi r0, 0x70
/* 801EE3B4  40 80 00 10 */	bge lbl_801EE3C4
/* 801EE3B8  2C 00 00 3E */	cmpwi r0, 0x3e
/* 801EE3BC  41 82 00 1C */	beq lbl_801EE3D8
/* 801EE3C0  48 00 01 90 */	b lbl_801EE550
lbl_801EE3C4:
/* 801EE3C4  2C 00 00 73 */	cmpwi r0, 0x73
/* 801EE3C8  40 80 01 88 */	bge lbl_801EE550
/* 801EE3CC  38 00 00 59 */	li r0, 0x59
/* 801EE3D0  98 01 00 09 */	stb r0, 9(r1)
/* 801EE3D4  48 00 01 7C */	b lbl_801EE550
lbl_801EE3D8:
/* 801EE3D8  38 00 00 5A */	li r0, 0x5a
/* 801EE3DC  98 01 00 09 */	stb r0, 9(r1)
/* 801EE3E0  48 00 01 70 */	b lbl_801EE550
lbl_801EE3E4:
/* 801EE3E4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801EE3E8  28 00 00 43 */	cmplwi r0, 0x43
/* 801EE3EC  40 82 00 10 */	bne lbl_801EE3FC
/* 801EE3F0  38 00 00 59 */	li r0, 0x59
/* 801EE3F4  98 01 00 08 */	stb r0, 8(r1)
/* 801EE3F8  48 00 01 58 */	b lbl_801EE550
lbl_801EE3FC:
/* 801EE3FC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EE400  28 00 00 43 */	cmplwi r0, 0x43
/* 801EE404  40 82 01 4C */	bne lbl_801EE550
/* 801EE408  38 00 00 59 */	li r0, 0x59
/* 801EE40C  98 01 00 09 */	stb r0, 9(r1)
/* 801EE410  48 00 01 40 */	b lbl_801EE550
lbl_801EE414:
/* 801EE414  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801EE418  28 00 00 43 */	cmplwi r0, 0x43
/* 801EE41C  40 82 00 10 */	bne lbl_801EE42C
/* 801EE420  38 00 00 5A */	li r0, 0x5a
/* 801EE424  98 01 00 08 */	stb r0, 8(r1)
/* 801EE428  48 00 01 28 */	b lbl_801EE550
lbl_801EE42C:
/* 801EE42C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EE430  28 00 00 43 */	cmplwi r0, 0x43
/* 801EE434  40 82 01 1C */	bne lbl_801EE550
/* 801EE438  38 00 00 5A */	li r0, 0x5a
/* 801EE43C  98 01 00 09 */	stb r0, 9(r1)
/* 801EE440  48 00 01 10 */	b lbl_801EE550
lbl_801EE444:
/* 801EE444  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801EE448  28 00 00 4A */	cmplwi r0, 0x4a
/* 801EE44C  40 82 00 10 */	bne lbl_801EE45C
/* 801EE450  38 00 00 5B */	li r0, 0x5b
/* 801EE454  98 01 00 08 */	stb r0, 8(r1)
/* 801EE458  48 00 00 F8 */	b lbl_801EE550
lbl_801EE45C:
/* 801EE45C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EE460  28 00 00 4A */	cmplwi r0, 0x4a
/* 801EE464  40 82 00 EC */	bne lbl_801EE550
/* 801EE468  38 00 00 5B */	li r0, 0x5b
/* 801EE46C  98 01 00 09 */	stb r0, 9(r1)
/* 801EE470  48 00 00 E0 */	b lbl_801EE550
lbl_801EE474:
/* 801EE474  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801EE478  28 00 00 4A */	cmplwi r0, 0x4a
/* 801EE47C  40 82 00 10 */	bne lbl_801EE48C
/* 801EE480  38 00 00 5D */	li r0, 0x5d
/* 801EE484  98 01 00 08 */	stb r0, 8(r1)
/* 801EE488  48 00 00 C8 */	b lbl_801EE550
lbl_801EE48C:
/* 801EE48C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EE490  28 00 00 4A */	cmplwi r0, 0x4a
/* 801EE494  40 82 00 BC */	bne lbl_801EE550
/* 801EE498  38 00 00 5D */	li r0, 0x5d
/* 801EE49C  98 01 00 09 */	stb r0, 9(r1)
/* 801EE4A0  48 00 00 B0 */	b lbl_801EE550
lbl_801EE4A4:
/* 801EE4A4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801EE4A8  28 00 00 4A */	cmplwi r0, 0x4a
/* 801EE4AC  40 82 00 10 */	bne lbl_801EE4BC
/* 801EE4B0  38 00 00 5C */	li r0, 0x5c
/* 801EE4B4  98 01 00 08 */	stb r0, 8(r1)
/* 801EE4B8  48 00 00 98 */	b lbl_801EE550
lbl_801EE4BC:
/* 801EE4BC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EE4C0  28 00 00 4A */	cmplwi r0, 0x4a
/* 801EE4C4  40 82 00 8C */	bne lbl_801EE550
/* 801EE4C8  38 00 00 5C */	li r0, 0x5c
/* 801EE4CC  98 01 00 09 */	stb r0, 9(r1)
/* 801EE4D0  48 00 00 80 */	b lbl_801EE550
lbl_801EE4D4:
/* 801EE4D4  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 801EE4D8  28 03 00 76 */	cmplwi r3, 0x76
/* 801EE4DC  40 82 00 10 */	bne lbl_801EE4EC
/* 801EE4E0  38 00 00 5B */	li r0, 0x5b
/* 801EE4E4  98 01 00 08 */	stb r0, 8(r1)
/* 801EE4E8  48 00 00 68 */	b lbl_801EE550
lbl_801EE4EC:
/* 801EE4EC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EE4F0  28 00 00 76 */	cmplwi r0, 0x76
/* 801EE4F4  40 82 00 10 */	bne lbl_801EE504
/* 801EE4F8  38 00 00 5B */	li r0, 0x5b
/* 801EE4FC  98 01 00 09 */	stb r0, 9(r1)
/* 801EE500  48 00 00 50 */	b lbl_801EE550
lbl_801EE504:
/* 801EE504  28 03 00 3D */	cmplwi r3, 0x3d
/* 801EE508  40 82 00 10 */	bne lbl_801EE518
/* 801EE50C  38 00 00 5C */	li r0, 0x5c
/* 801EE510  98 01 00 08 */	stb r0, 8(r1)
/* 801EE514  48 00 00 3C */	b lbl_801EE550
lbl_801EE518:
/* 801EE518  28 00 00 3D */	cmplwi r0, 0x3d
/* 801EE51C  40 82 00 10 */	bne lbl_801EE52C
/* 801EE520  38 00 00 5C */	li r0, 0x5c
/* 801EE524  98 01 00 09 */	stb r0, 9(r1)
/* 801EE528  48 00 00 28 */	b lbl_801EE550
lbl_801EE52C:
/* 801EE52C  28 03 00 74 */	cmplwi r3, 0x74
/* 801EE530  40 82 00 10 */	bne lbl_801EE540
/* 801EE534  38 00 00 5D */	li r0, 0x5d
/* 801EE538  98 01 00 08 */	stb r0, 8(r1)
/* 801EE53C  48 00 00 14 */	b lbl_801EE550
lbl_801EE540:
/* 801EE540  28 00 00 74 */	cmplwi r0, 0x74
/* 801EE544  40 82 00 0C */	bne lbl_801EE550
/* 801EE548  38 00 00 5D */	li r0, 0x5d
/* 801EE54C  98 01 00 09 */	stb r0, 9(r1)
lbl_801EE550:
/* 801EE550  88 01 00 08 */	lbz r0, 8(r1)
/* 801EE554  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE558  41 82 00 58 */	beq lbl_801EE5B0
/* 801EE55C  88 01 00 09 */	lbz r0, 9(r1)
/* 801EE560  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE564  40 82 00 4C */	bne lbl_801EE5B0
/* 801EE568  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801EE56C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE570  40 82 00 40 */	bne lbl_801EE5B0
/* 801EE574  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801EE578  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE57C  40 82 00 34 */	bne lbl_801EE5B0
/* 801EE580  38 60 00 00 */	li r3, 0
/* 801EE584  4B E3 F8 45 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EE588  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EE58C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE590  40 82 00 20 */	bne lbl_801EE5B0
/* 801EE594  88 01 00 08 */	lbz r0, 8(r1)
/* 801EE598  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 801EE59C  38 00 00 FF */	li r0, 0xff
/* 801EE5A0  98 1D 06 C8 */	stb r0, 0x6c8(r29)
/* 801EE5A4  98 1D 06 C9 */	stb r0, 0x6c9(r29)
/* 801EE5A8  98 1D 06 CA */	stb r0, 0x6ca(r29)
/* 801EE5AC  48 00 00 74 */	b lbl_801EE620
lbl_801EE5B0:
/* 801EE5B0  88 01 00 08 */	lbz r0, 8(r1)
/* 801EE5B4  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE5B8  40 82 00 54 */	bne lbl_801EE60C
/* 801EE5BC  8B 81 00 09 */	lbz r28, 9(r1)
/* 801EE5C0  28 1C 00 FF */	cmplwi r28, 0xff
/* 801EE5C4  41 82 00 48 */	beq lbl_801EE60C
/* 801EE5C8  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801EE5CC  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE5D0  40 82 00 3C */	bne lbl_801EE60C
/* 801EE5D4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801EE5D8  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE5DC  40 82 00 30 */	bne lbl_801EE60C
/* 801EE5E0  38 60 00 01 */	li r3, 1
/* 801EE5E4  4B E3 F7 E5 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EE5E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EE5EC  28 00 00 FF */	cmplwi r0, 0xff
/* 801EE5F0  40 82 00 1C */	bne lbl_801EE60C
/* 801EE5F4  38 00 00 FF */	li r0, 0xff
/* 801EE5F8  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 801EE5FC  9B 9D 06 C8 */	stb r28, 0x6c8(r29)
/* 801EE600  98 1D 06 C9 */	stb r0, 0x6c9(r29)
/* 801EE604  98 1D 06 CA */	stb r0, 0x6ca(r29)
/* 801EE608  48 00 00 18 */	b lbl_801EE620
lbl_801EE60C:
/* 801EE60C  38 00 00 FF */	li r0, 0xff
/* 801EE610  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 801EE614  98 1D 06 C8 */	stb r0, 0x6c8(r29)
/* 801EE618  98 1D 06 C9 */	stb r0, 0x6c9(r29)
/* 801EE61C  98 1D 06 CA */	stb r0, 0x6ca(r29)
lbl_801EE620:
/* 801EE620  38 60 00 00 */	li r3, 0
/* 801EE624  39 61 00 20 */	addi r11, r1, 0x20
/* 801EE628  48 17 3B FD */	bl _restgpr_28
/* 801EE62C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EE630  7C 08 03 A6 */	mtlr r0
/* 801EE634  38 21 00 20 */	addi r1, r1, 0x20
/* 801EE638  4E 80 00 20 */	blr 
