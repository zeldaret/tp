lbl_800AA5E8:
/* 800AA5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AA5EC  7C 08 02 A6 */	mflr r0
/* 800AA5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA5F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AA5F8  93 C1 00 08 */	stw r30, 8(r1)
/* 800AA5FC  7C 7E 1B 78 */	mr r30, r3
/* 800AA600  80 A3 31 A0 */	lwz r5, 0x31a0(r3)
/* 800AA604  3C 80 00 01 */	lis r4, 0x0001 /* 0x00012800@ha */
/* 800AA608  38 04 28 00 */	addi r0, r4, 0x2800 /* 0x00012800@l */
/* 800AA60C  7C A0 00 39 */	and. r0, r5, r0
/* 800AA610  40 82 00 80 */	bne lbl_800AA690
/* 800AA614  A0 1E 06 04 */	lhz r0, 0x604(r30)
/* 800AA618  2C 00 00 01 */	cmpwi r0, 1
/* 800AA61C  41 82 00 74 */	beq lbl_800AA690
/* 800AA620  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800AA624  28 00 00 B0 */	cmplwi r0, 0xb0
/* 800AA628  41 82 00 68 */	beq lbl_800AA690
/* 800AA62C  48 06 B5 F5 */	bl checkEventRun__9daAlink_cCFv
/* 800AA630  2C 03 00 00 */	cmpwi r3, 0
/* 800AA634  41 82 00 50 */	beq lbl_800AA684
/* 800AA638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800AA63C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800AA640  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800AA644  4B F9 DD A5 */	bl getRunEventName__16dEvent_manager_cFv
/* 800AA648  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha
/* 800AA64C  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l
/* 800AA650  38 84 04 65 */	addi r4, r4, 0x465
/* 800AA654  48 2B E3 41 */	bl strcmp
/* 800AA658  2C 03 00 00 */	cmpwi r3, 0
/* 800AA65C  41 82 00 34 */	beq lbl_800AA690
/* 800AA660  7F C3 F3 78 */	mr r3, r30
/* 800AA664  4B F7 14 B1 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 800AA668  28 03 00 00 */	cmplwi r3, 0
/* 800AA66C  41 82 00 18 */	beq lbl_800AA684
/* 800AA670  83 ED 8A 98 */	lwz r31, m_midnaActor__9daPy_py_c(r13)
/* 800AA674  7F C3 F3 78 */	mr r3, r30
/* 800AA678  4B F7 14 9D */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 800AA67C  7C 03 F8 40 */	cmplw r3, r31
/* 800AA680  41 82 00 10 */	beq lbl_800AA690
lbl_800AA684:
/* 800AA684  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 800AA688  28 00 00 03 */	cmplwi r0, 3
/* 800AA68C  40 82 00 0C */	bne lbl_800AA698
lbl_800AA690:
/* 800AA690  38 60 00 01 */	li r3, 1
/* 800AA694  48 00 00 08 */	b lbl_800AA69C
lbl_800AA698:
/* 800AA698  38 60 00 00 */	li r3, 0
lbl_800AA69C:
/* 800AA69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AA6A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AA6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AA6A8  7C 08 03 A6 */	mtlr r0
/* 800AA6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800AA6B0  4E 80 00 20 */	blr 
