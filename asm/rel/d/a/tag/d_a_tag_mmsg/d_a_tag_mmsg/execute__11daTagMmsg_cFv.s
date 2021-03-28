lbl_80D5BB30:
/* 80D5BB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5BB34  7C 08 02 A6 */	mflr r0
/* 80D5BB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5BB3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5BB40  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5BB44  7C 7F 1B 78 */	mr r31, r3
/* 80D5BB48  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80D5BB4C  80 03 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r3)
/* 80D5BB50  28 00 00 00 */	cmplwi r0, 0
/* 80D5BB54  40 82 00 0C */	bne lbl_80D5BB60
/* 80D5BB58  38 60 00 01 */	li r3, 1
/* 80D5BB5C  48 00 01 94 */	b lbl_80D5BCF0
lbl_80D5BB60:
/* 80D5BB60  A0 1F 05 72 */	lhz r0, 0x572(r31)
/* 80D5BB64  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80D5BB68  41 82 00 34 */	beq lbl_80D5BB9C
/* 80D5BB6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5BB70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5BB74  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D5BB78  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80D5BB7C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D5BB80  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D5BB84  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D5BB88  4B 2D 8E 34 */	b isEventBit__11dSv_event_cCFUs
/* 80D5BB8C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5BB90  41 82 00 0C */	beq lbl_80D5BB9C
/* 80D5BB94  38 60 00 01 */	li r3, 1
/* 80D5BB98  48 00 01 58 */	b lbl_80D5BCF0
lbl_80D5BB9C:
/* 80D5BB9C  88 9F 05 69 */	lbz r4, 0x569(r31)
/* 80D5BBA0  28 04 00 FF */	cmplwi r4, 0xff
/* 80D5BBA4  41 82 00 30 */	beq lbl_80D5BBD4
/* 80D5BBA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5BBAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5BBB0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5BBB4  7C 05 07 74 */	extsb r5, r0
/* 80D5BBB8  4B 2D 97 A8 */	b isSwitch__10dSv_info_cCFii
/* 80D5BBBC  2C 03 00 00 */	cmpwi r3, 0
/* 80D5BBC0  41 82 00 14 */	beq lbl_80D5BBD4
/* 80D5BBC4  7F E3 FB 78 */	mr r3, r31
/* 80D5BBC8  4B 2B E0 B4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D5BBCC  38 60 00 01 */	li r3, 1
/* 80D5BBD0  48 00 01 20 */	b lbl_80D5BCF0
lbl_80D5BBD4:
/* 80D5BBD4  88 1F 05 6C */	lbz r0, 0x56c(r31)
/* 80D5BBD8  28 00 00 00 */	cmplwi r0, 0
/* 80D5BBDC  41 82 00 4C */	beq lbl_80D5BC28
/* 80D5BBE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5BBE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5BBE8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D5BBEC  28 00 00 00 */	cmplwi r0, 0
/* 80D5BBF0  40 82 00 38 */	bne lbl_80D5BC28
/* 80D5BBF4  88 1F 05 6B */	lbz r0, 0x56b(r31)
/* 80D5BBF8  28 00 00 00 */	cmplwi r0, 0
/* 80D5BBFC  41 82 00 2C */	beq lbl_80D5BC28
/* 80D5BC00  88 9F 05 69 */	lbz r4, 0x569(r31)
/* 80D5BC04  28 04 00 FF */	cmplwi r4, 0xff
/* 80D5BC08  41 82 00 20 */	beq lbl_80D5BC28
/* 80D5BC0C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5BC10  7C 05 07 74 */	extsb r5, r0
/* 80D5BC14  4B 2D 95 EC */	b onSwitch__10dSv_info_cFii
/* 80D5BC18  7F E3 FB 78 */	mr r3, r31
/* 80D5BC1C  4B 2B E0 60 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D5BC20  38 60 00 01 */	li r3, 1
/* 80D5BC24  48 00 00 CC */	b lbl_80D5BCF0
lbl_80D5BC28:
/* 80D5BC28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5BC2C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D5BC30  83 C4 5D B4 */	lwz r30, 0x5db4(r4)
/* 80D5BC34  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D5BC38  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D5BC3C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5BC40  4C 40 13 82 */	cror 2, 0, 2
/* 80D5BC44  40 82 00 A8 */	bne lbl_80D5BCEC
/* 80D5BC48  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 80D5BC4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5BC50  4C 41 13 82 */	cror 2, 1, 2
/* 80D5BC54  40 82 00 98 */	bne lbl_80D5BCEC
/* 80D5BC58  7F E3 FB 78 */	mr r3, r31
/* 80D5BC5C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D5BC60  4B 2B EE 34 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D5BC64  C0 1F 05 74 */	lfs f0, 0x574(r31)
/* 80D5BC68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5BC6C  40 80 00 80 */	bge lbl_80D5BCEC
/* 80D5BC70  A0 1F 05 70 */	lhz r0, 0x570(r31)
/* 80D5BC74  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80D5BC78  41 82 00 2C */	beq lbl_80D5BCA4
/* 80D5BC7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5BC80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5BC84  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D5BC88  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80D5BC8C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D5BC90  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D5BC94  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D5BC98  4B 2D 8D 24 */	b isEventBit__11dSv_event_cCFUs
/* 80D5BC9C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5BCA0  41 82 00 4C */	beq lbl_80D5BCEC
lbl_80D5BCA4:
/* 80D5BCA4  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 80D5BCA8  28 04 00 FF */	cmplwi r4, 0xff
/* 80D5BCAC  41 82 00 20 */	beq lbl_80D5BCCC
/* 80D5BCB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5BCB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5BCB8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5BCBC  7C 05 07 74 */	extsb r5, r0
/* 80D5BCC0  4B 2D 96 A0 */	b isSwitch__10dSv_info_cCFii
/* 80D5BCC4  2C 03 00 00 */	cmpwi r3, 0
/* 80D5BCC8  41 82 00 24 */	beq lbl_80D5BCEC
lbl_80D5BCCC:
/* 80D5BCCC  7F C3 F3 78 */	mr r3, r30
/* 80D5BCD0  7F E4 FB 78 */	mr r4, r31
/* 80D5BCD4  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 80D5BCD8  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80D5BCDC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D5BCE0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80D5BCE4  7D 89 03 A6 */	mtctr r12
/* 80D5BCE8  4E 80 04 21 */	bctrl 
lbl_80D5BCEC:
/* 80D5BCEC  38 60 00 01 */	li r3, 1
lbl_80D5BCF0:
/* 80D5BCF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5BCF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5BCF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5BCFC  7C 08 03 A6 */	mtlr r0
/* 80D5BD00  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5BD04  4E 80 00 20 */	blr 
