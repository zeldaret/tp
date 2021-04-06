lbl_806E7E94:
/* 806E7E94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E7E98  7C 08 02 A6 */	mflr r0
/* 806E7E9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E7EA0  39 61 00 20 */	addi r11, r1, 0x20
/* 806E7EA4  4B C7 A3 39 */	bl _savegpr_29
/* 806E7EA8  7C 7F 1B 78 */	mr r31, r3
/* 806E7EAC  88 03 07 8D */	lbz r0, 0x78d(r3)
/* 806E7EB0  28 00 00 00 */	cmplwi r0, 0
/* 806E7EB4  40 82 00 64 */	bne lbl_806E7F18
/* 806E7EB8  88 1F 07 1C */	lbz r0, 0x71c(r31)
/* 806E7EBC  28 00 00 01 */	cmplwi r0, 1
/* 806E7EC0  40 82 00 58 */	bne lbl_806E7F18
/* 806E7EC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070539@ha */
/* 806E7EC8  38 03 05 39 */	addi r0, r3, 0x0539 /* 0x00070539@l */
/* 806E7ECC  90 01 00 08 */	stw r0, 8(r1)
/* 806E7ED0  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806E7ED4  38 81 00 08 */	addi r4, r1, 8
/* 806E7ED8  38 A0 00 00 */	li r5, 0
/* 806E7EDC  38 C0 FF FF */	li r6, -1
/* 806E7EE0  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806E7EE4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806E7EE8  7D 89 03 A6 */	mtctr r12
/* 806E7EEC  4E 80 04 21 */	bctrl 
/* 806E7EF0  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806E7EF4  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 806E7EF8  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 806E7EFC  38 A0 00 20 */	li r5, 0x20
/* 806E7F00  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806E7F04  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806E7F08  7D 89 03 A6 */	mtctr r12
/* 806E7F0C  4E 80 04 21 */	bctrl 
/* 806E7F10  38 00 00 01 */	li r0, 1
/* 806E7F14  98 1F 07 8D */	stb r0, 0x78d(r31)
lbl_806E7F18:
/* 806E7F18  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 806E7F1C  2C 00 00 01 */	cmpwi r0, 1
/* 806E7F20  41 82 00 A0 */	beq lbl_806E7FC0
/* 806E7F24  40 80 02 10 */	bge lbl_806E8134
/* 806E7F28  2C 00 00 00 */	cmpwi r0, 0
/* 806E7F2C  40 80 00 08 */	bge lbl_806E7F34
/* 806E7F30  48 00 02 04 */	b lbl_806E8134
lbl_806E7F34:
/* 806E7F34  38 00 00 01 */	li r0, 1
/* 806E7F38  98 1F 07 89 */	stb r0, 0x789(r31)
/* 806E7F3C  88 1F 07 1C */	lbz r0, 0x71c(r31)
/* 806E7F40  28 00 00 01 */	cmplwi r0, 1
/* 806E7F44  41 81 01 F0 */	bgt lbl_806E8134
/* 806E7F48  88 9F 07 7B */	lbz r4, 0x77b(r31)
/* 806E7F4C  28 04 00 FF */	cmplwi r4, 0xff
/* 806E7F50  41 82 00 18 */	beq lbl_806E7F68
/* 806E7F54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E7F58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E7F5C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 806E7F60  7C 05 07 74 */	extsb r5, r0
/* 806E7F64  4B 94 D2 9D */	bl onSwitch__10dSv_info_cFii
lbl_806E7F68:
/* 806E7F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E7F6C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E7F70  88 64 01 0C */	lbz r3, 0x10c(r4)
/* 806E7F74  28 03 00 FF */	cmplwi r3, 0xff
/* 806E7F78  40 80 00 0C */	bge lbl_806E7F84
/* 806E7F7C  38 03 00 01 */	addi r0, r3, 1
/* 806E7F80  98 04 01 0C */	stb r0, 0x10c(r4)
lbl_806E7F84:
/* 806E7F84  38 00 FF FF */	li r0, -1
/* 806E7F88  90 1F 07 84 */	stw r0, 0x784(r31)
/* 806E7F8C  88 04 01 0C */	lbz r0, 0x10c(r4)
/* 806E7F90  28 00 00 14 */	cmplwi r0, 0x14
/* 806E7F94  40 82 00 20 */	bne lbl_806E7FB4
/* 806E7F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E7F9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E7FA0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 806E7FA4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 806E7FA8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 806E7FAC  A0 84 03 92 */	lhz r4, 0x392(r4)
/* 806E7FB0  4B 94 C9 DD */	bl onEventBit__11dSv_event_cFUs
lbl_806E7FB4:
/* 806E7FB4  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 806E7FB8  38 03 00 01 */	addi r0, r3, 1
/* 806E7FBC  90 1F 07 14 */	stw r0, 0x714(r31)
lbl_806E7FC0:
/* 806E7FC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E7FC4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E7FC8  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 806E7FCC  28 00 00 00 */	cmplwi r0, 0
/* 806E7FD0  41 82 00 94 */	beq lbl_806E8064
/* 806E7FD4  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 806E7FD8  28 00 00 02 */	cmplwi r0, 2
/* 806E7FDC  40 82 01 58 */	bne lbl_806E8134
/* 806E7FE0  3B BE 4F F8 */	addi r29, r30, 0x4ff8
/* 806E7FE4  7F A3 EB 78 */	mr r3, r29
/* 806E7FE8  A8 9F 07 78 */	lha r4, 0x778(r31)
/* 806E7FEC  4B 95 FA 8D */	bl endCheck__16dEvent_manager_cFs
/* 806E7FF0  2C 03 00 00 */	cmpwi r3, 0
/* 806E7FF4  41 82 00 10 */	beq lbl_806E8004
/* 806E7FF8  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 806E7FFC  4B 95 A4 6D */	bl reset__14dEvt_control_cFv
/* 806E8000  48 00 01 34 */	b lbl_806E8134
lbl_806E8004:
/* 806E8004  7F A3 EB 78 */	mr r3, r29
/* 806E8008  4B 96 03 E1 */	bl getRunEventName__16dEvent_manager_cFv
/* 806E800C  3C 80 80 6F */	lis r4, d_a_e_hp__stringBase0@ha /* 0x806EA2CC@ha */
/* 806E8010  38 84 A2 CC */	addi r4, r4, d_a_e_hp__stringBase0@l /* 0x806EA2CC@l */
/* 806E8014  38 84 00 05 */	addi r4, r4, 5
/* 806E8018  4B C8 09 7D */	bl strcmp
/* 806E801C  2C 03 00 00 */	cmpwi r3, 0
/* 806E8020  40 82 01 14 */	bne lbl_806E8134
/* 806E8024  80 7F 07 84 */	lwz r3, 0x784(r31)
/* 806E8028  3C 03 00 01 */	addis r0, r3, 1
/* 806E802C  28 00 FF FF */	cmplwi r0, 0xffff
/* 806E8030  41 82 01 04 */	beq lbl_806E8134
/* 806E8034  3B BE 4E C8 */	addi r29, r30, 0x4ec8
/* 806E8038  7F A3 EB 78 */	mr r3, r29
/* 806E803C  38 80 00 00 */	li r4, 0
/* 806E8040  4B 95 B6 4D */	bl setPtT__14dEvt_control_cFPv
/* 806E8044  7F A3 EB 78 */	mr r3, r29
/* 806E8048  80 9F 07 84 */	lwz r4, 0x784(r31)
/* 806E804C  4B 95 B6 A1 */	bl setPtI_Id__14dEvt_control_cFUi
/* 806E8050  38 00 FF FF */	li r0, -1
/* 806E8054  90 1F 07 84 */	stw r0, 0x784(r31)
/* 806E8058  38 00 00 01 */	li r0, 1
/* 806E805C  98 1F 07 88 */	stb r0, 0x788(r31)
/* 806E8060  48 00 00 D4 */	b lbl_806E8134
lbl_806E8064:
/* 806E8064  88 1F 07 88 */	lbz r0, 0x788(r31)
/* 806E8068  28 00 00 00 */	cmplwi r0, 0
/* 806E806C  41 82 00 28 */	beq lbl_806E8094
/* 806E8070  7F E3 FB 78 */	mr r3, r31
/* 806E8074  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E8078  38 A0 00 08 */	li r5, 8
/* 806E807C  38 C0 00 03 */	li r6, 3
/* 806E8080  38 E0 00 FF */	li r7, 0xff
/* 806E8084  4B 93 4A 55 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806E8088  7F E3 FB 78 */	mr r3, r31
/* 806E808C  4B 93 1B F1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806E8090  48 00 00 A4 */	b lbl_806E8134
lbl_806E8094:
/* 806E8094  80 7F 07 84 */	lwz r3, 0x784(r31)
/* 806E8098  3C 03 00 01 */	addis r0, r3, 1
/* 806E809C  28 00 FF FF */	cmplwi r0, 0xffff
/* 806E80A0  40 82 00 28 */	bne lbl_806E80C8
/* 806E80A4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806E80A8  38 80 00 E0 */	li r4, 0xe0
/* 806E80AC  38 A0 00 00 */	li r5, 0
/* 806E80B0  38 C0 FF FF */	li r6, -1
/* 806E80B4  38 E0 FF FF */	li r7, -1
/* 806E80B8  39 00 00 00 */	li r8, 0
/* 806E80BC  39 20 00 00 */	li r9, 0
/* 806E80C0  4B 93 3B 29 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 806E80C4  90 7F 07 84 */	stw r3, 0x784(r31)
lbl_806E80C8:
/* 806E80C8  80 7F 07 84 */	lwz r3, 0x784(r31)
/* 806E80CC  4B 93 92 D1 */	bl fpcEx_IsExist__FUi
/* 806E80D0  2C 03 00 00 */	cmpwi r3, 0
/* 806E80D4  41 82 00 60 */	beq lbl_806E8134
/* 806E80D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E80DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E80E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806E80E4  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 806E80E8  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
/* 806E80EC  2C 00 00 08 */	cmpwi r0, 8
/* 806E80F0  40 82 00 44 */	bne lbl_806E8134
/* 806E80F4  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 806E80F8  7F E4 FB 78 */	mr r4, r31
/* 806E80FC  3C A0 80 6F */	lis r5, d_a_e_hp__stringBase0@ha /* 0x806EA2CC@ha */
/* 806E8100  38 A5 A2 CC */	addi r5, r5, d_a_e_hp__stringBase0@l /* 0x806EA2CC@l */
/* 806E8104  38 A5 00 05 */	addi r5, r5, 5
/* 806E8108  38 C0 00 FF */	li r6, 0xff
/* 806E810C  4B 95 F6 4D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 806E8110  B0 7F 07 78 */	sth r3, 0x778(r31)
/* 806E8114  7F E3 FB 78 */	mr r3, r31
/* 806E8118  A8 9F 07 78 */	lha r4, 0x778(r31)
/* 806E811C  38 A0 00 FF */	li r5, 0xff
/* 806E8120  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 806E8124  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 806E8128  38 E0 00 06 */	li r7, 6
/* 806E812C  39 00 00 01 */	li r8, 1
/* 806E8130  4B 93 35 4D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_806E8134:
/* 806E8134  39 61 00 20 */	addi r11, r1, 0x20
/* 806E8138  4B C7 A0 F1 */	bl _restgpr_29
/* 806E813C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E8140  7C 08 03 A6 */	mtlr r0
/* 806E8144  38 21 00 20 */	addi r1, r1, 0x20
/* 806E8148  4E 80 00 20 */	blr 
