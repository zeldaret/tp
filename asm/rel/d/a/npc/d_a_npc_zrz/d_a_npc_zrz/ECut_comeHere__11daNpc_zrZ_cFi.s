lbl_80B97B78:
/* 80B97B78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B97B7C  7C 08 02 A6 */	mflr r0
/* 80B97B80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B97B84  39 61 00 30 */	addi r11, r1, 0x30
/* 80B97B88  4B 7C A6 44 */	b _savegpr_25
/* 80B97B8C  7C 7E 1B 78 */	mr r30, r3
/* 80B97B90  7C 99 23 78 */	mr r25, r4
/* 80B97B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B97B98  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B97B9C  3B 7D 4F F8 */	addi r27, r29, 0x4ff8
/* 80B97BA0  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80B97BA4  3B E0 00 00 */	li r31, 0
/* 80B97BA8  3B 40 FF FF */	li r26, -1
/* 80B97BAC  7F 63 DB 78 */	mr r3, r27
/* 80B97BB0  3C A0 80 BA */	lis r5, stringBase0@ha
/* 80B97BB4  38 A5 B2 20 */	addi r5, r5, stringBase0@l
/* 80B97BB8  38 A5 00 5A */	addi r5, r5, 0x5a
/* 80B97BBC  38 C0 00 03 */	li r6, 3
/* 80B97BC0  4B 4B 05 2C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B97BC4  28 03 00 00 */	cmplwi r3, 0
/* 80B97BC8  41 82 00 08 */	beq lbl_80B97BD0
/* 80B97BCC  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B97BD0:
/* 80B97BD0  7F 63 DB 78 */	mr r3, r27
/* 80B97BD4  7F 24 CB 78 */	mr r4, r25
/* 80B97BD8  4B 4B 01 74 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B97BDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B97BE0  41 82 00 98 */	beq lbl_80B97C78
/* 80B97BE4  2C 1A 00 01 */	cmpwi r26, 1
/* 80B97BE8  41 82 00 08 */	beq lbl_80B97BF0
/* 80B97BEC  48 00 00 8C */	b lbl_80B97C78
lbl_80B97BF0:
/* 80B97BF0  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B97BF4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B97BF8  4B 5B 8A C4 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B97BFC  7F C3 F3 78 */	mr r3, r30
/* 80B97C00  38 80 00 02 */	li r4, 2
/* 80B97C04  4B FF F2 79 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B97C08  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B97C0C  B0 01 00 08 */	sth r0, 8(r1)
/* 80B97C10  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B97C14  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80B97C18  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B97C1C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B97C20  7F C3 F3 78 */	mr r3, r30
/* 80B97C24  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B97C28  4B 48 2A E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B97C2C  3C 63 00 01 */	addis r3, r3, 1
/* 80B97C30  38 03 80 00 */	addi r0, r3, -32768
/* 80B97C34  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80B97C38  7F 83 E3 78 */	mr r3, r28
/* 80B97C3C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B97C40  38 A1 00 08 */	addi r5, r1, 8
/* 80B97C44  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B97C48  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80B97C4C  7D 89 03 A6 */	mtctr r12
/* 80B97C50  4E 80 04 21 */	bctrl 
/* 80B97C54  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80B97C58  7F C4 F3 78 */	mr r4, r30
/* 80B97C5C  4B 4A BA 30 */	b setPtT__14dEvt_control_cFPv
/* 80B97C60  7F C3 F3 78 */	mr r3, r30
/* 80B97C64  38 80 00 08 */	li r4, 8
/* 80B97C68  38 A0 00 00 */	li r5, 0
/* 80B97C6C  4B 5B C0 B0 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B97C70  38 00 00 01 */	li r0, 1
/* 80B97C74  98 1E 14 4D */	stb r0, 0x144d(r30)
lbl_80B97C78:
/* 80B97C78  2C 1A 00 01 */	cmpwi r26, 1
/* 80B97C7C  41 82 00 08 */	beq lbl_80B97C84
/* 80B97C80  48 00 00 DC */	b lbl_80B97D5C
lbl_80B97C84:
/* 80B97C84  3B 40 00 00 */	li r26, 0
/* 80B97C88  7F C3 F3 78 */	mr r3, r30
/* 80B97C8C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B97C90  4B 48 2A 80 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B97C94  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 80B97C98  7C 60 07 34 */	extsh r0, r3
/* 80B97C9C  7C 04 00 00 */	cmpw r4, r0
/* 80B97CA0  40 82 00 0C */	bne lbl_80B97CAC
/* 80B97CA4  3B 40 00 01 */	li r26, 1
/* 80B97CA8  48 00 00 7C */	b lbl_80B97D24
lbl_80B97CAC:
/* 80B97CAC  7F C3 F3 78 */	mr r3, r30
/* 80B97CB0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B97CB4  4B 48 2A 5C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B97CB8  7C 64 1B 78 */	mr r4, r3
/* 80B97CBC  7F C3 F3 78 */	mr r3, r30
/* 80B97CC0  38 A0 FF FF */	li r5, -1
/* 80B97CC4  38 C0 FF FF */	li r6, -1
/* 80B97CC8  38 E0 00 0F */	li r7, 0xf
/* 80B97CCC  4B 5B C3 D8 */	b step__8daNpcF_cFsiii
/* 80B97CD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B97CD4  41 82 00 50 */	beq lbl_80B97D24
/* 80B97CD8  7F C3 F3 78 */	mr r3, r30
/* 80B97CDC  38 80 00 01 */	li r4, 1
/* 80B97CE0  3C A0 80 BA */	lis r5, lit_4991@ha
/* 80B97CE4  C0 25 B0 A4 */	lfs f1, lit_4991@l(r5)
/* 80B97CE8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B97CEC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B97CF0  7D 89 03 A6 */	mtctr r12
/* 80B97CF4  4E 80 04 21 */	bctrl 
/* 80B97CF8  7F C3 F3 78 */	mr r3, r30
/* 80B97CFC  38 80 00 00 */	li r4, 0
/* 80B97D00  3C A0 80 BA */	lis r5, lit_4991@ha
/* 80B97D04  C0 25 B0 A4 */	lfs f1, lit_4991@l(r5)
/* 80B97D08  38 A0 00 00 */	li r5, 0
/* 80B97D0C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B97D10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B97D14  7D 89 03 A6 */	mtctr r12
/* 80B97D18  4E 80 04 21 */	bctrl 
/* 80B97D1C  38 00 00 00 */	li r0, 0
/* 80B97D20  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80B97D24:
/* 80B97D24  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80B97D28  41 82 00 38 */	beq lbl_80B97D60
/* 80B97D2C  7F C3 F3 78 */	mr r3, r30
/* 80B97D30  38 80 00 00 */	li r4, 0
/* 80B97D34  38 A0 00 01 */	li r5, 1
/* 80B97D38  38 C0 00 00 */	li r6, 0
/* 80B97D3C  4B 5B C0 48 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B97D40  2C 03 00 00 */	cmpwi r3, 0
/* 80B97D44  41 82 00 1C */	beq lbl_80B97D60
/* 80B97D48  7F C3 F3 78 */	mr r3, r30
/* 80B97D4C  38 80 00 00 */	li r4, 0
/* 80B97D50  4B FF F1 2D */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B97D54  3B E0 00 01 */	li r31, 1
/* 80B97D58  48 00 00 08 */	b lbl_80B97D60
lbl_80B97D5C:
/* 80B97D5C  3B E0 00 01 */	li r31, 1
lbl_80B97D60:
/* 80B97D60  7F E3 FB 78 */	mr r3, r31
/* 80B97D64  39 61 00 30 */	addi r11, r1, 0x30
/* 80B97D68  4B 7C A4 B0 */	b _restgpr_25
/* 80B97D6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B97D70  7C 08 03 A6 */	mtlr r0
/* 80B97D74  38 21 00 30 */	addi r1, r1, 0x30
/* 80B97D78  4E 80 00 20 */	blr 
