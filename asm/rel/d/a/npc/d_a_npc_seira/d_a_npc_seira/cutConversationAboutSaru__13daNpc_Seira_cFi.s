lbl_80ACD9D4:
/* 80ACD9D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ACD9D8  7C 08 02 A6 */	mflr r0
/* 80ACD9DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ACD9E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80ACD9E4  4B 89 47 E9 */	bl _savegpr_25
/* 80ACD9E8  7C 79 1B 78 */	mr r25, r3
/* 80ACD9EC  7C 9A 23 78 */	mr r26, r4
/* 80ACD9F0  3C 60 80 AD */	lis r3, m__19daNpc_Seira_Param_c@ha /* 0x80ACFDF0@ha */
/* 80ACD9F4  3B E3 FD F0 */	addi r31, r3, m__19daNpc_Seira_Param_c@l /* 0x80ACFDF0@l */
/* 80ACD9F8  3B A0 00 00 */	li r29, 0
/* 80ACD9FC  3B 80 FF FF */	li r28, -1
/* 80ACDA00  3B 60 00 00 */	li r27, 0
/* 80ACDA04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACDA08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACDA0C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80ACDA10  7F C3 F3 78 */	mr r3, r30
/* 80ACDA14  3C A0 80 AD */	lis r5, d_a_npc_seira__stringBase0@ha /* 0x80ACFF04@ha */
/* 80ACDA18  38 A5 FF 04 */	addi r5, r5, d_a_npc_seira__stringBase0@l /* 0x80ACFF04@l */
/* 80ACDA1C  38 A5 00 79 */	addi r5, r5, 0x79
/* 80ACDA20  38 C0 00 03 */	li r6, 3
/* 80ACDA24  4B 57 A6 C9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ACDA28  28 03 00 00 */	cmplwi r3, 0
/* 80ACDA2C  41 82 00 08 */	beq lbl_80ACDA34
/* 80ACDA30  83 83 00 00 */	lwz r28, 0(r3)
lbl_80ACDA34:
/* 80ACDA34  7F C3 F3 78 */	mr r3, r30
/* 80ACDA38  7F 44 D3 78 */	mr r4, r26
/* 80ACDA3C  3C A0 80 AD */	lis r5, d_a_npc_seira__stringBase0@ha /* 0x80ACFF04@ha */
/* 80ACDA40  38 A5 FF 04 */	addi r5, r5, d_a_npc_seira__stringBase0@l /* 0x80ACFF04@l */
/* 80ACDA44  38 A5 00 7D */	addi r5, r5, 0x7d
/* 80ACDA48  38 C0 00 03 */	li r6, 3
/* 80ACDA4C  4B 57 A6 A1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ACDA50  28 03 00 00 */	cmplwi r3, 0
/* 80ACDA54  41 82 00 08 */	beq lbl_80ACDA5C
/* 80ACDA58  83 63 00 00 */	lwz r27, 0(r3)
lbl_80ACDA5C:
/* 80ACDA5C  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 80ACDA60  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 80ACDA64  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ACDA68  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ACDA6C  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 80ACDA70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ACDA74  93 21 00 14 */	stw r25, 0x14(r1)
/* 80ACDA78  38 79 10 D4 */	addi r3, r25, 0x10d4
/* 80ACDA7C  4B 67 7C 8D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80ACDA80  90 61 00 18 */	stw r3, 0x18(r1)
/* 80ACDA84  38 79 10 CC */	addi r3, r25, 0x10cc
/* 80ACDA88  4B 67 7C 81 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80ACDA8C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80ACDA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACDA94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACDA98  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACDA9C  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80ACDAA0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ACDAA4  90 04 5E F4 */	stw r0, 0x5ef4(r4)
/* 80ACDAA8  90 64 5E F8 */	stw r3, 0x5ef8(r4)
/* 80ACDAAC  38 00 00 00 */	li r0, 0
/* 80ACDAB0  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80ACDAB4  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80ACDAB8  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80ACDABC  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80ACDAC0  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80ACDAC4  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80ACDAC8  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80ACDACC  7F C3 F3 78 */	mr r3, r30
/* 80ACDAD0  7F 44 D3 78 */	mr r4, r26
/* 80ACDAD4  4B 57 A2 79 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80ACDAD8  2C 03 00 00 */	cmpwi r3, 0
/* 80ACDADC  41 82 00 5C */	beq lbl_80ACDB38
/* 80ACDAE0  2C 1C 00 01 */	cmpwi r28, 1
/* 80ACDAE4  41 82 00 54 */	beq lbl_80ACDB38
/* 80ACDAE8  40 80 00 10 */	bge lbl_80ACDAF8
/* 80ACDAEC  2C 1C 00 00 */	cmpwi r28, 0
/* 80ACDAF0  40 80 00 14 */	bge lbl_80ACDB04
/* 80ACDAF4  48 00 00 44 */	b lbl_80ACDB38
lbl_80ACDAF8:
/* 80ACDAF8  2C 1C 00 03 */	cmpwi r28, 3
/* 80ACDAFC  40 80 00 3C */	bge lbl_80ACDB38
/* 80ACDB00  48 00 00 28 */	b lbl_80ACDB28
lbl_80ACDB04:
/* 80ACDB04  38 60 00 A7 */	li r3, 0xa7
/* 80ACDB08  4B 67 F0 25 */	bl daNpcT_offTmpBit__FUl
/* 80ACDB0C  38 60 00 A8 */	li r3, 0xa8
/* 80ACDB10  4B 67 F0 1D */	bl daNpcT_offTmpBit__FUl
/* 80ACDB14  7F 23 CB 78 */	mr r3, r25
/* 80ACDB18  80 99 0A 7C */	lwz r4, 0xa7c(r25)
/* 80ACDB1C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80ACDB20  4B 67 E0 D1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80ACDB24  48 00 00 14 */	b lbl_80ACDB38
lbl_80ACDB28:
/* 80ACDB28  7F 23 CB 78 */	mr r3, r25
/* 80ACDB2C  80 99 0A 7C */	lwz r4, 0xa7c(r25)
/* 80ACDB30  38 A1 00 14 */	addi r5, r1, 0x14
/* 80ACDB34  4B 67 E0 BD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80ACDB38:
/* 80ACDB38  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 80ACDB3C  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80ACDB40  90 61 00 08 */	stw r3, 8(r1)
/* 80ACDB44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ACDB48  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 80ACDB4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ACDB50  2C 1C 00 00 */	cmpwi r28, 0
/* 80ACDB54  41 82 00 14 */	beq lbl_80ACDB68
/* 80ACDB58  41 80 00 F8 */	blt lbl_80ACDC50
/* 80ACDB5C  2C 1C 00 03 */	cmpwi r28, 3
/* 80ACDB60  40 80 00 F0 */	bge lbl_80ACDC50
/* 80ACDB64  48 00 00 70 */	b lbl_80ACDBD4
lbl_80ACDB68:
/* 80ACDB68  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80ACDB6C  2C 00 00 01 */	cmpwi r0, 1
/* 80ACDB70  41 82 00 28 */	beq lbl_80ACDB98
/* 80ACDB74  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80ACDB78  4B 67 7B 85 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACDB7C  38 00 00 00 */	li r0, 0
/* 80ACDB80  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80ACDB84  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80ACDB88  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80ACDB8C  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80ACDB90  38 00 00 01 */	li r0, 1
/* 80ACDB94  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80ACDB98:
/* 80ACDB98  38 00 00 00 */	li r0, 0
/* 80ACDB9C  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80ACDBA0  A8 99 0D C8 */	lha r4, 0xdc8(r25)
/* 80ACDBA4  A8 19 0D 7A */	lha r0, 0xd7a(r25)
/* 80ACDBA8  7C 04 00 00 */	cmpw r4, r0
/* 80ACDBAC  41 82 00 20 */	beq lbl_80ACDBCC
/* 80ACDBB0  7F 23 CB 78 */	mr r3, r25
/* 80ACDBB4  38 A0 00 0D */	li r5, 0xd
/* 80ACDBB8  38 C0 00 18 */	li r6, 0x18
/* 80ACDBBC  38 E0 00 0F */	li r7, 0xf
/* 80ACDBC0  39 00 00 00 */	li r8, 0
/* 80ACDBC4  4B 67 DA 85 */	bl step__8daNpcT_cFsiiii
/* 80ACDBC8  48 00 00 88 */	b lbl_80ACDC50
lbl_80ACDBCC:
/* 80ACDBCC  3B A0 00 01 */	li r29, 1
/* 80ACDBD0  48 00 00 80 */	b lbl_80ACDC50
lbl_80ACDBD4:
/* 80ACDBD4  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80ACDBD8  2C 00 00 01 */	cmpwi r0, 1
/* 80ACDBDC  41 82 00 28 */	beq lbl_80ACDC04
/* 80ACDBE0  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80ACDBE4  4B 67 7B 19 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACDBE8  38 00 00 00 */	li r0, 0
/* 80ACDBEC  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80ACDBF0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80ACDBF4  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80ACDBF8  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80ACDBFC  38 00 00 01 */	li r0, 1
/* 80ACDC00  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80ACDC04:
/* 80ACDC04  38 00 00 00 */	li r0, 0
/* 80ACDC08  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80ACDC0C  93 61 00 08 */	stw r27, 8(r1)
/* 80ACDC10  7F 23 CB 78 */	mr r3, r25
/* 80ACDC14  38 81 00 08 */	addi r4, r1, 8
/* 80ACDC18  38 A0 00 00 */	li r5, 0
/* 80ACDC1C  38 C1 00 14 */	addi r6, r1, 0x14
/* 80ACDC20  38 E0 00 00 */	li r7, 0
/* 80ACDC24  4B 67 E0 55 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80ACDC28  2C 03 00 00 */	cmpwi r3, 0
/* 80ACDC2C  41 82 00 24 */	beq lbl_80ACDC50
/* 80ACDC30  2C 1B 00 00 */	cmpwi r27, 0
/* 80ACDC34  40 82 00 18 */	bne lbl_80ACDC4C
/* 80ACDC38  88 19 09 9A */	lbz r0, 0x99a(r25)
/* 80ACDC3C  28 00 00 01 */	cmplwi r0, 1
/* 80ACDC40  40 82 00 10 */	bne lbl_80ACDC50
/* 80ACDC44  3B A0 00 01 */	li r29, 1
/* 80ACDC48  48 00 00 08 */	b lbl_80ACDC50
lbl_80ACDC4C:
/* 80ACDC4C  3B A0 00 01 */	li r29, 1
lbl_80ACDC50:
/* 80ACDC50  7F A3 EB 78 */	mr r3, r29
/* 80ACDC54  39 61 00 40 */	addi r11, r1, 0x40
/* 80ACDC58  4B 89 45 C1 */	bl _restgpr_25
/* 80ACDC5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ACDC60  7C 08 03 A6 */	mtlr r0
/* 80ACDC64  38 21 00 40 */	addi r1, r1, 0x40
/* 80ACDC68  4E 80 00 20 */	blr 
