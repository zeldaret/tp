lbl_809C4EB4:
/* 809C4EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809C4EB8  7C 08 02 A6 */	mflr r0
/* 809C4EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C4EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 809C4EC4  4B 99 D3 11 */	bl _savegpr_27
/* 809C4EC8  7C 7F 1B 78 */	mr r31, r3
/* 809C4ECC  7C 9B 23 78 */	mr r27, r4
/* 809C4ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C4ED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C4ED8  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809C4EDC  3B A0 00 00 */	li r29, 0
/* 809C4EE0  3B 80 FF FF */	li r28, -1
/* 809C4EE4  7F C3 F3 78 */	mr r3, r30
/* 809C4EE8  3C A0 80 9D */	lis r5, d_a_npc_gra__stringBase0@ha /* 0x809CA4B8@ha */
/* 809C4EEC  38 A5 A4 B8 */	addi r5, r5, d_a_npc_gra__stringBase0@l /* 0x809CA4B8@l */
/* 809C4EF0  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C4EF4  38 C0 00 03 */	li r6, 3
/* 809C4EF8  4B 68 31 F5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C4EFC  28 03 00 00 */	cmplwi r3, 0
/* 809C4F00  41 82 00 08 */	beq lbl_809C4F08
/* 809C4F04  83 83 00 00 */	lwz r28, 0(r3)
lbl_809C4F08:
/* 809C4F08  7F C3 F3 78 */	mr r3, r30
/* 809C4F0C  7F 64 DB 78 */	mr r4, r27
/* 809C4F10  4B 68 2E 3D */	bl getIsAddvance__16dEvent_manager_cFi
/* 809C4F14  2C 03 00 00 */	cmpwi r3, 0
/* 809C4F18  41 82 00 B8 */	beq lbl_809C4FD0
/* 809C4F1C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 809C4F20  41 82 00 88 */	beq lbl_809C4FA8
/* 809C4F24  40 80 00 10 */	bge lbl_809C4F34
/* 809C4F28  2C 1C 00 00 */	cmpwi r28, 0
/* 809C4F2C  41 82 00 14 */	beq lbl_809C4F40
/* 809C4F30  48 00 00 A0 */	b lbl_809C4FD0
lbl_809C4F34:
/* 809C4F34  2C 1C 00 14 */	cmpwi r28, 0x14
/* 809C4F38  41 82 00 88 */	beq lbl_809C4FC0
/* 809C4F3C  48 00 00 94 */	b lbl_809C4FD0
lbl_809C4F40:
/* 809C4F40  7F E3 FB 78 */	mr r3, r31
/* 809C4F44  38 80 00 17 */	li r4, 0x17
/* 809C4F48  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C4F4C  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C4F50  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C4F54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C4F58  7D 89 03 A6 */	mtctr r12
/* 809C4F5C  4E 80 04 21 */	bctrl 
/* 809C4F60  7F E3 FB 78 */	mr r3, r31
/* 809C4F64  38 80 00 00 */	li r4, 0
/* 809C4F68  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C4F6C  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C4F70  38 A0 00 00 */	li r5, 0
/* 809C4F74  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C4F78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4F7C  7D 89 03 A6 */	mtctr r12
/* 809C4F80  4E 80 04 21 */	bctrl 
/* 809C4F84  7F E3 FB 78 */	mr r3, r31
/* 809C4F88  38 80 00 00 */	li r4, 0
/* 809C4F8C  4B FF E0 E5 */	bl setLookMode__11daNpc_grA_cFi
/* 809C4F90  3C 60 80 9D */	lis r3, lit_4611@ha /* 0x809C9E34@ha */
/* 809C4F94  C0 03 9E 34 */	lfs f0, lit_4611@l(r3)  /* 0x809C9E34@l */
/* 809C4F98  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809C4F9C  38 00 00 01 */	li r0, 1
/* 809C4FA0  98 1F 16 90 */	stb r0, 0x1690(r31)
/* 809C4FA4  48 00 00 2C */	b lbl_809C4FD0
lbl_809C4FA8:
/* 809C4FA8  38 00 00 41 */	li r0, 0x41
/* 809C4FAC  90 1F 09 60 */	stw r0, 0x960(r31)
/* 809C4FB0  7F E3 FB 78 */	mr r3, r31
/* 809C4FB4  38 80 00 07 */	li r4, 7
/* 809C4FB8  4B FF E0 B9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C4FBC  48 00 00 14 */	b lbl_809C4FD0
lbl_809C4FC0:
/* 809C4FC0  7F E3 FB 78 */	mr r3, r31
/* 809C4FC4  38 80 03 EA */	li r4, 0x3ea
/* 809C4FC8  38 A0 00 00 */	li r5, 0
/* 809C4FCC  4B 78 ED 51 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_809C4FD0:
/* 809C4FD0  2C 1C 00 0A */	cmpwi r28, 0xa
/* 809C4FD4  41 82 00 28 */	beq lbl_809C4FFC
/* 809C4FD8  40 80 00 10 */	bge lbl_809C4FE8
/* 809C4FDC  2C 1C 00 00 */	cmpwi r28, 0
/* 809C4FE0  41 82 00 14 */	beq lbl_809C4FF4
/* 809C4FE4  48 00 00 84 */	b lbl_809C5068
lbl_809C4FE8:
/* 809C4FE8  2C 1C 00 14 */	cmpwi r28, 0x14
/* 809C4FEC  41 82 00 58 */	beq lbl_809C5044
/* 809C4FF0  48 00 00 78 */	b lbl_809C5068
lbl_809C4FF4:
/* 809C4FF4  3B A0 00 01 */	li r29, 1
/* 809C4FF8  48 00 00 74 */	b lbl_809C506C
lbl_809C4FFC:
/* 809C4FFC  38 7F 09 60 */	addi r3, r31, 0x960
/* 809C5000  48 00 4A E5 */	bl func_809C9AE4
/* 809C5004  2C 03 00 00 */	cmpwi r3, 0
/* 809C5008  41 82 00 64 */	beq lbl_809C506C
/* 809C500C  80 1F 09 60 */	lwz r0, 0x960(r31)
/* 809C5010  2C 00 00 0F */	cmpwi r0, 0xf
/* 809C5014  40 82 00 18 */	bne lbl_809C502C
/* 809C5018  7F E3 FB 78 */	mr r3, r31
/* 809C501C  38 80 00 00 */	li r4, 0
/* 809C5020  4B FF E0 51 */	bl setLookMode__11daNpc_grA_cFi
/* 809C5024  3B A0 00 01 */	li r29, 1
/* 809C5028  48 00 00 44 */	b lbl_809C506C
lbl_809C502C:
/* 809C502C  2C 00 00 28 */	cmpwi r0, 0x28
/* 809C5030  40 82 00 3C */	bne lbl_809C506C
/* 809C5034  7F E3 FB 78 */	mr r3, r31
/* 809C5038  38 80 00 08 */	li r4, 8
/* 809C503C  4B FF E0 35 */	bl setLookMode__11daNpc_grA_cFi
/* 809C5040  48 00 00 2C */	b lbl_809C506C
lbl_809C5044:
/* 809C5044  7F E3 FB 78 */	mr r3, r31
/* 809C5048  38 80 00 00 */	li r4, 0
/* 809C504C  38 A0 00 01 */	li r5, 1
/* 809C5050  38 C0 00 00 */	li r6, 0
/* 809C5054  4B 78 ED 31 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C5058  2C 03 00 00 */	cmpwi r3, 0
/* 809C505C  41 82 00 10 */	beq lbl_809C506C
/* 809C5060  3B A0 00 01 */	li r29, 1
/* 809C5064  48 00 00 08 */	b lbl_809C506C
lbl_809C5068:
/* 809C5068  3B A0 00 01 */	li r29, 1
lbl_809C506C:
/* 809C506C  7F A3 EB 78 */	mr r3, r29
/* 809C5070  39 61 00 20 */	addi r11, r1, 0x20
/* 809C5074  4B 99 D1 AD */	bl _restgpr_27
/* 809C5078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809C507C  7C 08 03 A6 */	mtlr r0
/* 809C5080  38 21 00 20 */	addi r1, r1, 0x20
/* 809C5084  4E 80 00 20 */	blr 
