lbl_80C98818:
/* 80C98818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9881C  7C 08 02 A6 */	mflr r0
/* 80C98820  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C98824  39 61 00 20 */	addi r11, r1, 0x20
/* 80C98828  4B 6C 99 B1 */	bl _savegpr_28
/* 80C9882C  7C 7D 1B 78 */	mr r29, r3
/* 80C98830  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C98834  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C98838  40 82 00 40 */	bne lbl_80C98878
/* 80C9883C  7F A0 EB 79 */	or. r0, r29, r29
/* 80C98840  41 82 00 2C */	beq lbl_80C9886C
/* 80C98844  7C 1C 03 78 */	mr r28, r0
/* 80C98848  4B 38 03 1D */	bl __ct__10fopAc_ac_cFv
/* 80C9884C  38 7C 05 7C */	addi r3, r28, 0x57c
/* 80C98850  3C 80 80 08 */	lis r4, __ct__4dBgWFv@ha /* 0x8007B970@ha */
/* 80C98854  38 84 B9 70 */	addi r4, r4, __ct__4dBgWFv@l /* 0x8007B970@l */
/* 80C98858  3C A0 80 CA */	lis r5, __dt__4dBgWFv@ha /* 0x80C987B8@ha */
/* 80C9885C  38 A5 87 B8 */	addi r5, r5, __dt__4dBgWFv@l /* 0x80C987B8@l */
/* 80C98860  38 C0 00 C0 */	li r6, 0xc0
/* 80C98864  38 E0 00 02 */	li r7, 2
/* 80C98868  4B 6C 94 F9 */	bl __construct_array
lbl_80C9886C:
/* 80C9886C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80C98870  60 00 00 08 */	ori r0, r0, 8
/* 80C98874  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80C98878:
/* 80C98878  38 7D 05 70 */	addi r3, r29, 0x570
/* 80C9887C  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80C989F0@ha */
/* 80C98880  38 84 89 F0 */	addi r4, r4, l_arcName@l /* 0x80C989F0@l */
/* 80C98884  80 84 00 00 */	lwz r4, 0(r4)
/* 80C98888  4B 39 46 35 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C9888C  7C 7F 1B 78 */	mr r31, r3
/* 80C98890  2C 1F 00 04 */	cmpwi r31, 4
/* 80C98894  40 82 01 20 */	bne lbl_80C989B4
/* 80C98898  7F A3 EB 78 */	mr r3, r29
/* 80C9889C  3C 80 80 CA */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80C981D8@ha */
/* 80C988A0  38 84 81 D8 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80C981D8@l */
/* 80C988A4  38 A0 1A D0 */	li r5, 0x1ad0
/* 80C988A8  4B 38 1C 09 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C988AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C988B0  40 82 00 0C */	bne lbl_80C988BC
/* 80C988B4  3B E0 00 05 */	li r31, 5
/* 80C988B8  48 00 00 FC */	b lbl_80C989B4
lbl_80C988BC:
/* 80C988BC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80C988C0  80 83 00 04 */	lwz r4, 4(r3)
/* 80C988C4  7F A3 EB 78 */	mr r3, r29
/* 80C988C8  4B 38 1C B1 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C988CC  3C 60 80 CA */	lis r3, lit_3730@ha /* 0x80C989DC@ha */
/* 80C988D0  C0 03 89 DC */	lfs f0, lit_3730@l(r3)  /* 0x80C989DC@l */
/* 80C988D4  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 80C988D8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C988DC  38 60 00 00 */	li r3, 0
/* 80C988E0  90 7D 06 2C */	stw r3, 0x62c(r29)
/* 80C988E4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C988E8  98 1D 05 85 */	stb r0, 0x585(r29)
/* 80C988EC  90 7D 06 EC */	stw r3, 0x6ec(r29)
/* 80C988F0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C988F4  98 1D 06 45 */	stb r0, 0x645(r29)
/* 80C988F8  3B C0 00 01 */	li r30, 1
/* 80C988FC  7F DC F3 78 */	mr r28, r30
/* 80C98900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C98904  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C98908  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C9890C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C98910  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C98914  7C 05 07 74 */	extsb r5, r0
/* 80C98918  4B 39 CA 49 */	bl isSwitch__10dSv_info_cCFii
/* 80C9891C  2C 03 00 00 */	cmpwi r3, 0
/* 80C98920  40 82 00 2C */	bne lbl_80C9894C
/* 80C98924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C98928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9892C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C98930  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C98934  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C98938  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C9893C  4B 39 C0 81 */	bl isEventBit__11dSv_event_cCFUs
/* 80C98940  2C 03 00 00 */	cmpwi r3, 0
/* 80C98944  40 82 00 08 */	bne lbl_80C9894C
/* 80C98948  3B 80 00 00 */	li r28, 0
lbl_80C9894C:
/* 80C9894C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C98950  40 82 00 2C */	bne lbl_80C9897C
/* 80C98954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C98958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9895C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C98960  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C98964  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C98968  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C9896C  4B 39 C0 51 */	bl isEventBit__11dSv_event_cCFUs
/* 80C98970  2C 03 00 00 */	cmpwi r3, 0
/* 80C98974  40 82 00 08 */	bne lbl_80C9897C
/* 80C98978  3B C0 00 00 */	li r30, 0
lbl_80C9897C:
/* 80C9897C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80C98980  41 82 00 0C */	beq lbl_80C9898C
/* 80C98984  38 1D 06 3C */	addi r0, r29, 0x63c
/* 80C98988  48 00 00 08 */	b lbl_80C98990
lbl_80C9898C:
/* 80C9898C  38 1D 05 7C */	addi r0, r29, 0x57c
lbl_80C98990:
/* 80C98990  90 1D 05 78 */	stw r0, 0x578(r29)
/* 80C98994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C98998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9899C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C989A0  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80C989A4  7F A5 EB 78 */	mr r5, r29
/* 80C989A8  4B 3D C0 61 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C989AC  7F A3 EB 78 */	mr r3, r29
/* 80C989B0  4B FF FB 59 */	bl initBaseMtx__17daObjMirrorSand_cFv
lbl_80C989B4:
/* 80C989B4  7F E3 FB 78 */	mr r3, r31
/* 80C989B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C989BC  4B 6C 98 69 */	bl _restgpr_28
/* 80C989C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C989C4  7C 08 03 A6 */	mtlr r0
/* 80C989C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C989CC  4E 80 00 20 */	blr 
