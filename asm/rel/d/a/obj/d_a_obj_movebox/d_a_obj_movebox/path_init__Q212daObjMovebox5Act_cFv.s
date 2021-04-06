lbl_8047E7F4:
/* 8047E7F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047E7F8  7C 08 02 A6 */	mflr r0
/* 8047E7FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047E800  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E804  4B EE 39 D5 */	bl _savegpr_28
/* 8047E808  7C 7E 1B 78 */	mr r30, r3
/* 8047E80C  A0 03 08 B0 */	lhz r0, 0x8b0(r3)
/* 8047E810  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8047E814  4B FF FE 15 */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047E818  2C 1F 00 FF */	cmpwi r31, 0xff
/* 8047E81C  41 82 00 F8 */	beq lbl_8047E914
/* 8047E820  2C 03 00 FF */	cmpwi r3, 0xff
/* 8047E824  41 82 00 F0 */	beq lbl_8047E914
/* 8047E828  A0 1E 08 B0 */	lhz r0, 0x8b0(r30)
/* 8047E82C  7C 00 46 70 */	srawi r0, r0, 8
/* 8047E830  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8047E834  7F C3 F3 78 */	mr r3, r30
/* 8047E838  4B FF FD F1 */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047E83C  7C 64 1B 78 */	mr r4, r3
/* 8047E840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047E844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047E848  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8047E84C  7C 05 07 74 */	extsb r5, r0
/* 8047E850  4B BB 6B 11 */	bl isSwitch__10dSv_info_cCFii
/* 8047E854  30 03 FF FF */	addic r0, r3, -1
/* 8047E858  7C 00 19 10 */	subfe r0, r0, r3
/* 8047E85C  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8047E860  2C 1C 00 FF */	cmpwi r28, 0xff
/* 8047E864  40 82 00 0C */	bne lbl_8047E870
/* 8047E868  38 60 00 00 */	li r3, 0
/* 8047E86C  48 00 00 30 */	b lbl_8047E89C
lbl_8047E870:
/* 8047E870  A0 1E 08 B0 */	lhz r0, 0x8b0(r30)
/* 8047E874  7C 00 46 70 */	srawi r0, r0, 8
/* 8047E878  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8047E87C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047E880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047E884  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8047E888  7C 05 07 74 */	extsb r5, r0
/* 8047E88C  4B BB 6A D5 */	bl isSwitch__10dSv_info_cCFii
/* 8047E890  30 03 FF FF */	addic r0, r3, -1
/* 8047E894  7C 00 19 10 */	subfe r0, r0, r3
/* 8047E898  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8047E89C:
/* 8047E89C  30 03 FF FF */	addic r0, r3, -1
/* 8047E8A0  7C 00 19 10 */	subfe r0, r0, r3
/* 8047E8A4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8047E8A8  3B 80 00 00 */	li r28, 0
/* 8047E8AC  28 1D 00 00 */	cmplwi r29, 0
/* 8047E8B0  41 82 00 08 */	beq lbl_8047E8B8
/* 8047E8B4  3B 80 00 01 */	li r28, 1
lbl_8047E8B8:
/* 8047E8B8  28 00 00 00 */	cmplwi r0, 0
/* 8047E8BC  41 82 00 08 */	beq lbl_8047E8C4
/* 8047E8C0  3B 9C 00 02 */	addi r28, r28, 2
lbl_8047E8C4:
/* 8047E8C4  7F E3 FB 78 */	mr r3, r31
/* 8047E8C8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8047E8CC  7C 04 07 74 */	extsb r4, r0
/* 8047E8D0  4B BD 2F 1D */	bl dPath_GetRoomPath__Fii
/* 8047E8D4  90 7E 08 B4 */	stw r3, 0x8b4(r30)
/* 8047E8D8  80 7E 08 B4 */	lwz r3, 0x8b4(r30)
/* 8047E8DC  7F 84 E3 78 */	mr r4, r28
/* 8047E8E0  4B BD 2E D1 */	bl dPath_GetPnt__FPC5dPathi
/* 8047E8E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047E8E8  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 8047E8EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047E8F0  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 8047E8F4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8047E8F8  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 8047E8FC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047E900  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8047E904  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047E908  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8047E90C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8047E910  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8047E914:
/* 8047E914  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E918  4B EE 39 0D */	bl _restgpr_28
/* 8047E91C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047E920  7C 08 03 A6 */	mtlr r0
/* 8047E924  38 21 00 20 */	addi r1, r1, 0x20
/* 8047E928  4E 80 00 20 */	blr 
