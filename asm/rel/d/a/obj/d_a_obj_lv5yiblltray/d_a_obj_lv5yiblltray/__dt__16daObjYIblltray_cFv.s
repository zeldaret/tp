lbl_80C7088C:
/* 80C7088C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70890  7C 08 02 A6 */	mflr r0
/* 80C70894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7089C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C708A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C708A4  7C 9F 23 78 */	mr r31, r4
/* 80C708A8  41 82 00 D4 */	beq lbl_80C7097C
/* 80C708AC  3C 60 80 C7 */	lis r3, __vt__16daObjYIblltray_c@ha
/* 80C708B0  38 03 0B 30 */	addi r0, r3, __vt__16daObjYIblltray_c@l
/* 80C708B4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C708B8  34 1E 0A 38 */	addic. r0, r30, 0xa38
/* 80C708BC  41 82 00 20 */	beq lbl_80C708DC
/* 80C708C0  34 1E 0A 38 */	addic. r0, r30, 0xa38
/* 80C708C4  41 82 00 18 */	beq lbl_80C708DC
/* 80C708C8  34 1E 0A 38 */	addic. r0, r30, 0xa38
/* 80C708CC  41 82 00 10 */	beq lbl_80C708DC
/* 80C708D0  3C 60 80 C7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C708D4  38 03 0B 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C708D8  90 1E 0A 38 */	stw r0, 0xa38(r30)
lbl_80C708DC:
/* 80C708DC  34 1E 09 F8 */	addic. r0, r30, 0x9f8
/* 80C708E0  41 82 00 54 */	beq lbl_80C70934
/* 80C708E4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C708E8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C708EC  90 7E 0A 10 */	stw r3, 0xa10(r30)
/* 80C708F0  38 03 00 20 */	addi r0, r3, 0x20
/* 80C708F4  90 1E 0A 14 */	stw r0, 0xa14(r30)
/* 80C708F8  34 1E 0A 14 */	addic. r0, r30, 0xa14
/* 80C708FC  41 82 00 24 */	beq lbl_80C70920
/* 80C70900  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C70904  38 03 0B 18 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C70908  90 1E 0A 14 */	stw r0, 0xa14(r30)
/* 80C7090C  34 1E 0A 14 */	addic. r0, r30, 0xa14
/* 80C70910  41 82 00 10 */	beq lbl_80C70920
/* 80C70914  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C70918  38 03 0B 0C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C7091C  90 1E 0A 14 */	stw r0, 0xa14(r30)
lbl_80C70920:
/* 80C70920  34 1E 09 F8 */	addic. r0, r30, 0x9f8
/* 80C70924  41 82 00 10 */	beq lbl_80C70934
/* 80C70928  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C7092C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C70930  90 1E 0A 10 */	stw r0, 0xa10(r30)
lbl_80C70934:
/* 80C70934  38 7E 06 44 */	addi r3, r30, 0x644
/* 80C70938  3C 80 80 C7 */	lis r4, __dt__8dCcD_CylFv@ha
/* 80C7093C  38 84 05 F8 */	addi r4, r4, __dt__8dCcD_CylFv@l
/* 80C70940  38 A0 01 3C */	li r5, 0x13c
/* 80C70944  38 C0 00 03 */	li r6, 3
/* 80C70948  4B 6F 13 A0 */	b __destroy_arr
/* 80C7094C  28 1E 00 00 */	cmplwi r30, 0
/* 80C70950  41 82 00 1C */	beq lbl_80C7096C
/* 80C70954  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C70958  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C7095C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C70960  7F C3 F3 78 */	mr r3, r30
/* 80C70964  38 80 00 00 */	li r4, 0
/* 80C70968  4B 3A 83 24 */	b __dt__10fopAc_ac_cFv
lbl_80C7096C:
/* 80C7096C  7F E0 07 35 */	extsh. r0, r31
/* 80C70970  40 81 00 0C */	ble lbl_80C7097C
/* 80C70974  7F C3 F3 78 */	mr r3, r30
/* 80C70978  4B 65 E3 C4 */	b __dl__FPv
lbl_80C7097C:
/* 80C7097C  7F C3 F3 78 */	mr r3, r30
/* 80C70980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C70984  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C70988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7098C  7C 08 03 A6 */	mtlr r0
/* 80C70990  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70994  4E 80 00 20 */	blr 
