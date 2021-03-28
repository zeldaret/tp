lbl_8048D384:
/* 8048D384  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048D388  7C 08 02 A6 */	mflr r0
/* 8048D38C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048D390  39 61 00 20 */	addi r11, r1, 0x20
/* 8048D394  4B ED 4E 48 */	b _savegpr_29
/* 8048D398  7C 7D 1B 78 */	mr r29, r3
/* 8048D39C  3B C0 00 00 */	li r30, 0
/* 8048D3A0  4B FF FF A1 */	bl getOffEvtBit__14daTag_EvtMsg_cFv
/* 8048D3A4  3C 03 00 01 */	addis r0, r3, 1
/* 8048D3A8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048D3AC  41 82 00 1C */	beq lbl_8048D3C8
/* 8048D3B0  7F A3 EB 78 */	mr r3, r29
/* 8048D3B4  4B FF FF 8D */	bl getOffEvtBit__14daTag_EvtMsg_cFv
/* 8048D3B8  4B CC 82 7C */	b daNpcF_chkEvtBit__FUl
/* 8048D3BC  2C 03 00 00 */	cmpwi r3, 0
/* 8048D3C0  41 82 00 08 */	beq lbl_8048D3C8
/* 8048D3C4  3B C0 00 01 */	li r30, 1
lbl_8048D3C8:
/* 8048D3C8  7F A3 EB 78 */	mr r3, r29
/* 8048D3CC  4B FF FF 9D */	bl getOffSwBit__14daTag_EvtMsg_cFv
/* 8048D3D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8048D3D4  28 00 00 FF */	cmplwi r0, 0xff
/* 8048D3D8  41 82 00 34 */	beq lbl_8048D40C
/* 8048D3DC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8048D3E0  7C 1F 07 74 */	extsb r31, r0
/* 8048D3E4  7F A3 EB 78 */	mr r3, r29
/* 8048D3E8  4B FF FF 81 */	bl getOffSwBit__14daTag_EvtMsg_cFv
/* 8048D3EC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8048D3F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048D3F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048D3F8  7F E5 FB 78 */	mr r5, r31
/* 8048D3FC  4B BA 7F 64 */	b isSwitch__10dSv_info_cCFii
/* 8048D400  2C 03 00 00 */	cmpwi r3, 0
/* 8048D404  41 82 00 08 */	beq lbl_8048D40C
/* 8048D408  3B C0 00 01 */	li r30, 1
lbl_8048D40C:
/* 8048D40C  7F C3 F3 78 */	mr r3, r30
/* 8048D410  39 61 00 20 */	addi r11, r1, 0x20
/* 8048D414  4B ED 4E 14 */	b _restgpr_29
/* 8048D418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048D41C  7C 08 03 A6 */	mtlr r0
/* 8048D420  38 21 00 20 */	addi r1, r1, 0x20
/* 8048D424  4E 80 00 20 */	blr 
