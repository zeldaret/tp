lbl_8058A3A4:
/* 8058A3A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058A3A8  7C 08 02 A6 */	mflr r0
/* 8058A3AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058A3B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8058A3B4  4B DD 7E 28 */	b _savegpr_29
/* 8058A3B8  7C 7D 1B 78 */	mr r29, r3
/* 8058A3BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058A3C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058A3C4  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8058A3C8  7F C3 F3 78 */	mr r3, r30
/* 8058A3CC  3C 80 80 59 */	lis r4, struct_8058ACB8+0x0@ha
/* 8058A3D0  38 84 AC B8 */	addi r4, r4, struct_8058ACB8+0x0@l
/* 8058A3D4  38 84 00 41 */	addi r4, r4, 0x41
/* 8058A3D8  38 A0 00 00 */	li r5, 0
/* 8058A3DC  38 C0 00 00 */	li r6, 0
/* 8058A3E0  4B AB D7 3C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8058A3E4  90 7D 0B A8 */	stw r3, 0xba8(r29)
/* 8058A3E8  7F A3 EB 78 */	mr r3, r29
/* 8058A3EC  48 00 01 1D */	bl getDemoAction__12daObjKGate_cFv
/* 8058A3F0  7C 7F 1B 78 */	mr r31, r3
/* 8058A3F4  7F C3 F3 78 */	mr r3, r30
/* 8058A3F8  80 9D 0B A8 */	lwz r4, 0xba8(r29)
/* 8058A3FC  4B AB D9 50 */	b getIsAddvance__16dEvent_manager_cFi
/* 8058A400  2C 03 00 00 */	cmpwi r3, 0
/* 8058A404  41 82 00 68 */	beq lbl_8058A46C
/* 8058A408  2C 1F 00 03 */	cmpwi r31, 3
/* 8058A40C  41 82 00 50 */	beq lbl_8058A45C
/* 8058A410  40 80 00 5C */	bge lbl_8058A46C
/* 8058A414  2C 1F 00 00 */	cmpwi r31, 0
/* 8058A418  41 82 00 08 */	beq lbl_8058A420
/* 8058A41C  48 00 00 50 */	b lbl_8058A46C
lbl_8058A420:
/* 8058A420  7F C3 F3 78 */	mr r3, r30
/* 8058A424  80 9D 0B A8 */	lwz r4, 0xba8(r29)
/* 8058A428  3C A0 80 59 */	lis r5, struct_8058ACB8+0x0@ha
/* 8058A42C  38 A5 AC B8 */	addi r5, r5, struct_8058ACB8+0x0@l
/* 8058A430  38 A5 00 48 */	addi r5, r5, 0x48
/* 8058A434  38 C0 00 03 */	li r6, 3
/* 8058A438  4B AB DC B4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8058A43C  28 03 00 00 */	cmplwi r3, 0
/* 8058A440  40 82 00 10 */	bne lbl_8058A450
/* 8058A444  38 00 00 01 */	li r0, 1
/* 8058A448  98 1D 0B AC */	stb r0, 0xbac(r29)
/* 8058A44C  48 00 00 20 */	b lbl_8058A46C
lbl_8058A450:
/* 8058A450  80 03 00 00 */	lwz r0, 0(r3)
/* 8058A454  98 1D 0B AC */	stb r0, 0xbac(r29)
/* 8058A458  48 00 00 14 */	b lbl_8058A46C
lbl_8058A45C:
/* 8058A45C  38 00 03 E8 */	li r0, 0x3e8
/* 8058A460  B0 1D 0B A0 */	sth r0, 0xba0(r29)
/* 8058A464  38 00 FC 18 */	li r0, -1000
/* 8058A468  B0 1D 0B A2 */	sth r0, 0xba2(r29)
lbl_8058A46C:
/* 8058A46C  2C 1F 00 02 */	cmpwi r31, 2
/* 8058A470  41 82 00 54 */	beq lbl_8058A4C4
/* 8058A474  40 80 00 14 */	bge lbl_8058A488
/* 8058A478  2C 1F 00 00 */	cmpwi r31, 0
/* 8058A47C  41 82 00 18 */	beq lbl_8058A494
/* 8058A480  40 80 00 54 */	bge lbl_8058A4D4
/* 8058A484  48 00 00 60 */	b lbl_8058A4E4
lbl_8058A488:
/* 8058A488  2C 1F 00 04 */	cmpwi r31, 4
/* 8058A48C  40 80 00 58 */	bge lbl_8058A4E4
/* 8058A490  48 00 00 24 */	b lbl_8058A4B4
lbl_8058A494:
/* 8058A494  38 7D 0B AC */	addi r3, r29, 0xbac
/* 8058A498  48 00 06 75 */	bl func_8058AB0C
/* 8058A49C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058A4A0  40 82 00 50 */	bne lbl_8058A4F0
/* 8058A4A4  7F C3 F3 78 */	mr r3, r30
/* 8058A4A8  80 9D 0B A8 */	lwz r4, 0xba8(r29)
/* 8058A4AC  4B AB DC D0 */	b cutEnd__16dEvent_manager_cFi
/* 8058A4B0  48 00 00 40 */	b lbl_8058A4F0
lbl_8058A4B4:
/* 8058A4B4  7F C3 F3 78 */	mr r3, r30
/* 8058A4B8  80 9D 0B A8 */	lwz r4, 0xba8(r29)
/* 8058A4BC  4B AB DC C0 */	b cutEnd__16dEvent_manager_cFi
/* 8058A4C0  48 00 00 30 */	b lbl_8058A4F0
lbl_8058A4C4:
/* 8058A4C4  7F C3 F3 78 */	mr r3, r30
/* 8058A4C8  80 9D 0B A8 */	lwz r4, 0xba8(r29)
/* 8058A4CC  4B AB DC B0 */	b cutEnd__16dEvent_manager_cFi
/* 8058A4D0  48 00 00 20 */	b lbl_8058A4F0
lbl_8058A4D4:
/* 8058A4D4  7F C3 F3 78 */	mr r3, r30
/* 8058A4D8  80 9D 0B A8 */	lwz r4, 0xba8(r29)
/* 8058A4DC  4B AB DC A0 */	b cutEnd__16dEvent_manager_cFi
/* 8058A4E0  48 00 00 10 */	b lbl_8058A4F0
lbl_8058A4E4:
/* 8058A4E4  7F C3 F3 78 */	mr r3, r30
/* 8058A4E8  80 9D 0B A8 */	lwz r4, 0xba8(r29)
/* 8058A4EC  4B AB DC 90 */	b cutEnd__16dEvent_manager_cFi
lbl_8058A4F0:
/* 8058A4F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8058A4F4  4B DD 7D 34 */	b _restgpr_29
/* 8058A4F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058A4FC  7C 08 03 A6 */	mtlr r0
/* 8058A500  38 21 00 20 */	addi r1, r1, 0x20
/* 8058A504  4E 80 00 20 */	blr 
