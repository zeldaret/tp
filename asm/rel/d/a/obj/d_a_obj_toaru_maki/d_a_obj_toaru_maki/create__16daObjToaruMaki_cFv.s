lbl_80D132B4:
/* 80D132B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D132B8  7C 08 02 A6 */	mflr r0
/* 80D132BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D132C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D132C4  4B 64 EF 14 */	b _savegpr_28
/* 80D132C8  7C 7F 1B 78 */	mr r31, r3
/* 80D132CC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D132D0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D132D4  40 82 00 1C */	bne lbl_80D132F0
/* 80D132D8  28 1F 00 00 */	cmplwi r31, 0
/* 80D132DC  41 82 00 08 */	beq lbl_80D132E4
/* 80D132E0  4B FF FD B9 */	bl __ct__16daObjToaruMaki_cFv
lbl_80D132E4:
/* 80D132E4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D132E8  60 00 00 08 */	ori r0, r0, 8
/* 80D132EC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D132F0:
/* 80D132F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D132F4  54 1E 07 3E */	clrlwi r30, r0, 0x1c
/* 80D132F8  7F E3 FB 78 */	mr r3, r31
/* 80D132FC  28 1F 00 00 */	cmplwi r31, 0
/* 80D13300  41 82 00 08 */	beq lbl_80D13308
/* 80D13304  38 7F 05 68 */	addi r3, r31, 0x568
lbl_80D13308:
/* 80D13308  57 DD 10 3A */	slwi r29, r30, 2
/* 80D1330C  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D13310  38 84 36 24 */	addi r4, r4, l_arcName@l
/* 80D13314  7C 84 E8 2E */	lwzx r4, r4, r29
/* 80D13318  4B 31 9B A4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D1331C  7C 7C 1B 78 */	mr r28, r3
/* 80D13320  2C 1C 00 04 */	cmpwi r28, 4
/* 80D13324  40 82 00 80 */	bne lbl_80D133A4
/* 80D13328  7F E3 FB 78 */	mr r3, r31
/* 80D1332C  3C 80 80 D1 */	lis r4, daObjToaruMaki_c_createHeap__FP10fopAc_ac_c@ha
/* 80D13330  38 84 30 78 */	addi r4, r4, daObjToaruMaki_c_createHeap__FP10fopAc_ac_c@l
/* 80D13334  3C A0 80 D1 */	lis r5, l_heapSize@ha
/* 80D13338  38 A5 36 0C */	addi r5, r5, l_heapSize@l
/* 80D1333C  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80D13340  4B 30 71 70 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D13344  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D13348  40 82 00 0C */	bne lbl_80D13354
/* 80D1334C  38 60 00 05 */	li r3, 5
/* 80D13350  48 00 00 58 */	b lbl_80D133A8
lbl_80D13354:
/* 80D13354  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D13358  80 63 00 04 */	lwz r3, 4(r3)
/* 80D1335C  4B 2F B7 24 */	b mDoExt_setupStageTexture__FP12J3DModelData
/* 80D13360  28 1E 00 00 */	cmplwi r30, 0
/* 80D13364  40 82 00 2C */	bne lbl_80D13390
/* 80D13368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1336C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D13370  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D13374  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D13378  7F E5 FB 78 */	mr r5, r31
/* 80D1337C  4B 36 16 8C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D13380  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D13384  41 82 00 0C */	beq lbl_80D13390
/* 80D13388  38 60 00 05 */	li r3, 5
/* 80D1338C  48 00 00 1C */	b lbl_80D133A8
lbl_80D13390:
/* 80D13390  7F E3 FB 78 */	mr r3, r31
/* 80D13394  48 00 00 A9 */	bl setModelMtx__16daObjToaruMaki_cFv
/* 80D13398  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D1339C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D133A0  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_80D133A4:
/* 80D133A4  7F 83 E3 78 */	mr r3, r28
lbl_80D133A8:
/* 80D133A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D133AC  4B 64 EE 78 */	b _restgpr_28
/* 80D133B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D133B4  7C 08 03 A6 */	mtlr r0
/* 80D133B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D133BC  4E 80 00 20 */	blr 
