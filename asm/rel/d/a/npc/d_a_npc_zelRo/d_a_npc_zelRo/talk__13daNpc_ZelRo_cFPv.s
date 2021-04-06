lbl_80B7382C:
/* 80B7382C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B73830  7C 08 02 A6 */	mflr r0
/* 80B73834  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B73838  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7383C  4B 7E E9 A1 */	bl _savegpr_29
/* 80B73840  7C 7F 1B 78 */	mr r31, r3
/* 80B73844  3B A0 00 00 */	li r29, 0
/* 80B73848  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B7384C  2C 00 00 02 */	cmpwi r0, 2
/* 80B73850  41 82 00 2C */	beq lbl_80B7387C
/* 80B73854  40 80 01 20 */	bge lbl_80B73974
/* 80B73858  2C 00 00 00 */	cmpwi r0, 0
/* 80B7385C  40 80 00 0C */	bge lbl_80B73868
/* 80B73860  48 00 01 14 */	b lbl_80B73974
/* 80B73864  48 00 01 10 */	b lbl_80B73974
lbl_80B73868:
/* 80B73868  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B7386C  38 A0 00 00 */	li r5, 0
/* 80B73870  4B 5D 83 81 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B73874  38 00 00 02 */	li r0, 2
/* 80B73878  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B7387C:
/* 80B7387C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B73880  28 00 00 00 */	cmplwi r0, 0
/* 80B73884  41 82 00 0C */	beq lbl_80B73890
/* 80B73888  3B A0 00 01 */	li r29, 1
/* 80B7388C  48 00 00 94 */	b lbl_80B73920
lbl_80B73890:
/* 80B73890  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B73894  2C 00 00 01 */	cmpwi r0, 1
/* 80B73898  41 82 00 2C */	beq lbl_80B738C4
/* 80B7389C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B738A0  4B 5D 1E 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B738A4  38 00 00 00 */	li r0, 0
/* 80B738A8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B738AC  3C 60 80 B7 */	lis r3, lit_4182@ha /* 0x80B74CF8@ha */
/* 80B738B0  C0 03 4C F8 */	lfs f0, lit_4182@l(r3)  /* 0x80B74CF8@l */
/* 80B738B4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B738B8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B738BC  38 00 00 01 */	li r0, 1
/* 80B738C0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B738C4:
/* 80B738C4  38 00 00 00 */	li r0, 0
/* 80B738C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B738CC  7F E3 FB 78 */	mr r3, r31
/* 80B738D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B738D4  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B738D8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B738DC  4B 4A 6E 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B738E0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B738E4  7C 60 07 34 */	extsh r0, r3
/* 80B738E8  7C 04 00 00 */	cmpw r4, r0
/* 80B738EC  41 82 00 30 */	beq lbl_80B7391C
/* 80B738F0  7F E3 FB 78 */	mr r3, r31
/* 80B738F4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B738F8  4B 4A 6E 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B738FC  7C 64 1B 78 */	mr r4, r3
/* 80B73900  7F E3 FB 78 */	mr r3, r31
/* 80B73904  38 A0 FF FF */	li r5, -1
/* 80B73908  38 C0 FF FF */	li r6, -1
/* 80B7390C  38 E0 00 0F */	li r7, 0xf
/* 80B73910  39 00 00 00 */	li r8, 0
/* 80B73914  4B 5D 7D 35 */	bl step__8daNpcT_cFsiiii
/* 80B73918  48 00 00 08 */	b lbl_80B73920
lbl_80B7391C:
/* 80B7391C  3B A0 00 01 */	li r29, 1
lbl_80B73920:
/* 80B73920  2C 1D 00 00 */	cmpwi r29, 0
/* 80B73924  41 82 00 50 */	beq lbl_80B73974
/* 80B73928  7F E3 FB 78 */	mr r3, r31
/* 80B7392C  38 80 00 00 */	li r4, 0
/* 80B73930  38 A0 00 00 */	li r5, 0
/* 80B73934  38 C0 00 00 */	li r6, 0
/* 80B73938  38 E0 00 00 */	li r7, 0
/* 80B7393C  4B 5D 83 3D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B73940  2C 03 00 00 */	cmpwi r3, 0
/* 80B73944  41 82 00 30 */	beq lbl_80B73974
/* 80B73948  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B7394C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B73950  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B73954  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B73958  4B 5D 1D 89 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B7395C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B73960  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B73964  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B73968  4B 4C EB 01 */	bl reset__14dEvt_control_cFv
/* 80B7396C  38 00 00 03 */	li r0, 3
/* 80B73970  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B73974:
/* 80B73974  38 60 00 00 */	li r3, 0
/* 80B73978  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7397C  4B 7E E8 AD */	bl _restgpr_29
/* 80B73980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B73984  7C 08 03 A6 */	mtlr r0
/* 80B73988  38 21 00 20 */	addi r1, r1, 0x20
/* 80B7398C  4E 80 00 20 */	blr 
