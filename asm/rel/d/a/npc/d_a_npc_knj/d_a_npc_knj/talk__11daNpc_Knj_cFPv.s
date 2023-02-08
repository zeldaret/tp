lbl_80A44598:
/* 80A44598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A4459C  7C 08 02 A6 */	mflr r0
/* 80A445A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A445A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A445A8  4B 91 DC 35 */	bl _savegpr_29
/* 80A445AC  7C 7F 1B 78 */	mr r31, r3
/* 80A445B0  3B A0 00 00 */	li r29, 0
/* 80A445B4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A445B8  2C 00 00 02 */	cmpwi r0, 2
/* 80A445BC  41 82 00 2C */	beq lbl_80A445E8
/* 80A445C0  40 80 01 20 */	bge lbl_80A446E0
/* 80A445C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A445C8  40 80 00 0C */	bge lbl_80A445D4
/* 80A445CC  48 00 01 14 */	b lbl_80A446E0
/* 80A445D0  48 00 01 10 */	b lbl_80A446E0
lbl_80A445D4:
/* 80A445D4  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80A445D8  38 A0 00 00 */	li r5, 0
/* 80A445DC  4B 70 76 15 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A445E0  38 00 00 02 */	li r0, 2
/* 80A445E4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A445E8:
/* 80A445E8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A445EC  28 00 00 00 */	cmplwi r0, 0
/* 80A445F0  41 82 00 0C */	beq lbl_80A445FC
/* 80A445F4  3B A0 00 01 */	li r29, 1
/* 80A445F8  48 00 00 94 */	b lbl_80A4468C
lbl_80A445FC:
/* 80A445FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A44600  2C 00 00 01 */	cmpwi r0, 1
/* 80A44604  41 82 00 2C */	beq lbl_80A44630
/* 80A44608  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A4460C  4B 70 10 F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A44610  38 00 00 00 */	li r0, 0
/* 80A44614  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A44618  3C 60 80 A4 */	lis r3, lit_4089@ha /* 0x80A4559C@ha */
/* 80A4461C  C0 03 55 9C */	lfs f0, lit_4089@l(r3)  /* 0x80A4559C@l */
/* 80A44620  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A44624  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A44628  38 00 00 01 */	li r0, 1
/* 80A4462C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A44630:
/* 80A44630  38 00 00 00 */	li r0, 0
/* 80A44634  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A44638  7F E3 FB 78 */	mr r3, r31
/* 80A4463C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A44640  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A44644  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A44648  4B 5D 60 C9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A4464C  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80A44650  7C 60 07 34 */	extsh r0, r3
/* 80A44654  7C 04 00 00 */	cmpw r4, r0
/* 80A44658  41 82 00 30 */	beq lbl_80A44688
/* 80A4465C  7F E3 FB 78 */	mr r3, r31
/* 80A44660  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A44664  4B 5D 60 AD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A44668  7C 64 1B 78 */	mr r4, r3
/* 80A4466C  7F E3 FB 78 */	mr r3, r31
/* 80A44670  38 A0 FF FF */	li r5, -1
/* 80A44674  38 C0 FF FF */	li r6, -1
/* 80A44678  38 E0 00 0F */	li r7, 0xf
/* 80A4467C  39 00 00 00 */	li r8, 0
/* 80A44680  4B 70 6F C9 */	bl step__8daNpcT_cFsiiii
/* 80A44684  48 00 00 08 */	b lbl_80A4468C
lbl_80A44688:
/* 80A44688  3B A0 00 01 */	li r29, 1
lbl_80A4468C:
/* 80A4468C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A44690  41 82 00 50 */	beq lbl_80A446E0
/* 80A44694  7F E3 FB 78 */	mr r3, r31
/* 80A44698  38 80 00 00 */	li r4, 0
/* 80A4469C  38 A0 00 00 */	li r5, 0
/* 80A446A0  38 C0 00 00 */	li r6, 0
/* 80A446A4  38 E0 00 00 */	li r7, 0
/* 80A446A8  4B 70 75 D1 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A446AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A446B0  41 82 00 30 */	beq lbl_80A446E0
/* 80A446B4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A446B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A446BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A446C0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A446C4  4B 70 10 1D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A446C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A446CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A446D0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A446D4  4B 5F DD 95 */	bl reset__14dEvt_control_cFv
/* 80A446D8  38 00 00 03 */	li r0, 3
/* 80A446DC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A446E0:
/* 80A446E0  38 60 00 00 */	li r3, 0
/* 80A446E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A446E8  4B 91 DB 41 */	bl _restgpr_29
/* 80A446EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A446F0  7C 08 03 A6 */	mtlr r0
/* 80A446F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A446F8  4E 80 00 20 */	blr 
