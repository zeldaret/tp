lbl_80C2541C:
/* 80C2541C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C25420  7C 08 02 A6 */	mflr r0
/* 80C25424  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C25428  39 61 00 20 */	addi r11, r1, 0x20
/* 80C2542C  4B 73 CD AC */	b _savegpr_28
/* 80C25430  7C 7D 1B 78 */	mr r29, r3
/* 80C25434  3C 60 80 C2 */	lis r3, lit_3703@ha
/* 80C25438  3B 83 5D 64 */	addi r28, r3, lit_3703@l
/* 80C2543C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C25440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C25444  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80C25448  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C2544C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C25450  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C25454  A0 84 02 68 */	lhz r4, 0x268(r4)
/* 80C25458  4B 40 F5 64 */	b isEventBit__11dSv_event_cCFUs
/* 80C2545C  2C 03 00 00 */	cmpwi r3, 0
/* 80C25460  41 82 01 60 */	beq lbl_80C255C0
/* 80C25464  3B C0 00 00 */	li r30, 0
/* 80C25468  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C2546C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C25470  4B 72 1F 2C */	b PSVECSquareDistance
/* 80C25474  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80C25478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2547C  40 81 00 58 */	ble lbl_80C254D4
/* 80C25480  FC 00 08 34 */	frsqrte f0, f1
/* 80C25484  C8 9C 00 18 */	lfd f4, 0x18(r28)
/* 80C25488  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2548C  C8 7C 00 20 */	lfd f3, 0x20(r28)
/* 80C25490  FC 00 00 32 */	fmul f0, f0, f0
/* 80C25494  FC 01 00 32 */	fmul f0, f1, f0
/* 80C25498  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2549C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C254A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C254A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C254A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C254AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C254B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C254B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C254B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C254BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C254C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C254C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C254C8  FC 21 00 32 */	fmul f1, f1, f0
/* 80C254CC  FC 20 08 18 */	frsp f1, f1
/* 80C254D0  48 00 00 88 */	b lbl_80C25558
lbl_80C254D4:
/* 80C254D4  C8 1C 00 28 */	lfd f0, 0x28(r28)
/* 80C254D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C254DC  40 80 00 10 */	bge lbl_80C254EC
/* 80C254E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C254E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C254E8  48 00 00 70 */	b lbl_80C25558
lbl_80C254EC:
/* 80C254EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C254F0  80 81 00 08 */	lwz r4, 8(r1)
/* 80C254F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C254F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C254FC  7C 03 00 00 */	cmpw r3, r0
/* 80C25500  41 82 00 14 */	beq lbl_80C25514
/* 80C25504  40 80 00 40 */	bge lbl_80C25544
/* 80C25508  2C 03 00 00 */	cmpwi r3, 0
/* 80C2550C  41 82 00 20 */	beq lbl_80C2552C
/* 80C25510  48 00 00 34 */	b lbl_80C25544
lbl_80C25514:
/* 80C25514  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C25518  41 82 00 0C */	beq lbl_80C25524
/* 80C2551C  38 00 00 01 */	li r0, 1
/* 80C25520  48 00 00 28 */	b lbl_80C25548
lbl_80C25524:
/* 80C25524  38 00 00 02 */	li r0, 2
/* 80C25528  48 00 00 20 */	b lbl_80C25548
lbl_80C2552C:
/* 80C2552C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C25530  41 82 00 0C */	beq lbl_80C2553C
/* 80C25534  38 00 00 05 */	li r0, 5
/* 80C25538  48 00 00 10 */	b lbl_80C25548
lbl_80C2553C:
/* 80C2553C  38 00 00 03 */	li r0, 3
/* 80C25540  48 00 00 08 */	b lbl_80C25548
lbl_80C25544:
/* 80C25544  38 00 00 04 */	li r0, 4
lbl_80C25548:
/* 80C25548  2C 00 00 01 */	cmpwi r0, 1
/* 80C2554C  40 82 00 0C */	bne lbl_80C25558
/* 80C25550  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C25554  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C25558:
/* 80C25558  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80C2555C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C25560  40 80 00 20 */	bge lbl_80C25580
/* 80C25564  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80C25568  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C2556C  40 82 00 10 */	bne lbl_80C2557C
/* 80C25570  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80C25574  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C25578  41 82 00 08 */	beq lbl_80C25580
lbl_80C2557C:
/* 80C2557C  3B C0 00 01 */	li r30, 1
lbl_80C25580:
/* 80C25580  38 7D 07 C8 */	addi r3, r29, 0x7c8
/* 80C25584  4B 45 EE DC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C25588  28 03 00 00 */	cmplwi r3, 0
/* 80C2558C  41 82 00 24 */	beq lbl_80C255B0
/* 80C25590  38 7D 07 C8 */	addi r3, r29, 0x7c8
/* 80C25594  4B 45 EF 64 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C25598  28 03 00 00 */	cmplwi r3, 0
/* 80C2559C  41 82 00 14 */	beq lbl_80C255B0
/* 80C255A0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C255A4  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80C255A8  41 82 00 08 */	beq lbl_80C255B0
/* 80C255AC  3B C0 00 01 */	li r30, 1
lbl_80C255B0:
/* 80C255B0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80C255B4  41 82 00 0C */	beq lbl_80C255C0
/* 80C255B8  38 00 00 01 */	li r0, 1
/* 80C255BC  98 1D 09 29 */	stb r0, 0x929(r29)
lbl_80C255C0:
/* 80C255C0  88 1D 09 60 */	lbz r0, 0x960(r29)
/* 80C255C4  28 00 00 00 */	cmplwi r0, 0
/* 80C255C8  41 82 00 14 */	beq lbl_80C255DC
/* 80C255CC  38 00 00 00 */	li r0, 0
/* 80C255D0  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80C255D4  7F A3 EB 78 */	mr r3, r29
/* 80C255D8  4B FF F5 ED */	bl setAnmPos__14daObjIceLeaf_cFv
lbl_80C255DC:
/* 80C255DC  38 7D 08 EC */	addi r3, r29, 0x8ec
/* 80C255E0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C255E4  4B 64 9B F8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C255E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C255EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C255F0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C255F4  38 9D 07 C8 */	addi r4, r29, 0x7c8
/* 80C255F8  4B 63 F5 B0 */	b Set__4cCcSFP8cCcD_Obj
/* 80C255FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C25600  4B 73 CC 24 */	b _restgpr_28
/* 80C25604  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C25608  7C 08 03 A6 */	mtlr r0
/* 80C2560C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C25610  4E 80 00 20 */	blr 
