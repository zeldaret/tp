lbl_80D3AFC0:
/* 80D3AFC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3AFC4  7C 08 02 A6 */	mflr r0
/* 80D3AFC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3AFCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3AFD0  4B 62 72 08 */	b _savegpr_28
/* 80D3AFD4  7C 7C 1B 78 */	mr r28, r3
/* 80D3AFD8  3C 60 80 D4 */	lis r3, l_cyl_src@ha
/* 80D3AFDC  3B C3 B6 38 */	addi r30, r3, l_cyl_src@l
/* 80D3AFE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3AFE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3AFE8  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80D3AFEC  7F A3 EB 78 */	mr r3, r29
/* 80D3AFF0  80 9C 09 34 */	lwz r4, 0x934(r28)
/* 80D3AFF4  3C A0 80 D4 */	lis r5, action_table@ha
/* 80D3AFF8  38 A5 B7 44 */	addi r5, r5, action_table@l
/* 80D3AFFC  38 C0 00 04 */	li r6, 4
/* 80D3B000  38 E0 00 00 */	li r7, 0
/* 80D3B004  39 00 00 00 */	li r8, 0
/* 80D3B008  4B 30 CE 08 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80D3B00C  7C 7F 1B 78 */	mr r31, r3
/* 80D3B010  7F A3 EB 78 */	mr r3, r29
/* 80D3B014  80 9C 09 34 */	lwz r4, 0x934(r28)
/* 80D3B018  4B 30 CD 34 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D3B01C  2C 03 00 00 */	cmpwi r3, 0
/* 80D3B020  41 82 00 B0 */	beq lbl_80D3B0D0
/* 80D3B024  2C 1F 00 02 */	cmpwi r31, 2
/* 80D3B028  41 82 00 9C */	beq lbl_80D3B0C4
/* 80D3B02C  40 80 00 A4 */	bge lbl_80D3B0D0
/* 80D3B030  2C 1F 00 00 */	cmpwi r31, 0
/* 80D3B034  41 82 00 10 */	beq lbl_80D3B044
/* 80D3B038  40 80 00 48 */	bge lbl_80D3B080
/* 80D3B03C  48 00 00 94 */	b lbl_80D3B0D0
/* 80D3B040  48 00 00 90 */	b lbl_80D3B0D0
lbl_80D3B044:
/* 80D3B044  7F A3 EB 78 */	mr r3, r29
/* 80D3B048  80 9C 09 34 */	lwz r4, 0x934(r28)
/* 80D3B04C  3C A0 80 D4 */	lis r5, struct_80D3B6D4+0x0@ha
/* 80D3B050  38 A5 B6 D4 */	addi r5, r5, struct_80D3B6D4+0x0@l
/* 80D3B054  38 A5 00 3F */	addi r5, r5, 0x3f
/* 80D3B058  38 C0 00 03 */	li r6, 3
/* 80D3B05C  4B 30 D0 90 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D3B060  28 03 00 00 */	cmplwi r3, 0
/* 80D3B064  40 82 00 10 */	bne lbl_80D3B074
/* 80D3B068  38 00 00 01 */	li r0, 1
/* 80D3B06C  98 1C 09 3B */	stb r0, 0x93b(r28)
/* 80D3B070  48 00 00 60 */	b lbl_80D3B0D0
lbl_80D3B074:
/* 80D3B074  80 03 00 00 */	lwz r0, 0(r3)
/* 80D3B078  98 1C 09 3B */	stb r0, 0x93b(r28)
/* 80D3B07C  48 00 00 54 */	b lbl_80D3B0D0
lbl_80D3B080:
/* 80D3B080  7F 83 E3 78 */	mr r3, r28
/* 80D3B084  48 00 00 E1 */	bl effectSet__14daObjWStatue_cFv
/* 80D3B088  7F 83 E3 78 */	mr r3, r28
/* 80D3B08C  4B 2F C9 E8 */	b show__12daItemBase_cFv
/* 80D3B090  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80D3B094  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80D3B098  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80D3B09C  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80D3B0A0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80D3B0A4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80D3B0A8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80D3B0AC  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80D3B0B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D3B0B4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80D3B0B8  38 00 00 50 */	li r0, 0x50
/* 80D3B0BC  98 1C 09 3B */	stb r0, 0x93b(r28)
/* 80D3B0C0  48 00 00 10 */	b lbl_80D3B0D0
lbl_80D3B0C4:
/* 80D3B0C4  7F A3 EB 78 */	mr r3, r29
/* 80D3B0C8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80D3B0CC  4B 30 D2 F8 */	b setGoal__16dEvent_manager_cFP4cXyz
lbl_80D3B0D0:
/* 80D3B0D0  2C 1F 00 02 */	cmpwi r31, 2
/* 80D3B0D4  41 82 00 6C */	beq lbl_80D3B140
/* 80D3B0D8  40 80 00 14 */	bge lbl_80D3B0EC
/* 80D3B0DC  2C 1F 00 00 */	cmpwi r31, 0
/* 80D3B0E0  41 82 00 18 */	beq lbl_80D3B0F8
/* 80D3B0E4  40 80 00 34 */	bge lbl_80D3B118
/* 80D3B0E8  48 00 00 58 */	b lbl_80D3B140
lbl_80D3B0EC:
/* 80D3B0EC  2C 1F 00 04 */	cmpwi r31, 4
/* 80D3B0F0  40 80 00 50 */	bge lbl_80D3B140
/* 80D3B0F4  48 00 00 58 */	b lbl_80D3B14C
lbl_80D3B0F8:
/* 80D3B0F8  38 7C 09 3B */	addi r3, r28, 0x93b
/* 80D3B0FC  48 00 05 09 */	bl func_80D3B604
/* 80D3B100  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3B104  40 82 00 48 */	bne lbl_80D3B14C
/* 80D3B108  7F A3 EB 78 */	mr r3, r29
/* 80D3B10C  80 9C 09 34 */	lwz r4, 0x934(r28)
/* 80D3B110  4B 30 D0 6C */	b cutEnd__16dEvent_manager_cFi
/* 80D3B114  48 00 00 38 */	b lbl_80D3B14C
lbl_80D3B118:
/* 80D3B118  38 7C 09 3B */	addi r3, r28, 0x93b
/* 80D3B11C  48 00 04 E9 */	bl func_80D3B604
/* 80D3B120  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3B124  40 82 00 28 */	bne lbl_80D3B14C
/* 80D3B128  7F 83 E3 78 */	mr r3, r28
/* 80D3B12C  48 00 01 25 */	bl effectStop__14daObjWStatue_cFv
/* 80D3B130  7F A3 EB 78 */	mr r3, r29
/* 80D3B134  80 9C 09 34 */	lwz r4, 0x934(r28)
/* 80D3B138  4B 30 D0 44 */	b cutEnd__16dEvent_manager_cFi
/* 80D3B13C  48 00 00 10 */	b lbl_80D3B14C
lbl_80D3B140:
/* 80D3B140  7F A3 EB 78 */	mr r3, r29
/* 80D3B144  80 9C 09 34 */	lwz r4, 0x934(r28)
/* 80D3B148  4B 30 D0 34 */	b cutEnd__16dEvent_manager_cFi
lbl_80D3B14C:
/* 80D3B14C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3B150  4B 62 70 D4 */	b _restgpr_28
/* 80D3B154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3B158  7C 08 03 A6 */	mtlr r0
/* 80D3B15C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3B160  4E 80 00 20 */	blr 
