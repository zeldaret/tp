lbl_804CCFE0:
/* 804CCFE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CCFE4  7C 08 02 A6 */	mflr r0
/* 804CCFE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CCFEC  39 61 00 20 */	addi r11, r1, 0x20
/* 804CCFF0  4B E9 51 E8 */	b _savegpr_28
/* 804CCFF4  7C 7F 1B 78 */	mr r31, r3
/* 804CCFF8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804CCFFC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804CD000  40 82 01 34 */	bne lbl_804CD134
/* 804CD004  7F E0 FB 79 */	or. r0, r31, r31
/* 804CD008  41 82 01 20 */	beq lbl_804CD128
/* 804CD00C  7C 1E 03 78 */	mr r30, r0
/* 804CD010  7C 1D 03 78 */	mr r29, r0
/* 804CD014  4B B4 BB 50 */	b __ct__10fopAc_ac_cFv
/* 804CD018  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha
/* 804CD01C  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l
/* 804CD020  90 1D 05 68 */	stw r0, 0x568(r29)
/* 804CD024  3B 9D 05 8C */	addi r28, r29, 0x58c
/* 804CD028  7F 83 E3 78 */	mr r3, r28
/* 804CD02C  4B BA 90 74 */	b __ct__9dBgS_AcchFv
/* 804CD030  3C 60 80 4D */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 804CD034  38 63 E6 2C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 804CD038  90 7C 00 10 */	stw r3, 0x10(r28)
/* 804CD03C  38 03 00 0C */	addi r0, r3, 0xc
/* 804CD040  90 1C 00 14 */	stw r0, 0x14(r28)
/* 804CD044  38 03 00 18 */	addi r0, r3, 0x18
/* 804CD048  90 1C 00 24 */	stw r0, 0x24(r28)
/* 804CD04C  38 7C 00 14 */	addi r3, r28, 0x14
/* 804CD050  4B BA BE 18 */	b SetObj__16dBgS_PolyPassChkFv
/* 804CD054  38 7D 07 64 */	addi r3, r29, 0x764
/* 804CD058  4B BA 8E 54 */	b __ct__12dBgS_AcchCirFv
/* 804CD05C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804CD060  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804CD064  90 1D 07 BC */	stw r0, 0x7bc(r29)
/* 804CD068  38 7D 07 C0 */	addi r3, r29, 0x7c0
/* 804CD06C  4B BB 66 F4 */	b __ct__10dCcD_GSttsFv
/* 804CD070  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804CD074  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804CD078  90 7D 07 BC */	stw r3, 0x7bc(r29)
/* 804CD07C  38 03 00 20 */	addi r0, r3, 0x20
/* 804CD080  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 804CD084  3B 9D 07 E0 */	addi r28, r29, 0x7e0
/* 804CD088  7F 83 E3 78 */	mr r3, r28
/* 804CD08C  4B BB 69 9C */	b __ct__12dCcD_GObjInfFv
/* 804CD090  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804CD094  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804CD098  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804CD09C  3C 60 80 4D */	lis r3, __vt__8cM3dGAab@ha
/* 804CD0A0  38 03 E6 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 804CD0A4  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 804CD0A8  3C 60 80 4D */	lis r3, __vt__8cM3dGCyl@ha
/* 804CD0AC  38 03 E6 14 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 804CD0B0  90 1C 01 38 */	stw r0, 0x138(r28)
/* 804CD0B4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 804CD0B8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 804CD0BC  90 7C 01 20 */	stw r3, 0x120(r28)
/* 804CD0C0  38 03 00 58 */	addi r0, r3, 0x58
/* 804CD0C4  90 1C 01 38 */	stw r0, 0x138(r28)
/* 804CD0C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 804CD0CC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 804CD0D0  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 804CD0D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 804CD0D8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804CD0DC  38 03 00 84 */	addi r0, r3, 0x84
/* 804CD0E0  90 1C 01 38 */	stw r0, 0x138(r28)
/* 804CD0E4  3C 60 80 4D */	lis r3, __vt__11daObjLife_c@ha
/* 804CD0E8  38 03 E6 50 */	addi r0, r3, __vt__11daObjLife_c@l
/* 804CD0EC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 804CD0F0  38 7E 09 74 */	addi r3, r30, 0x974
/* 804CD0F4  38 80 00 00 */	li r4, 0
/* 804CD0F8  38 A0 00 00 */	li r5, 0
/* 804CD0FC  4B B7 C4 84 */	b __ct__19dPa_followEcallBackFUcUc
/* 804CD100  38 7E 09 88 */	addi r3, r30, 0x988
/* 804CD104  38 80 00 00 */	li r4, 0
/* 804CD108  38 A0 00 00 */	li r5, 0
/* 804CD10C  4B B7 C4 74 */	b __ct__19dPa_followEcallBackFUcUc
/* 804CD110  38 7E 09 9C */	addi r3, r30, 0x99c
/* 804CD114  38 80 00 00 */	li r4, 0
/* 804CD118  38 A0 00 00 */	li r5, 0
/* 804CD11C  4B B7 C4 64 */	b __ct__19dPa_followEcallBackFUcUc
/* 804CD120  38 7E 09 B0 */	addi r3, r30, 0x9b0
/* 804CD124  4B DF 17 20 */	b __ct__16Z2SoundObjSimpleFv
lbl_804CD128:
/* 804CD128  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804CD12C  60 00 00 08 */	ori r0, r0, 8
/* 804CD130  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804CD134:
/* 804CD134  88 1F 09 37 */	lbz r0, 0x937(r31)
/* 804CD138  28 00 00 00 */	cmplwi r0, 0
/* 804CD13C  40 82 00 38 */	bne lbl_804CD174
/* 804CD140  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 804CD144  B0 1F 09 38 */	sth r0, 0x938(r31)
/* 804CD148  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 804CD14C  B0 1F 09 3A */	sth r0, 0x93a(r31)
/* 804CD150  38 00 00 00 */	li r0, 0
/* 804CD154  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 804CD158  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 804CD15C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 804CD160  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 804CD164  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 804CD168  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 804CD16C  38 00 00 01 */	li r0, 1
/* 804CD170  98 1F 09 37 */	stb r0, 0x937(r31)
lbl_804CD174:
/* 804CD174  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804CD178  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 804CD17C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CD180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CD184  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804CD188  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 804CD18C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804CD190  7C 05 07 74 */	extsb r5, r0
/* 804CD194  4B B6 83 FC */	b isItem__10dSv_info_cCFii
/* 804CD198  2C 03 00 00 */	cmpwi r3, 0
/* 804CD19C  41 82 00 0C */	beq lbl_804CD1A8
/* 804CD1A0  38 60 00 05 */	li r3, 5
/* 804CD1A4  48 00 00 9C */	b lbl_804CD240
lbl_804CD1A8:
/* 804CD1A8  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804CD1AC  28 00 00 22 */	cmplwi r0, 0x22
/* 804CD1B0  40 82 00 28 */	bne lbl_804CD1D8
/* 804CD1B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CD1B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CD1BC  38 63 09 58 */	addi r3, r3, 0x958
/* 804CD1C0  38 80 00 04 */	li r4, 4
/* 804CD1C4  4B B6 77 70 */	b isDungeonItem__12dSv_memBit_cCFi
/* 804CD1C8  2C 03 00 00 */	cmpwi r3, 0
/* 804CD1CC  41 82 00 0C */	beq lbl_804CD1D8
/* 804CD1D0  38 60 00 05 */	li r3, 5
/* 804CD1D4  48 00 00 6C */	b lbl_804CD240
lbl_804CD1D8:
/* 804CD1D8  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804CD1DC  54 00 20 36 */	slwi r0, r0, 4
/* 804CD1E0  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha
/* 804CD1E4  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l
/* 804CD1E8  7C 83 00 2E */	lwzx r4, r3, r0
/* 804CD1EC  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804CD1F0  4B B5 FC CC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804CD1F4  7C 7E 1B 78 */	mr r30, r3
/* 804CD1F8  2C 1E 00 04 */	cmpwi r30, 4
/* 804CD1FC  40 82 00 40 */	bne lbl_804CD23C
/* 804CD200  7F E3 FB 78 */	mr r3, r31
/* 804CD204  3C 80 80 03 */	lis r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@ha
/* 804CD208  38 84 7B 78 */	addi r4, r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@l
/* 804CD20C  38 A0 40 00 */	li r5, 0x4000
/* 804CD210  4B B4 D2 A0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804CD214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CD218  40 82 00 0C */	bne lbl_804CD224
/* 804CD21C  38 60 00 05 */	li r3, 5
/* 804CD220  48 00 00 20 */	b lbl_804CD240
lbl_804CD224:
/* 804CD224  7F E3 FB 78 */	mr r3, r31
/* 804CD228  4B FF FA 45 */	bl Create__11daObjLife_cFv
/* 804CD22C  2C 03 00 00 */	cmpwi r3, 0
/* 804CD230  40 82 00 0C */	bne lbl_804CD23C
/* 804CD234  38 60 00 05 */	li r3, 5
/* 804CD238  48 00 00 08 */	b lbl_804CD240
lbl_804CD23C:
/* 804CD23C  7F C3 F3 78 */	mr r3, r30
lbl_804CD240:
/* 804CD240  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD244  4B E9 4F E0 */	b _restgpr_28
/* 804CD248  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CD24C  7C 08 03 A6 */	mtlr r0
/* 804CD250  38 21 00 20 */	addi r1, r1, 0x20
/* 804CD254  4E 80 00 20 */	blr 
