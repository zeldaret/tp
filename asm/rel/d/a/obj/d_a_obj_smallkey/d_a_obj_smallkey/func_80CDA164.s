lbl_80CDA164:
/* 80CDA164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDA168  7C 08 02 A6 */	mflr r0
/* 80CDA16C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDA170  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDA174  4B 68 80 64 */	b _savegpr_28
/* 80CDA178  7C 7F 1B 78 */	mr r31, r3
/* 80CDA17C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CDA180  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CDA184  40 82 01 1C */	bne lbl_80CDA2A0
/* 80CDA188  7F E0 FB 79 */	or. r0, r31, r31
/* 80CDA18C  41 82 01 08 */	beq lbl_80CDA294
/* 80CDA190  7C 1E 03 78 */	mr r30, r0
/* 80CDA194  7C 1D 03 78 */	mr r29, r0
/* 80CDA198  4B 33 E9 CC */	b __ct__10fopAc_ac_cFv
/* 80CDA19C  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha
/* 80CDA1A0  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l
/* 80CDA1A4  90 1D 05 68 */	stw r0, 0x568(r29)
/* 80CDA1A8  3B 9D 05 8C */	addi r28, r29, 0x58c
/* 80CDA1AC  7F 83 E3 78 */	mr r3, r28
/* 80CDA1B0  4B 39 BE F0 */	b __ct__9dBgS_AcchFv
/* 80CDA1B4  3C 60 80 CE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CDA1B8  38 63 BA 38 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CDA1BC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80CDA1C0  38 03 00 0C */	addi r0, r3, 0xc
/* 80CDA1C4  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80CDA1C8  38 03 00 18 */	addi r0, r3, 0x18
/* 80CDA1CC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80CDA1D0  38 7C 00 14 */	addi r3, r28, 0x14
/* 80CDA1D4  4B 39 EC 94 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CDA1D8  38 7D 07 64 */	addi r3, r29, 0x764
/* 80CDA1DC  4B 39 BC D0 */	b __ct__12dBgS_AcchCirFv
/* 80CDA1E0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CDA1E4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CDA1E8  90 1D 07 BC */	stw r0, 0x7bc(r29)
/* 80CDA1EC  38 7D 07 C0 */	addi r3, r29, 0x7c0
/* 80CDA1F0  4B 3A 95 70 */	b __ct__10dCcD_GSttsFv
/* 80CDA1F4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CDA1F8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CDA1FC  90 7D 07 BC */	stw r3, 0x7bc(r29)
/* 80CDA200  38 03 00 20 */	addi r0, r3, 0x20
/* 80CDA204  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 80CDA208  3B 9D 07 E0 */	addi r28, r29, 0x7e0
/* 80CDA20C  7F 83 E3 78 */	mr r3, r28
/* 80CDA210  4B 3A 98 18 */	b __ct__12dCcD_GObjInfFv
/* 80CDA214  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CDA218  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CDA21C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CDA220  3C 60 80 CE */	lis r3, __vt__8cM3dGAab@ha
/* 80CDA224  38 03 BA 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CDA228  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80CDA22C  3C 60 80 CE */	lis r3, __vt__8cM3dGCyl@ha
/* 80CDA230  38 03 BA 20 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CDA234  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80CDA238  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CDA23C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CDA240  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80CDA244  38 03 00 58 */	addi r0, r3, 0x58
/* 80CDA248  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80CDA24C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CDA250  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CDA254  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80CDA258  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CDA25C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CDA260  38 03 00 84 */	addi r0, r3, 0x84
/* 80CDA264  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80CDA268  3C 60 80 CE */	lis r3, __vt__7daKey_c@ha
/* 80CDA26C  38 03 BA 5C */	addi r0, r3, __vt__7daKey_c@l
/* 80CDA270  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CDA274  38 7E 09 3C */	addi r3, r30, 0x93c
/* 80CDA278  3C 80 80 CE */	lis r4, __defctor__19dPa_followEcallBackFv@ha
/* 80CDA27C  38 84 A4 8C */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l
/* 80CDA280  3C A0 80 CE */	lis r5, __dt__19dPa_followEcallBackFv@ha
/* 80CDA284  38 A5 A4 04 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l
/* 80CDA288  38 C0 00 14 */	li r6, 0x14
/* 80CDA28C  38 E0 00 02 */	li r7, 2
/* 80CDA290  4B 68 7A D0 */	b __construct_array
lbl_80CDA294:
/* 80CDA294  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CDA298  60 00 00 08 */	ori r0, r0, 8
/* 80CDA29C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CDA2A0:
/* 80CDA2A0  88 1F 09 37 */	lbz r0, 0x937(r31)
/* 80CDA2A4  28 00 00 00 */	cmplwi r0, 0
/* 80CDA2A8  40 82 00 38 */	bne lbl_80CDA2E0
/* 80CDA2AC  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CDA2B0  B0 1F 09 38 */	sth r0, 0x938(r31)
/* 80CDA2B4  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CDA2B8  B0 1F 09 3A */	sth r0, 0x93a(r31)
/* 80CDA2BC  38 00 00 00 */	li r0, 0
/* 80CDA2C0  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80CDA2C4  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80CDA2C8  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CDA2CC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CDA2D0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CDA2D4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CDA2D8  38 00 00 01 */	li r0, 1
/* 80CDA2DC  98 1F 09 37 */	stb r0, 0x937(r31)
lbl_80CDA2E0:
/* 80CDA2E0  38 00 00 20 */	li r0, 0x20
/* 80CDA2E4  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 80CDA2E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDA2EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDA2F0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80CDA2F4  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CDA2F8  38 84 B8 90 */	addi r4, r4, stringBase0@l
/* 80CDA2FC  4B 68 E6 98 */	b strcmp
/* 80CDA300  2C 03 00 00 */	cmpwi r3, 0
/* 80CDA304  40 82 00 58 */	bne lbl_80CDA35C
/* 80CDA308  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDA30C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CDA310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDA314  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDA318  3B C3 09 58 */	addi r30, r3, 0x958
/* 80CDA31C  7F C3 F3 78 */	mr r3, r30
/* 80CDA320  4B 35 A4 C8 */	b isTbox__12dSv_memBit_cCFi
/* 80CDA324  2C 03 00 00 */	cmpwi r3, 0
/* 80CDA328  41 82 00 34 */	beq lbl_80CDA35C
/* 80CDA32C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDA330  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CDA334  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 80CDA338  88 04 09 74 */	lbz r0, 0x974(r4)
/* 80CDA33C  7C 00 00 D0 */	neg r0, r0
/* 80CDA340  7C 00 07 34 */	extsh r0, r0
/* 80CDA344  7C 03 02 14 */	add r0, r3, r0
/* 80CDA348  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 80CDA34C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDA350  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CDA354  7F C3 F3 78 */	mr r3, r30
/* 80CDA358  4B 35 A4 6C */	b offTbox__12dSv_memBit_cFi
lbl_80CDA35C:
/* 80CDA35C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDA360  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CDA364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDA368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDA36C  38 63 09 58 */	addi r3, r3, 0x958
/* 80CDA370  4B 35 A4 78 */	b isTbox__12dSv_memBit_cCFi
/* 80CDA374  2C 03 00 00 */	cmpwi r3, 0
/* 80CDA378  41 82 00 0C */	beq lbl_80CDA384
/* 80CDA37C  38 60 00 05 */	li r3, 5
/* 80CDA380  48 00 00 6C */	b lbl_80CDA3EC
lbl_80CDA384:
/* 80CDA384  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 80CDA388  54 00 20 36 */	slwi r0, r0, 4
/* 80CDA38C  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha
/* 80CDA390  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l
/* 80CDA394  7C 83 00 2E */	lwzx r4, r3, r0
/* 80CDA398  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80CDA39C  4B 35 2B 20 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CDA3A0  7C 7E 1B 78 */	mr r30, r3
/* 80CDA3A4  2C 1E 00 04 */	cmpwi r30, 4
/* 80CDA3A8  40 82 00 40 */	bne lbl_80CDA3E8
/* 80CDA3AC  7F E3 FB 78 */	mr r3, r31
/* 80CDA3B0  3C 80 80 03 */	lis r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@ha
/* 80CDA3B4  38 84 7B 78 */	addi r4, r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@l
/* 80CDA3B8  38 A0 08 40 */	li r5, 0x840
/* 80CDA3BC  4B 34 00 F4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CDA3C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDA3C4  40 82 00 0C */	bne lbl_80CDA3D0
/* 80CDA3C8  38 60 00 05 */	li r3, 5
/* 80CDA3CC  48 00 00 20 */	b lbl_80CDA3EC
lbl_80CDA3D0:
/* 80CDA3D0  7F E3 FB 78 */	mr r3, r31
/* 80CDA3D4  4B FF FC 09 */	bl Create__7daKey_cFv
/* 80CDA3D8  2C 03 00 00 */	cmpwi r3, 0
/* 80CDA3DC  40 82 00 0C */	bne lbl_80CDA3E8
/* 80CDA3E0  38 60 00 05 */	li r3, 5
/* 80CDA3E4  48 00 00 08 */	b lbl_80CDA3EC
lbl_80CDA3E8:
/* 80CDA3E8  7F C3 F3 78 */	mr r3, r30
lbl_80CDA3EC:
/* 80CDA3EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDA3F0  4B 68 7E 34 */	b _restgpr_28
/* 80CDA3F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDA3F8  7C 08 03 A6 */	mtlr r0
/* 80CDA3FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDA400  4E 80 00 20 */	blr 
