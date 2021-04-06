lbl_8048AF00:
/* 8048AF00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048AF04  7C 08 02 A6 */	mflr r0
/* 8048AF08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048AF0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8048AF10  4B ED 72 C9 */	bl _savegpr_28
/* 8048AF14  7C 7F 1B 78 */	mr r31, r3
/* 8048AF18  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048AF1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048AF20  40 82 00 1C */	bne lbl_8048AF3C
/* 8048AF24  28 1F 00 00 */	cmplwi r31, 0
/* 8048AF28  41 82 00 08 */	beq lbl_8048AF30
/* 8048AF2C  4B B8 DC 39 */	bl __ct__10fopAc_ac_cFv
lbl_8048AF30:
/* 8048AF30  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8048AF34  60 00 00 08 */	ori r0, r0, 8
/* 8048AF38  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048AF3C:
/* 8048AF3C  7F E3 FB 78 */	mr r3, r31
/* 8048AF40  4B FF FE 35 */	bl getSwbit__13daTag_Event_cFv
/* 8048AF44  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 8048AF48  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048AF4C  7C 00 07 74 */	extsb r0, r0
/* 8048AF50  7C 1C 03 78 */	mr r28, r0
/* 8048AF54  7F E3 FB 78 */	mr r3, r31
/* 8048AF58  4B FF FE 11 */	bl getEventNo__13daTag_Event_cFv
/* 8048AF5C  7C 65 1B 78 */	mr r5, r3
/* 8048AF60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048AF64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048AF68  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8048AF6C  7F C3 F3 78 */	mr r3, r30
/* 8048AF70  7F E4 FB 78 */	mr r4, r31
/* 8048AF74  4B BB C7 25 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 8048AF78  B0 7F 05 68 */	sth r3, 0x568(r31)
/* 8048AF7C  38 00 FF FF */	li r0, -1
/* 8048AF80  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 8048AF84  B0 1F 05 6A */	sth r0, 0x56a(r31)
/* 8048AF88  7F E3 FB 78 */	mr r3, r31
/* 8048AF8C  4B FF FD DD */	bl getEventNo__13daTag_Event_cFv
/* 8048AF90  7F 84 E3 78 */	mr r4, r28
/* 8048AF94  4B BB 85 6D */	bl searchMapEventData__14dEvt_control_cFUcl
/* 8048AF98  28 03 00 00 */	cmplwi r3, 0
/* 8048AF9C  41 82 00 24 */	beq lbl_8048AFC0
/* 8048AFA0  88 03 00 05 */	lbz r0, 5(r3)
/* 8048AFA4  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 8048AFA8  7F C3 F3 78 */	mr r3, r30
/* 8048AFAC  7F E4 FB 78 */	mr r4, r31
/* 8048AFB0  A8 1F 05 6C */	lha r0, 0x56c(r31)
/* 8048AFB4  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8048AFB8  4B BB C6 E1 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 8048AFBC  B0 7F 05 6A */	sth r3, 0x56a(r31)
lbl_8048AFC0:
/* 8048AFC0  A8 1F 05 68 */	lha r0, 0x568(r31)
/* 8048AFC4  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 8048AFC8  7F E3 FB 78 */	mr r3, r31
/* 8048AFCC  4B FF FD 9D */	bl getEventNo__13daTag_Event_cFv
/* 8048AFD0  98 7F 00 FE */	stb r3, 0xfe(r31)
/* 8048AFD4  A8 1F 05 68 */	lha r0, 0x568(r31)
/* 8048AFD8  2C 00 FF FF */	cmpwi r0, -1
/* 8048AFDC  40 82 00 38 */	bne lbl_8048B014
/* 8048AFE0  7F E3 FB 78 */	mr r3, r31
/* 8048AFE4  4B FF FD D9 */	bl horseRodeo__13daTag_Event_cFv
/* 8048AFE8  2C 03 00 00 */	cmpwi r3, 0
/* 8048AFEC  41 82 00 34 */	beq lbl_8048B020
/* 8048AFF0  2C 1D 00 FF */	cmpwi r29, 0xff
/* 8048AFF4  41 82 00 20 */	beq lbl_8048B014
/* 8048AFF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048AFFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048B000  7F A4 EB 78 */	mr r4, r29
/* 8048B004  7F 85 E3 78 */	mr r5, r28
/* 8048B008  4B BA A3 59 */	bl isSwitch__10dSv_info_cCFii
/* 8048B00C  2C 03 00 00 */	cmpwi r3, 0
/* 8048B010  40 82 00 10 */	bne lbl_8048B020
lbl_8048B014:
/* 8048B014  38 00 00 01 */	li r0, 1
/* 8048B018  98 1F 05 72 */	stb r0, 0x572(r31)
/* 8048B01C  48 00 00 0C */	b lbl_8048B028
lbl_8048B020:
/* 8048B020  38 00 00 00 */	li r0, 0
/* 8048B024  98 1F 05 72 */	stb r0, 0x572(r31)
lbl_8048B028:
/* 8048B028  38 00 00 00 */	li r0, 0
/* 8048B02C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8048B030  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8048B034  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 8048B038  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8048B03C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048B040  3C 60 80 49 */	lis r3, lit_3814@ha /* 0x8048B830@ha */
/* 8048B044  C0 23 B8 30 */	lfs f1, lit_3814@l(r3)  /* 0x8048B830@l */
/* 8048B048  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B04C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048B050  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048B054  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B058  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048B05C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048B060  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B064  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048B068  7F E3 FB 78 */	mr r3, r31
/* 8048B06C  4B FF FD 51 */	bl horseRodeo__13daTag_Event_cFv
/* 8048B070  2C 03 00 00 */	cmpwi r3, 0
/* 8048B074  41 82 00 54 */	beq lbl_8048B0C8
/* 8048B078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048B07C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048B080  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8048B084  38 80 06 01 */	li r4, 0x601
/* 8048B088  4B BA 99 35 */	bl isEventBit__11dSv_event_cCFUs
/* 8048B08C  2C 03 00 00 */	cmpwi r3, 0
/* 8048B090  41 82 00 0C */	beq lbl_8048B09C
/* 8048B094  38 60 00 05 */	li r3, 5
/* 8048B098  48 00 00 34 */	b lbl_8048B0CC
lbl_8048B09C:
/* 8048B09C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048B0A0  3C 60 80 49 */	lis r3, lit_3815@ha /* 0x8048B834@ha */
/* 8048B0A4  C0 23 B8 34 */	lfs f1, lit_3815@l(r3)  /* 0x8048B834@l */
/* 8048B0A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B0AC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048B0B0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048B0B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B0B8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048B0BC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048B0C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B0C4  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_8048B0C8:
/* 8048B0C8  38 60 00 04 */	li r3, 4
lbl_8048B0CC:
/* 8048B0CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8048B0D0  4B ED 71 55 */	bl _restgpr_28
/* 8048B0D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048B0D8  7C 08 03 A6 */	mtlr r0
/* 8048B0DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8048B0E0  4E 80 00 20 */	blr 
