lbl_80A599D8:
/* 80A599D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A599DC  7C 08 02 A6 */	mflr r0
/* 80A599E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A599E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A599E8  7C 7F 1B 78 */	mr r31, r3
/* 80A599EC  38 00 00 00 */	li r0, 0
/* 80A599F0  98 03 05 FC */	stb r0, 0x5fc(r3)
/* 80A599F4  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A599F8  2C 00 00 01 */	cmpwi r0, 1
/* 80A599FC  41 82 00 38 */	beq lbl_80A59A34
/* 80A59A00  40 80 00 34 */	bge lbl_80A59A34
/* 80A59A04  2C 00 00 00 */	cmpwi r0, 0
/* 80A59A08  40 80 00 08 */	bge lbl_80A59A10
/* 80A59A0C  48 00 00 28 */	b lbl_80A59A34
lbl_80A59A10:
/* 80A59A10  38 80 00 22 */	li r4, 0x22
/* 80A59A14  3C A0 80 A6 */	lis r5, lit_4803@ha /* 0x80A5DF8C@ha */
/* 80A59A18  C0 25 DF 8C */	lfs f1, lit_4803@l(r5)  /* 0x80A5DF8C@l */
/* 80A59A1C  38 A0 00 02 */	li r5, 2
/* 80A59A20  3C C0 80 A6 */	lis r6, lit_4146@ha /* 0x80A5DF24@ha */
/* 80A59A24  C0 46 DF 24 */	lfs f2, lit_4146@l(r6)  /* 0x80A5DF24@l */
/* 80A59A28  4B FE F7 7D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A59A2C  38 00 00 01 */	li r0, 1
/* 80A59A30  B0 1F 05 EA */	sth r0, 0x5ea(r31)
lbl_80A59A34:
/* 80A59A34  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80A59A38  A8 9F 05 C8 */	lha r4, 0x5c8(r31)
/* 80A59A3C  38 A0 00 02 */	li r5, 2
/* 80A59A40  38 C0 20 00 */	li r6, 0x2000
/* 80A59A44  4B 81 6B C5 */	bl cLib_addCalcAngleS2__FPssss
/* 80A59A48  38 00 00 00 */	li r0, 0
/* 80A59A4C  98 1F 0A EC */	stb r0, 0xaec(r31)
/* 80A59A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A59A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A59A58  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A59A5C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80A59A60  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80A59A64  A0 84 04 82 */	lhz r4, 0x482(r4)
/* 80A59A68  4B 5D AF 55 */	bl isEventBit__11dSv_event_cCFUs
/* 80A59A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80A59A70  41 82 00 0C */	beq lbl_80A59A7C
/* 80A59A74  7F E3 FB 78 */	mr r3, r31
/* 80A59A78  4B 5C 02 05 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80A59A7C:
/* 80A59A7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A59A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A59A84  7C 08 03 A6 */	mtlr r0
/* 80A59A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80A59A8C  4E 80 00 20 */	blr 
