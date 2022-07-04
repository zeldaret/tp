lbl_80464240:
/* 80464240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80464244  7C 08 02 A6 */	mflr r0
/* 80464248  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046424C  39 61 00 20 */	addi r11, r1, 0x20
/* 80464250  4B EF DF 8D */	bl _savegpr_29
/* 80464254  7C 7F 1B 78 */	mr r31, r3
/* 80464258  38 00 FF FF */	li r0, -1
/* 8046425C  90 03 06 78 */	stw r0, 0x678(r3)
/* 80464260  48 00 0B B9 */	bl checkExecute__10daDoor20_cFv
/* 80464264  2C 03 00 01 */	cmpwi r3, 1
/* 80464268  41 82 00 88 */	beq lbl_804642F0
/* 8046426C  40 80 00 10 */	bge lbl_8046427C
/* 80464270  2C 03 00 00 */	cmpwi r3, 0
/* 80464274  40 80 00 14 */	bge lbl_80464288
/* 80464278  48 00 00 88 */	b lbl_80464300
lbl_8046427C:
/* 8046427C  2C 03 00 03 */	cmpwi r3, 3
/* 80464280  40 80 00 80 */	bge lbl_80464300
/* 80464284  48 00 00 10 */	b lbl_80464294
lbl_80464288:
/* 80464288  38 00 00 00 */	li r0, 0
/* 8046428C  98 1F 06 90 */	stb r0, 0x690(r31)
/* 80464290  48 00 00 70 */	b lbl_80464300
lbl_80464294:
/* 80464294  88 1F 06 90 */	lbz r0, 0x690(r31)
/* 80464298  2C 00 00 02 */	cmpwi r0, 2
/* 8046429C  41 82 00 3C */	beq lbl_804642D8
/* 804642A0  40 80 00 14 */	bge lbl_804642B4
/* 804642A4  2C 00 00 00 */	cmpwi r0, 0
/* 804642A8  41 82 00 18 */	beq lbl_804642C0
/* 804642AC  40 80 00 20 */	bge lbl_804642CC
/* 804642B0  48 00 00 50 */	b lbl_80464300
lbl_804642B4:
/* 804642B4  2C 00 00 04 */	cmpwi r0, 4
/* 804642B8  40 80 00 48 */	bge lbl_80464300
/* 804642BC  48 00 00 28 */	b lbl_804642E4
lbl_804642C0:
/* 804642C0  7F E3 FB 78 */	mr r3, r31
/* 804642C4  4B FF FF 29 */	bl actionInit__10daDoor20_cFv
/* 804642C8  48 00 00 38 */	b lbl_80464300
lbl_804642CC:
/* 804642CC  7F E3 FB 78 */	mr r3, r31
/* 804642D0  4B FF FC ED */	bl actionWait__10daDoor20_cFv
/* 804642D4  48 00 00 2C */	b lbl_80464300
lbl_804642D8:
/* 804642D8  7F E3 FB 78 */	mr r3, r31
/* 804642DC  4B FF FE 3D */	bl actionStopClose__10daDoor20_cFv
/* 804642E0  48 00 00 20 */	b lbl_80464300
lbl_804642E4:
/* 804642E4  7F E3 FB 78 */	mr r3, r31
/* 804642E8  4B FF FE 85 */	bl actionDemo__10daDoor20_cFv
/* 804642EC  48 00 00 14 */	b lbl_80464300
lbl_804642F0:
/* 804642F0  7F E3 FB 78 */	mr r3, r31
/* 804642F4  48 00 0B D1 */	bl startDemoProc__10daDoor20_cFv
/* 804642F8  7F E3 FB 78 */	mr r3, r31
/* 804642FC  4B FF EC E5 */	bl demoProc__10daDoor20_cFv
lbl_80464300:
/* 80464300  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80464304  8C 03 0D 64 */	lbzu r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80464308  98 1F 06 7D */	stb r0, 0x67d(r31)
/* 8046430C  8B C3 00 00 */	lbz r30, 0(r3)
/* 80464310  7F DE 07 74 */	extsb r30, r30
/* 80464314  7F E3 FB 78 */	mr r3, r31
/* 80464318  4B BD 5E A1 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 8046431C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80464320  7C 1E 00 00 */	cmpw r30, r0
/* 80464324  40 82 00 10 */	bne lbl_80464334
/* 80464328  7F E3 FB 78 */	mr r3, r31
/* 8046432C  4B BD 5F 05 */	bl getFLightInf__13door_param2_cFP10fopAc_ac_c
/* 80464330  48 00 00 0C */	b lbl_8046433C
lbl_80464334:
/* 80464334  7F E3 FB 78 */	mr r3, r31
/* 80464338  4B BD 5F 05 */	bl getBLightInf__13door_param2_cFP10fopAc_ac_c
lbl_8046433C:
/* 8046433C  98 7F 04 70 */	stb r3, 0x470(r31)
/* 80464340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80464344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80464348  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8046434C  3B DD 3E C8 */	addi r30, r29, 0x3ec8
/* 80464350  7F C3 F3 78 */	mr r3, r30
/* 80464354  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80464358  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 8046435C  38 84 01 94 */	addi r4, r4, 0x194
/* 80464360  4B F0 46 35 */	bl strcmp
/* 80464364  2C 03 00 00 */	cmpwi r3, 0
/* 80464368  41 82 00 2C */	beq lbl_80464394
/* 8046436C  7F C3 F3 78 */	mr r3, r30
/* 80464370  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80464374  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80464378  38 84 01 9B */	addi r4, r4, 0x19b
/* 8046437C  4B F0 46 19 */	bl strcmp
/* 80464380  2C 03 00 00 */	cmpwi r3, 0
/* 80464384  41 82 00 10 */	beq lbl_80464394
/* 80464388  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 8046438C  7F A4 EB 78 */	mr r4, r29
/* 80464390  4B C1 27 1D */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80464394:
/* 80464394  38 60 00 01 */	li r3, 1
/* 80464398  39 61 00 20 */	addi r11, r1, 0x20
/* 8046439C  4B EF DE 8D */	bl _restgpr_29
/* 804643A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804643A4  7C 08 03 A6 */	mtlr r0
/* 804643A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804643AC  4E 80 00 20 */	blr 
