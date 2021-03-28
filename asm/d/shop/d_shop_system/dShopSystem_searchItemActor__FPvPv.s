lbl_80197098:
/* 80197098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019709C  7C 08 02 A6 */	mflr r0
/* 801970A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801970A4  39 61 00 20 */	addi r11, r1, 0x20
/* 801970A8  48 1C B1 2D */	bl _savegpr_27
/* 801970AC  7C 7D 1B 78 */	mr r29, r3
/* 801970B0  7C 9B 23 78 */	mr r27, r4
/* 801970B4  4B E8 1C 2D */	bl fopAc_IsActor__FPv
/* 801970B8  2C 03 00 00 */	cmpwi r3, 0
/* 801970BC  41 82 01 98 */	beq lbl_80197254
/* 801970C0  A8 1D 00 08 */	lha r0, 8(r29)
/* 801970C4  2C 00 01 27 */	cmpwi r0, 0x127
/* 801970C8  40 82 01 8C */	bne lbl_80197254
/* 801970CC  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 801970D0  54 03 00 06 */	rlwinm r3, r0, 0, 0, 3
/* 801970D4  80 9D 00 B0 */	lwz r4, 0xb0(r29)
/* 801970D8  54 80 00 06 */	rlwinm r0, r4, 0, 0, 3
/* 801970DC  7C 03 00 40 */	cmplw r3, r0
/* 801970E0  40 82 01 74 */	bne lbl_80197254
/* 801970E4  80 6D 8A DC */	lwz r3, dShopSystem_item_count(r13)
/* 801970E8  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 801970EC  7C 03 00 00 */	cmpw r3, r0
/* 801970F0  40 80 01 64 */	bge lbl_80197254
/* 801970F4  54 9F 47 3E */	rlwinm r31, r4, 8, 0x1c, 0x1f
/* 801970F8  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 801970FC  84 03 B8 A4 */	lwzu r0, dShopSystem_itemActor@l(r3)
/* 80197100  7C 00 E8 40 */	cmplw r0, r29
/* 80197104  41 82 01 50 */	beq lbl_80197254
/* 80197108  80 03 00 04 */	lwz r0, 4(r3)
/* 8019710C  7C 00 E8 40 */	cmplw r0, r29
/* 80197110  41 82 01 44 */	beq lbl_80197254
/* 80197114  80 03 00 08 */	lwz r0, 8(r3)
/* 80197118  7C 00 E8 40 */	cmplw r0, r29
/* 8019711C  41 82 01 38 */	beq lbl_80197254
/* 80197120  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80197124  7C 00 E8 40 */	cmplw r0, r29
/* 80197128  41 82 01 2C */	beq lbl_80197254
/* 8019712C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80197130  7C 00 E8 40 */	cmplw r0, r29
/* 80197134  41 82 01 20 */	beq lbl_80197254
/* 80197138  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8019713C  7C 00 E8 40 */	cmplw r0, r29
/* 80197140  41 82 01 14 */	beq lbl_80197254
/* 80197144  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80197148  7C 00 E8 40 */	cmplw r0, r29
/* 8019714C  41 82 01 08 */	beq lbl_80197254
/* 80197150  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 80197154  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80197158  54 1C C6 3E */	rlwinm r28, r0, 0x18, 0x18, 0x1f
/* 8019715C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80197160  7C 1E 03 78 */	mr r30, r0
/* 80197164  28 1B 00 FF */	cmplwi r27, 0xff
/* 80197168  41 82 00 20 */	beq lbl_80197188
/* 8019716C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80197170  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80197174  38 63 09 58 */	addi r3, r3, 0x958
/* 80197178  7F 64 DB 78 */	mr r4, r27
/* 8019717C  4B E9 D6 E5 */	bl isSwitch__12dSv_memBit_cCFi
/* 80197180  2C 03 00 00 */	cmpwi r3, 0
/* 80197184  40 82 00 D0 */	bne lbl_80197254
lbl_80197188:
/* 80197188  28 1C 00 FF */	cmplwi r28, 0xff
/* 8019718C  41 82 00 20 */	beq lbl_801971AC
/* 80197190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80197194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80197198  38 63 09 58 */	addi r3, r3, 0x958
/* 8019719C  7F 84 E3 78 */	mr r4, r28
/* 801971A0  4B E9 D6 C1 */	bl isSwitch__12dSv_memBit_cCFi
/* 801971A4  2C 03 00 00 */	cmpwi r3, 0
/* 801971A8  41 82 00 AC */	beq lbl_80197254
lbl_801971AC:
/* 801971AC  28 1B 00 FF */	cmplwi r27, 0xff
/* 801971B0  41 82 00 3C */	beq lbl_801971EC
/* 801971B4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801971B8  28 00 00 2C */	cmplwi r0, 0x2c
/* 801971BC  40 82 00 30 */	bne lbl_801971EC
/* 801971C0  7F C3 F3 78 */	mr r3, r30
/* 801971C4  38 80 00 01 */	li r4, 1
/* 801971C8  4B F0 0D 19 */	bl checkItemGet__FUci
/* 801971CC  2C 03 00 00 */	cmpwi r3, 0
/* 801971D0  41 82 00 1C */	beq lbl_801971EC
/* 801971D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801971D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801971DC  38 63 09 58 */	addi r3, r3, 0x958
/* 801971E0  7F 64 DB 78 */	mr r4, r27
/* 801971E4  4B E9 D6 2D */	bl onSwitch__12dSv_memBit_cFi
/* 801971E8  48 00 00 6C */	b lbl_80197254
lbl_801971EC:
/* 801971EC  28 1F 00 00 */	cmplwi r31, 0
/* 801971F0  40 82 00 2C */	bne lbl_8019721C
/* 801971F4  38 00 00 01 */	li r0, 1
/* 801971F8  98 0D 8A E0 */	stb r0, data_80451060(r13)
/* 801971FC  80 8D 8A DC */	lwz r4, dShopSystem_item_count(r13)
/* 80197200  54 80 10 3A */	slwi r0, r4, 2
/* 80197204  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 80197208  38 63 B8 A4 */	addi r3, r3, dShopSystem_itemActor@l
/* 8019720C  7F A3 01 2E */	stwx r29, r3, r0
/* 80197210  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80197214  7F C3 21 AE */	stbx r30, r3, r4
/* 80197218  48 00 00 30 */	b lbl_80197248
lbl_8019721C:
/* 8019721C  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 80197220  38 63 B8 A4 */	addi r3, r3, dShopSystem_itemActor@l
/* 80197224  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 80197228  7C 63 02 14 */	add r3, r3, r0
/* 8019722C  84 03 FF FC */	lwzu r0, -4(r3)
/* 80197230  28 00 00 00 */	cmplwi r0, 0
/* 80197234  40 82 00 14 */	bne lbl_80197248
/* 80197238  93 A3 00 00 */	stw r29, 0(r3)
/* 8019723C  38 0D 81 68 */	la r0, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80197240  7C 60 FA 14 */	add r3, r0, r31
/* 80197244  9B C3 FF FF */	stb r30, -1(r3)
lbl_80197248:
/* 80197248  80 6D 8A DC */	lwz r3, dShopSystem_item_count(r13)
/* 8019724C  38 03 00 01 */	addi r0, r3, 1
/* 80197250  90 0D 8A DC */	stw r0, dShopSystem_item_count(r13)
lbl_80197254:
/* 80197254  38 60 00 00 */	li r3, 0
/* 80197258  39 61 00 20 */	addi r11, r1, 0x20
/* 8019725C  48 1C AF C5 */	bl _restgpr_27
/* 80197260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80197264  7C 08 03 A6 */	mtlr r0
/* 80197268  38 21 00 20 */	addi r1, r1, 0x20
/* 8019726C  4E 80 00 20 */	blr 
