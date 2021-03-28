lbl_802597B8:
/* 802597B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802597BC  7C 08 02 A6 */	mflr r0
/* 802597C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802597C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802597C8  7C 7F 1B 78 */	mr r31, r3
/* 802597CC  48 00 04 31 */	bl offReset__9dScnPly_cFv
/* 802597D0  38 00 00 00 */	li r0, 0
/* 802597D4  98 0D 87 E8 */	stb r0, data_80450D68(r13)
/* 802597D8  38 00 FF FF */	li r0, -1
/* 802597DC  98 0D 80 70 */	stb r0, data_804505F0(r13)
/* 802597E0  4B DC 4D 79 */	bl fopOvlpM_IsPeek__Fv
/* 802597E4  2C 03 00 00 */	cmpwi r3, 0
/* 802597E8  40 82 00 48 */	bne lbl_80259830
/* 802597EC  88 0D 86 3A */	lbz r0, struct_80450BB8+0x2(r13)
/* 802597F0  28 00 00 00 */	cmplwi r0, 0
/* 802597F4  41 82 00 24 */	beq lbl_80259818
/* 802597F8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802597FC  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 80259800  48 06 0A 95 */	bl sceneBgmStart__10Z2SceneMgrFv
/* 80259804  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80259808  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 8025980C  48 06 09 15 */	bl load2ndDynamicWave__10Z2SceneMgrFv
/* 80259810  38 00 00 00 */	li r0, 0
/* 80259814  98 0D 86 3A */	stb r0, struct_80450BB8+0x2(r13)
lbl_80259818:
/* 80259818  7F E3 FB 78 */	mr r3, r31
/* 8025981C  4B FF FB E5 */	bl calcPauseTimer__9dScnPly_cFv
/* 80259820  7C 60 07 75 */	extsb. r0, r3
/* 80259824  41 82 00 0C */	beq lbl_80259830
/* 80259828  38 60 00 01 */	li r3, 1
/* 8025982C  48 00 00 3C */	b lbl_80259868
lbl_80259830:
/* 80259830  4B F4 F2 A9 */	bl dKy_itudemo_se__Fv
/* 80259834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025983C  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 80259840  28 00 00 00 */	cmplwi r0, 0
/* 80259844  40 82 00 20 */	bne lbl_80259864
/* 80259848  4B DE 05 5D */	bl update__7dDemo_cFv
/* 8025984C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259850  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80259854  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80259858  4B DE 93 65 */	bl Step__14dEvt_control_cFv
/* 8025985C  38 7F 56 B8 */	addi r3, r31, 0x56b8
/* 80259860  4B E1 90 C5 */	bl Run__12dAttention_cFv
lbl_80259864:
/* 80259864  38 60 00 01 */	li r3, 1
lbl_80259868:
/* 80259868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025986C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80259870  7C 08 03 A6 */	mtlr r0
/* 80259874  38 21 00 10 */	addi r1, r1, 0x10
/* 80259878  4E 80 00 20 */	blr 
