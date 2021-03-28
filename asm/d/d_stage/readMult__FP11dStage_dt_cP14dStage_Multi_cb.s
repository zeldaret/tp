lbl_8002645C:
/* 8002645C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80026460  7C 08 02 A6 */	mflr r0
/* 80026464  90 01 00 34 */	stw r0, 0x34(r1)
/* 80026468  39 61 00 30 */	addi r11, r1, 0x30
/* 8002646C  48 33 BD 65 */	bl _savegpr_26
/* 80026470  7C 7B 1B 78 */	mr r27, r3
/* 80026474  7C 9C 23 79 */	or. r28, r4, r4
/* 80026478  7C BD 2B 78 */	mr r29, r5
/* 8002647C  41 82 01 48 */	beq lbl_800265C4
/* 80026480  83 FC 00 04 */	lwz r31, 4(r28)
/* 80026484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80026488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002648C  3B C3 4E 20 */	addi r30, r3, 0x4e20
/* 80026490  7F C3 F3 78 */	mr r3, r30
/* 80026494  81 9E 00 00 */	lwz r12, 0(r30)
/* 80026498  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8002649C  7D 89 03 A6 */	mtctr r12
/* 800264A0  4E 80 04 21 */	bctrl 
/* 800264A4  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 800264A8  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 800264AC  41 82 00 28 */	beq lbl_800264D4
/* 800264B0  7F C3 F3 78 */	mr r3, r30
/* 800264B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 800264B8  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800264BC  7D 89 03 A6 */	mtctr r12
/* 800264C0  4E 80 04 21 */	bctrl 
/* 800264C4  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 800264C8  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 800264CC  2C 00 00 06 */	cmpwi r0, 6
/* 800264D0  40 82 00 14 */	bne lbl_800264E4
lbl_800264D4:
/* 800264D4  38 6D 87 F4 */	la r3, m_roomDzs__20dStage_roomControl_c(r13) /* 80450D74-_SDA_BASE_ */
/* 800264D8  80 1C 00 00 */	lwz r0, 0(r28)
/* 800264DC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800264E0  4B FF E5 55 */	bl create__Q220dStage_roomControl_c9roomDzs_cFUc
lbl_800264E4:
/* 800264E4  3B C0 00 00 */	li r30, 0
/* 800264E8  48 00 00 CC */	b lbl_800265B4
lbl_800264EC:
/* 800264EC  38 6D 87 F4 */	la r3, m_roomDzs__20dStage_roomControl_c(r13) /* 80450D74-_SDA_BASE_ */
/* 800264F0  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 800264F4  88 BF 00 0A */	lbz r5, 0xa(r31)
/* 800264F8  4B FF E6 4D */	bl add__Q220dStage_roomControl_c9roomDzs_cFUcUc
/* 800264FC  7C 7A 1B 78 */	mr r26, r3
/* 80026500  28 03 00 00 */	cmplwi r3, 0
/* 80026504  40 82 00 44 */	bne lbl_80026548
/* 80026508  38 61 00 08 */	addi r3, r1, 8
/* 8002650C  3C 80 80 38 */	lis r4, d_d_stage__stringBase0@ha
/* 80026510  38 84 8A 50 */	addi r4, r4, d_d_stage__stringBase0@l
/* 80026514  38 84 01 0E */	addi r4, r4, 0x10e
/* 80026518  88 BF 00 0A */	lbz r5, 0xa(r31)
/* 8002651C  4C C6 31 82 */	crclr 6
/* 80026520  48 33 FF BD */	bl sprintf
/* 80026524  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80026528  41 82 00 14 */	beq lbl_8002653C
/* 8002652C  38 61 00 08 */	addi r3, r1, 8
/* 80026530  48 00 8F 49 */	bl dComIfG_getOldStageRes__FPCc
/* 80026534  7C 7A 1B 78 */	mr r26, r3
/* 80026538  48 00 00 10 */	b lbl_80026548
lbl_8002653C:
/* 8002653C  38 61 00 08 */	addi r3, r1, 8
/* 80026540  48 00 8E F5 */	bl dComIfG_getStageRes__FPCc
/* 80026544  7C 7A 1B 78 */	mr r26, r3
lbl_80026548:
/* 80026548  28 1A 00 00 */	cmplwi r26, 0
/* 8002654C  41 82 00 60 */	beq lbl_800265AC
/* 80026550  7F 43 D3 78 */	mr r3, r26
/* 80026554  4B FF FE 09 */	bl dStage_dt_c_offsetToPtr__FPv
/* 80026558  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8002655C  98 1B 00 04 */	stb r0, 4(r27)
/* 80026560  7F 43 D3 78 */	mr r3, r26
/* 80026564  7F 64 DB 78 */	mr r4, r27
/* 80026568  3C A0 80 3A */	lis r5, l_roomFuncTable@ha
/* 8002656C  38 A5 65 CC */	addi r5, r5, l_roomFuncTable@l
/* 80026570  38 C0 00 04 */	li r6, 4
/* 80026574  4B FF FB 41 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026578  38 60 00 00 */	li r3, 0
/* 8002657C  48 00 64 01 */	bl getLayerNo__14dComIfG_play_cFi
/* 80026580  7C 65 1B 78 */	mr r5, r3
/* 80026584  3C 60 80 3A */	lis r3, l_layerFuncTable_5053@ha
/* 80026588  38 63 65 FC */	addi r3, r3, l_layerFuncTable_5053@l
/* 8002658C  38 80 00 03 */	li r4, 3
/* 80026590  4B FF FA F1 */	bl dStage_setLayerTagName__FP9FuncTableii
/* 80026594  7F 43 D3 78 */	mr r3, r26
/* 80026598  7F 64 DB 78 */	mr r4, r27
/* 8002659C  3C A0 80 3A */	lis r5, l_layerFuncTable_5053@ha
/* 800265A0  38 A5 65 FC */	addi r5, r5, l_layerFuncTable_5053@l
/* 800265A4  38 C0 00 03 */	li r6, 3
/* 800265A8  4B FF FB 0D */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
lbl_800265AC:
/* 800265AC  3B FF 00 0C */	addi r31, r31, 0xc
/* 800265B0  3B DE 00 01 */	addi r30, r30, 1
lbl_800265B4:
/* 800265B4  7F C3 07 74 */	extsb r3, r30
/* 800265B8  80 1C 00 00 */	lwz r0, 0(r28)
/* 800265BC  7C 03 00 00 */	cmpw r3, r0
/* 800265C0  41 80 FF 2C */	blt lbl_800264EC
lbl_800265C4:
/* 800265C4  39 61 00 30 */	addi r11, r1, 0x30
/* 800265C8  48 33 BC 55 */	bl _restgpr_26
/* 800265CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800265D0  7C 08 03 A6 */	mtlr r0
/* 800265D4  38 21 00 30 */	addi r1, r1, 0x30
/* 800265D8  4E 80 00 20 */	blr 
