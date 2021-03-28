lbl_8059F0D8:
/* 8059F0D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059F0DC  7C 08 02 A6 */	mflr r0
/* 8059F0E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059F0E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8059F0E8  4B DC 30 F4 */	b _savegpr_29
/* 8059F0EC  7C 7F 1B 78 */	mr r31, r3
/* 8059F0F0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8059F0F4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8059F0F8  40 82 00 F8 */	bne lbl_8059F1F0
/* 8059F0FC  28 1F 00 00 */	cmplwi r31, 0
/* 8059F100  41 82 00 E4 */	beq lbl_8059F1E4
/* 8059F104  7F FE FB 78 */	mr r30, r31
/* 8059F108  4B A7 9A 5C */	b __ct__10fopAc_ac_cFv
/* 8059F10C  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha
/* 8059F110  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l
/* 8059F114  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8059F118  3B BE 05 8C */	addi r29, r30, 0x58c
/* 8059F11C  7F A3 EB 78 */	mr r3, r29
/* 8059F120  4B AD 6F 80 */	b __ct__9dBgS_AcchFv
/* 8059F124  3C 60 80 5A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8059F128  38 63 F5 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8059F12C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8059F130  38 03 00 0C */	addi r0, r3, 0xc
/* 8059F134  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8059F138  38 03 00 18 */	addi r0, r3, 0x18
/* 8059F13C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8059F140  38 7D 00 14 */	addi r3, r29, 0x14
/* 8059F144  4B AD 9D 24 */	b SetObj__16dBgS_PolyPassChkFv
/* 8059F148  38 7E 07 64 */	addi r3, r30, 0x764
/* 8059F14C  4B AD 6D 60 */	b __ct__12dBgS_AcchCirFv
/* 8059F150  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8059F154  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8059F158  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 8059F15C  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 8059F160  4B AE 46 00 */	b __ct__10dCcD_GSttsFv
/* 8059F164  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8059F168  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8059F16C  90 7E 07 BC */	stw r3, 0x7bc(r30)
/* 8059F170  38 03 00 20 */	addi r0, r3, 0x20
/* 8059F174  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 8059F178  3B BE 07 E0 */	addi r29, r30, 0x7e0
/* 8059F17C  7F A3 EB 78 */	mr r3, r29
/* 8059F180  4B AE 48 A8 */	b __ct__12dCcD_GObjInfFv
/* 8059F184  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8059F188  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8059F18C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8059F190  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 8059F194  38 03 F4 F8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8059F198  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8059F19C  3C 60 80 5A */	lis r3, __vt__8cM3dGCyl@ha
/* 8059F1A0  38 03 F4 EC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8059F1A4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8059F1A8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8059F1AC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8059F1B0  90 7D 01 20 */	stw r3, 0x120(r29)
/* 8059F1B4  38 03 00 58 */	addi r0, r3, 0x58
/* 8059F1B8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8059F1BC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8059F1C0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8059F1C4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8059F1C8  38 03 00 2C */	addi r0, r3, 0x2c
/* 8059F1CC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8059F1D0  38 03 00 84 */	addi r0, r3, 0x84
/* 8059F1D4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8059F1D8  3C 60 80 5A */	lis r3, __vt__12daShopItem_c@ha
/* 8059F1DC  38 03 F5 28 */	addi r0, r3, __vt__12daShopItem_c@l
/* 8059F1E0  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_8059F1E4:
/* 8059F1E4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8059F1E8  60 00 00 08 */	ori r0, r0, 8
/* 8059F1EC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8059F1F0:
/* 8059F1F0  38 00 00 00 */	li r0, 0
/* 8059F1F4  B0 1F 09 60 */	sth r0, 0x960(r31)
/* 8059F1F8  B0 1F 09 62 */	sth r0, 0x962(r31)
/* 8059F1FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059F200  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 8059F204  7F E3 FB 78 */	mr r3, r31
/* 8059F208  4B FF F7 B1 */	bl getShopArcname__12daShopItem_cFv
/* 8059F20C  28 03 00 00 */	cmplwi r3, 0
/* 8059F210  40 82 00 0C */	bne lbl_8059F21C
/* 8059F214  38 00 00 FF */	li r0, 0xff
/* 8059F218  98 1F 09 2A */	stb r0, 0x92a(r31)
lbl_8059F21C:
/* 8059F21C  7F E3 FB 78 */	mr r3, r31
/* 8059F220  4B FF F7 99 */	bl getShopArcname__12daShopItem_cFv
/* 8059F224  7C 64 1B 78 */	mr r4, r3
/* 8059F228  38 7F 05 6C */	addi r3, r31, 0x56c
/* 8059F22C  4B A8 DC 90 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8059F230  7C 7E 1B 78 */	mr r30, r3
/* 8059F234  2C 1E 00 04 */	cmpwi r30, 4
/* 8059F238  41 82 00 08 */	beq lbl_8059F240
/* 8059F23C  48 00 00 3C */	b lbl_8059F278
lbl_8059F240:
/* 8059F240  40 82 00 38 */	bne lbl_8059F278
/* 8059F244  7F E3 FB 78 */	mr r3, r31
/* 8059F248  4B FF F9 BD */	bl getHeapSize__12daShopItem_cFv
/* 8059F24C  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8059F250  7F E3 FB 78 */	mr r3, r31
/* 8059F254  3C 80 80 03 */	lis r4, CheckShopItemCreateHeap__FP10fopAc_ac_c@ha
/* 8059F258  38 84 7C 24 */	addi r4, r4, CheckShopItemCreateHeap__FP10fopAc_ac_c@l
/* 8059F25C  4B A7 B2 54 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8059F260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059F264  40 82 00 0C */	bne lbl_8059F270
/* 8059F268  3B C0 00 05 */	li r30, 5
/* 8059F26C  48 00 00 0C */	b lbl_8059F278
lbl_8059F270:
/* 8059F270  7F E3 FB 78 */	mr r3, r31
/* 8059F274  4B FF F9 A9 */	bl CreateInit__12daShopItem_cFv
lbl_8059F278:
/* 8059F278  7F C3 F3 78 */	mr r3, r30
/* 8059F27C  39 61 00 20 */	addi r11, r1, 0x20
/* 8059F280  4B DC 2F A8 */	b _restgpr_29
/* 8059F284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059F288  7C 08 03 A6 */	mtlr r0
/* 8059F28C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059F290  4E 80 00 20 */	blr 
