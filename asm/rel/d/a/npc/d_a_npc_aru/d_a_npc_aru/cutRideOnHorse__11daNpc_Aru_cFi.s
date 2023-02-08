lbl_80954894:
/* 80954894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80954898  7C 08 02 A6 */	mflr r0
/* 8095489C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809548A0  39 61 00 20 */	addi r11, r1, 0x20
/* 809548A4  4B A0 D9 31 */	bl _savegpr_27
/* 809548A8  7C 7E 1B 78 */	mr r30, r3
/* 809548AC  7C 9B 23 78 */	mr r27, r4
/* 809548B0  3B E0 00 00 */	li r31, 0
/* 809548B4  3B 80 FF FF */	li r28, -1
/* 809548B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809548BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809548C0  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 809548C4  7F A3 EB 78 */	mr r3, r29
/* 809548C8  3C A0 80 95 */	lis r5, d_a_npc_aru__stringBase0@ha /* 0x8095781C@ha */
/* 809548CC  38 A5 78 1C */	addi r5, r5, d_a_npc_aru__stringBase0@l /* 0x8095781C@l */
/* 809548D0  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 809548D4  38 C0 00 03 */	li r6, 3
/* 809548D8  4B 6F 38 15 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809548DC  28 03 00 00 */	cmplwi r3, 0
/* 809548E0  41 82 00 08 */	beq lbl_809548E8
/* 809548E4  83 83 00 00 */	lwz r28, 0(r3)
lbl_809548E8:
/* 809548E8  7F A3 EB 78 */	mr r3, r29
/* 809548EC  7F 64 DB 78 */	mr r4, r27
/* 809548F0  4B 6F 34 5D */	bl getIsAddvance__16dEvent_manager_cFi
/* 809548F4  2C 03 00 00 */	cmpwi r3, 0
/* 809548F8  41 82 00 90 */	beq lbl_80954988
/* 809548FC  2C 1C 00 01 */	cmpwi r28, 1
/* 80954900  41 82 00 28 */	beq lbl_80954928
/* 80954904  40 80 00 84 */	bge lbl_80954988
/* 80954908  2C 1C 00 00 */	cmpwi r28, 0
/* 8095490C  40 80 00 08 */	bge lbl_80954914
/* 80954910  48 00 00 78 */	b lbl_80954988
lbl_80954914:
/* 80954914  7F C3 F3 78 */	mr r3, r30
/* 80954918  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 8095491C  38 A0 00 00 */	li r5, 0
/* 80954920  4B 7F 72 D1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80954924  48 00 00 64 */	b lbl_80954988
lbl_80954928:
/* 80954928  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8095492C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80954930  41 82 00 28 */	beq lbl_80954958
/* 80954934  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80954938  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8095493C  4B 7F 0F 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80954940  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80954944  38 00 00 0C */	li r0, 0xc
/* 80954948  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8095494C  3C 60 80 95 */	lis r3, lit_4804@ha /* 0x809577B4@ha */
/* 80954950  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)  /* 0x809577B4@l */
/* 80954954  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80954958:
/* 80954958  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8095495C  2C 00 00 00 */	cmpwi r0, 0
/* 80954960  41 82 00 28 */	beq lbl_80954988
/* 80954964  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80954968  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8095496C  4B 7F 0F 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80954970  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80954974  38 00 00 00 */	li r0, 0
/* 80954978  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8095497C  3C 60 80 95 */	lis r3, lit_4804@ha /* 0x809577B4@ha */
/* 80954980  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)  /* 0x809577B4@l */
/* 80954984  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80954988:
/* 80954988  2C 1C 00 01 */	cmpwi r28, 1
/* 8095498C  41 82 00 84 */	beq lbl_80954A10
/* 80954990  40 80 00 B0 */	bge lbl_80954A40
/* 80954994  2C 1C 00 00 */	cmpwi r28, 0
/* 80954998  40 80 00 08 */	bge lbl_809549A0
/* 8095499C  48 00 00 A4 */	b lbl_80954A40
lbl_809549A0:
/* 809549A0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809549A4  2C 00 00 01 */	cmpwi r0, 1
/* 809549A8  41 82 00 2C */	beq lbl_809549D4
/* 809549AC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809549B0  4B 7F 0D 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 809549B4  38 00 00 00 */	li r0, 0
/* 809549B8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809549BC  3C 60 80 95 */	lis r3, lit_4100@ha /* 0x80957798@ha */
/* 809549C0  C0 03 77 98 */	lfs f0, lit_4100@l(r3)  /* 0x80957798@l */
/* 809549C4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809549C8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809549CC  38 00 00 01 */	li r0, 1
/* 809549D0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809549D4:
/* 809549D4  38 00 00 00 */	li r0, 0
/* 809549D8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809549DC  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 809549E0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809549E4  7C 04 00 00 */	cmpw r4, r0
/* 809549E8  40 82 00 0C */	bne lbl_809549F4
/* 809549EC  3B E0 00 01 */	li r31, 1
/* 809549F0  48 00 00 50 */	b lbl_80954A40
lbl_809549F4:
/* 809549F4  7F C3 F3 78 */	mr r3, r30
/* 809549F8  38 A0 00 0C */	li r5, 0xc
/* 809549FC  38 C0 00 0B */	li r6, 0xb
/* 80954A00  38 E0 00 0F */	li r7, 0xf
/* 80954A04  39 00 00 00 */	li r8, 0
/* 80954A08  4B 7F 6C 41 */	bl step__8daNpcT_cFsiiii
/* 80954A0C  48 00 00 34 */	b lbl_80954A40
lbl_80954A10:
/* 80954A10  7F C3 F3 78 */	mr r3, r30
/* 80954A14  38 80 00 00 */	li r4, 0
/* 80954A18  38 A0 00 00 */	li r5, 0
/* 80954A1C  38 C0 00 00 */	li r6, 0
/* 80954A20  38 E0 00 00 */	li r7, 0
/* 80954A24  4B 7F 72 55 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80954A28  2C 03 00 00 */	cmpwi r3, 0
/* 80954A2C  41 82 00 14 */	beq lbl_80954A40
/* 80954A30  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 80954A34  28 00 00 01 */	cmplwi r0, 1
/* 80954A38  40 82 00 08 */	bne lbl_80954A40
/* 80954A3C  3B E0 00 01 */	li r31, 1
lbl_80954A40:
/* 80954A40  7F E3 FB 78 */	mr r3, r31
/* 80954A44  39 61 00 20 */	addi r11, r1, 0x20
/* 80954A48  4B A0 D7 D9 */	bl _restgpr_27
/* 80954A4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80954A50  7C 08 03 A6 */	mtlr r0
/* 80954A54  38 21 00 20 */	addi r1, r1, 0x20
/* 80954A58  4E 80 00 20 */	blr 
