lbl_80A04F6C:
/* 80A04F6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A04F70  7C 08 02 A6 */	mflr r0
/* 80A04F74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A04F78  39 61 00 20 */	addi r11, r1, 0x20
/* 80A04F7C  4B 95 D2 59 */	bl _savegpr_27
/* 80A04F80  7C 7B 1B 78 */	mr r27, r3
/* 80A04F84  7C 9C 23 78 */	mr r28, r4
/* 80A04F88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A04F8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A04F90  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A04F94  3B C0 00 00 */	li r30, 0
/* 80A04F98  3B A0 FF FF */	li r29, -1
/* 80A04F9C  7F E3 FB 78 */	mr r3, r31
/* 80A04FA0  3C A0 80 A0 */	lis r5, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A04FA4  38 A5 67 64 */	addi r5, r5, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A04FA8  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80A04FAC  38 C0 00 03 */	li r6, 3
/* 80A04FB0  4B 64 31 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A04FB4  28 03 00 00 */	cmplwi r3, 0
/* 80A04FB8  41 82 00 08 */	beq lbl_80A04FC0
/* 80A04FBC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A04FC0:
/* 80A04FC0  7F E3 FB 78 */	mr r3, r31
/* 80A04FC4  7F 84 E3 78 */	mr r4, r28
/* 80A04FC8  4B 64 2D 85 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A04FCC  2C 03 00 00 */	cmpwi r3, 0
/* 80A04FD0  41 82 00 2C */	beq lbl_80A04FFC
/* 80A04FD4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A04FD8  41 82 00 14 */	beq lbl_80A04FEC
/* 80A04FDC  40 80 00 20 */	bge lbl_80A04FFC
/* 80A04FE0  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04FE4  41 82 00 18 */	beq lbl_80A04FFC
/* 80A04FE8  48 00 00 14 */	b lbl_80A04FFC
lbl_80A04FEC:
/* 80A04FEC  7F 63 DB 78 */	mr r3, r27
/* 80A04FF0  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80A04FF4  38 A0 00 00 */	li r5, 0
/* 80A04FF8  4B 74 6B F9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A04FFC:
/* 80A04FFC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A05000  41 82 00 6C */	beq lbl_80A0506C
/* 80A05004  40 80 00 90 */	bge lbl_80A05094
/* 80A05008  2C 1D 00 00 */	cmpwi r29, 0
/* 80A0500C  41 82 00 08 */	beq lbl_80A05014
/* 80A05010  48 00 00 84 */	b lbl_80A05094
lbl_80A05014:
/* 80A05014  7F 63 DB 78 */	mr r3, r27
/* 80A05018  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0501C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A05020  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A05024  4B 61 56 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A05028  A8 9B 0D 7A */	lha r4, 0xd7a(r27)
/* 80A0502C  7C 60 07 34 */	extsh r0, r3
/* 80A05030  7C 04 00 00 */	cmpw r4, r0
/* 80A05034  41 82 00 30 */	beq lbl_80A05064
/* 80A05038  7F 63 DB 78 */	mr r3, r27
/* 80A0503C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A05040  4B 61 56 D1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A05044  7C 64 1B 78 */	mr r4, r3
/* 80A05048  7F 63 DB 78 */	mr r3, r27
/* 80A0504C  38 A0 FF FF */	li r5, -1
/* 80A05050  38 C0 FF FF */	li r6, -1
/* 80A05054  38 E0 00 0F */	li r7, 0xf
/* 80A05058  39 00 00 00 */	li r8, 0
/* 80A0505C  4B 74 65 ED */	bl step__8daNpcT_cFsiiii
/* 80A05060  48 00 00 38 */	b lbl_80A05098
lbl_80A05064:
/* 80A05064  3B C0 00 01 */	li r30, 1
/* 80A05068  48 00 00 30 */	b lbl_80A05098
lbl_80A0506C:
/* 80A0506C  7F 63 DB 78 */	mr r3, r27
/* 80A05070  38 80 00 00 */	li r4, 0
/* 80A05074  38 A0 00 00 */	li r5, 0
/* 80A05078  38 C0 00 00 */	li r6, 0
/* 80A0507C  38 E0 00 00 */	li r7, 0
/* 80A05080  4B 74 6B F9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A05084  2C 03 00 00 */	cmpwi r3, 0
/* 80A05088  41 82 00 10 */	beq lbl_80A05098
/* 80A0508C  3B C0 00 01 */	li r30, 1
/* 80A05090  48 00 00 08 */	b lbl_80A05098
lbl_80A05094:
/* 80A05094  3B C0 00 01 */	li r30, 1
lbl_80A05098:
/* 80A05098  7F C3 F3 78 */	mr r3, r30
/* 80A0509C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A050A0  4B 95 D1 81 */	bl _restgpr_27
/* 80A050A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A050A8  7C 08 03 A6 */	mtlr r0
/* 80A050AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A050B0  4E 80 00 20 */	blr 
