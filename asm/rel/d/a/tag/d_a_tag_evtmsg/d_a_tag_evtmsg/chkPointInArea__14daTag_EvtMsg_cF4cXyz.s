lbl_8048D428:
/* 8048D428  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048D42C  7C 08 02 A6 */	mflr r0
/* 8048D430  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048D434  39 61 00 40 */	addi r11, r1, 0x40
/* 8048D438  4B ED 4D A5 */	bl _savegpr_29
/* 8048D43C  7C 7D 1B 78 */	mr r29, r3
/* 8048D440  7C 9E 23 78 */	mr r30, r4
/* 8048D444  4B FF FE E1 */	bl getOnEvtBit__14daTag_EvtMsg_cFv
/* 8048D448  3C 03 00 01 */	addis r0, r3, 1
/* 8048D44C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048D450  41 82 00 80 */	beq lbl_8048D4D0
/* 8048D454  7F A3 EB 78 */	mr r3, r29
/* 8048D458  4B FF FE CD */	bl getOnEvtBit__14daTag_EvtMsg_cFv
/* 8048D45C  3C 03 00 01 */	addis r0, r3, 1
/* 8048D460  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048D464  41 82 00 18 */	beq lbl_8048D47C
/* 8048D468  7F A3 EB 78 */	mr r3, r29
/* 8048D46C  4B FF FE B9 */	bl getOnEvtBit__14daTag_EvtMsg_cFv
/* 8048D470  4B CC 81 C5 */	bl daNpcF_chkEvtBit__FUl
/* 8048D474  2C 03 00 00 */	cmpwi r3, 0
/* 8048D478  41 82 00 58 */	beq lbl_8048D4D0
lbl_8048D47C:
/* 8048D47C  7F A3 EB 78 */	mr r3, r29
/* 8048D480  4B FF FE DD */	bl getOnSwBit__14daTag_EvtMsg_cFv
/* 8048D484  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8048D488  28 00 00 FF */	cmplwi r0, 0xff
/* 8048D48C  41 82 00 44 */	beq lbl_8048D4D0
/* 8048D490  7F A3 EB 78 */	mr r3, r29
/* 8048D494  4B FF FE C9 */	bl getOnSwBit__14daTag_EvtMsg_cFv
/* 8048D498  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8048D49C  28 00 00 FF */	cmplwi r0, 0xff
/* 8048D4A0  41 82 00 90 */	beq lbl_8048D530
/* 8048D4A4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8048D4A8  7C 1F 07 74 */	extsb r31, r0
/* 8048D4AC  7F A3 EB 78 */	mr r3, r29
/* 8048D4B0  4B FF FE AD */	bl getOnSwBit__14daTag_EvtMsg_cFv
/* 8048D4B4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8048D4B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048D4BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048D4C0  7F E5 FB 78 */	mr r5, r31
/* 8048D4C4  4B BA 7E 9D */	bl isSwitch__10dSv_info_cCFii
/* 8048D4C8  2C 03 00 00 */	cmpwi r3, 0
/* 8048D4CC  40 82 00 64 */	bne lbl_8048D530
lbl_8048D4D0:
/* 8048D4D0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8048D4D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8048D4D8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8048D4DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8048D4E0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8048D4E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8048D4E8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8048D4EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8048D4F0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8048D4F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8048D4F8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8048D4FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8048D500  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 8048D504  D0 01 00 08 */	stfs f0, 8(r1)
/* 8048D508  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 8048D50C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8048D510  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 8048D514  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8048D518  38 61 00 20 */	addi r3, r1, 0x20
/* 8048D51C  38 81 00 14 */	addi r4, r1, 0x14
/* 8048D520  38 A1 00 08 */	addi r5, r1, 8
/* 8048D524  A8 DD 04 E6 */	lha r6, 0x4e6(r29)
/* 8048D528  4B CC 84 41 */	bl daNpcF_chkPointInArea__F4cXyz4cXyz4cXyzs
/* 8048D52C  48 00 00 08 */	b lbl_8048D534
lbl_8048D530:
/* 8048D530  38 60 00 00 */	li r3, 0
lbl_8048D534:
/* 8048D534  39 61 00 40 */	addi r11, r1, 0x40
/* 8048D538  4B ED 4C F1 */	bl _restgpr_29
/* 8048D53C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048D540  7C 08 03 A6 */	mtlr r0
/* 8048D544  38 21 00 40 */	addi r1, r1, 0x40
/* 8048D548  4E 80 00 20 */	blr 
