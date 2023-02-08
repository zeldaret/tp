lbl_80A2DD70:
/* 80A2DD70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2DD74  7C 08 02 A6 */	mflr r0
/* 80A2DD78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2DD7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2DD80  4B 93 44 55 */	bl _savegpr_27
/* 80A2DD84  7C 7E 1B 78 */	mr r30, r3
/* 80A2DD88  7C 9B 23 78 */	mr r27, r4
/* 80A2DD8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2DD90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2DD94  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80A2DD98  3B E0 00 00 */	li r31, 0
/* 80A2DD9C  3B 80 FF FF */	li r28, -1
/* 80A2DDA0  7F A3 EB 78 */	mr r3, r29
/* 80A2DDA4  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A2DDA8  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A2DDAC  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A2DDB0  38 C0 00 03 */	li r6, 3
/* 80A2DDB4  4B 61 A3 39 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A2DDB8  28 03 00 00 */	cmplwi r3, 0
/* 80A2DDBC  41 82 00 08 */	beq lbl_80A2DDC4
/* 80A2DDC0  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A2DDC4:
/* 80A2DDC4  7F A3 EB 78 */	mr r3, r29
/* 80A2DDC8  7F 64 DB 78 */	mr r4, r27
/* 80A2DDCC  4B 61 9F 81 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A2DDD0  2C 03 00 00 */	cmpwi r3, 0
/* 80A2DDD4  41 82 00 8C */	beq lbl_80A2DE60
/* 80A2DDD8  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80A2DDDC  41 82 00 6C */	beq lbl_80A2DE48
/* 80A2DDE0  40 80 00 80 */	bge lbl_80A2DE60
/* 80A2DDE4  2C 1C 00 00 */	cmpwi r28, 0
/* 80A2DDE8  41 82 00 08 */	beq lbl_80A2DDF0
/* 80A2DDEC  48 00 00 74 */	b lbl_80A2DE60
lbl_80A2DDF0:
/* 80A2DDF0  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A2DDF4  2C 00 00 01 */	cmpwi r0, 1
/* 80A2DDF8  41 82 00 2C */	beq lbl_80A2DE24
/* 80A2DDFC  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2DE00  4B 71 78 FD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A2DE04  38 00 00 00 */	li r0, 0
/* 80A2DE08  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A2DE0C  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A2DE10  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A2DE14  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A2DE18  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2DE1C  38 00 00 01 */	li r0, 1
/* 80A2DE20  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A2DE24:
/* 80A2DE24  38 00 00 00 */	li r0, 0
/* 80A2DE28  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2DE2C  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A2DE30  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A2DE34  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A2DE38  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A2DE3C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A2DE40  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A2DE44  48 00 00 1C */	b lbl_80A2DE60
lbl_80A2DE48:
/* 80A2DE48  38 00 00 02 */	li r0, 2
/* 80A2DE4C  B0 1E 0D FE */	sth r0, 0xdfe(r30)
/* 80A2DE50  7F C3 F3 78 */	mr r3, r30
/* 80A2DE54  80 9E 0A B0 */	lwz r4, 0xab0(r30)
/* 80A2DE58  38 A0 00 00 */	li r5, 0
/* 80A2DE5C  48 00 D5 8D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A2DE60:
/* 80A2DE60  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80A2DE64  41 82 00 D8 */	beq lbl_80A2DF3C
/* 80A2DE68  40 80 00 FC */	bge lbl_80A2DF64
/* 80A2DE6C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A2DE70  41 82 00 08 */	beq lbl_80A2DE78
/* 80A2DE74  48 00 00 F0 */	b lbl_80A2DF64
lbl_80A2DE78:
/* 80A2DE78  7F C3 F3 78 */	mr r3, r30
/* 80A2DE7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2DE80  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2DE84  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A2DE88  4B 5E C8 89 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2DE8C  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A2DE90  7C 60 07 34 */	extsh r0, r3
/* 80A2DE94  7C 04 00 00 */	cmpw r4, r0
/* 80A2DE98  41 82 00 9C */	beq lbl_80A2DF34
/* 80A2DE9C  7F C3 F3 78 */	mr r3, r30
/* 80A2DEA0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A2DEA4  4B 5E C8 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2DEA8  7C 64 1B 78 */	mr r4, r3
/* 80A2DEAC  7F C3 F3 78 */	mr r3, r30
/* 80A2DEB0  38 A0 00 01 */	li r5, 1
/* 80A2DEB4  38 C0 00 20 */	li r6, 0x20
/* 80A2DEB8  38 E0 00 14 */	li r7, 0x14
/* 80A2DEBC  39 00 00 00 */	li r8, 0
/* 80A2DEC0  48 00 D3 61 */	bl step__10daNpc_Kn_cFsiiii
/* 80A2DEC4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2DEC8  41 82 00 A0 */	beq lbl_80A2DF68
/* 80A2DECC  3B E0 00 01 */	li r31, 1
/* 80A2DED0  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A2DED4  2C 00 00 01 */	cmpwi r0, 1
/* 80A2DED8  41 82 00 28 */	beq lbl_80A2DF00
/* 80A2DEDC  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A2DEE0  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2DEE4  4B 71 79 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2DEE8  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A2DEEC  38 00 00 01 */	li r0, 1
/* 80A2DEF0  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2DEF4  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A2DEF8  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A2DEFC  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2DF00:
/* 80A2DF00  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A2DF04  2C 00 00 00 */	cmpwi r0, 0
/* 80A2DF08  41 82 00 60 */	beq lbl_80A2DF68
/* 80A2DF0C  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A2DF10  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A2DF14  4B 71 79 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2DF18  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A2DF1C  38 00 00 00 */	li r0, 0
/* 80A2DF20  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A2DF24  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A2DF28  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A2DF2C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A2DF30  48 00 00 38 */	b lbl_80A2DF68
lbl_80A2DF34:
/* 80A2DF34  3B E0 00 01 */	li r31, 1
/* 80A2DF38  48 00 00 30 */	b lbl_80A2DF68
lbl_80A2DF3C:
/* 80A2DF3C  7F C3 F3 78 */	mr r3, r30
/* 80A2DF40  38 80 00 00 */	li r4, 0
/* 80A2DF44  38 A0 00 00 */	li r5, 0
/* 80A2DF48  38 C0 00 00 */	li r6, 0
/* 80A2DF4C  38 E0 00 00 */	li r7, 0
/* 80A2DF50  48 00 D4 F9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A2DF54  2C 03 00 00 */	cmpwi r3, 0
/* 80A2DF58  41 82 00 10 */	beq lbl_80A2DF68
/* 80A2DF5C  3B E0 00 01 */	li r31, 1
/* 80A2DF60  48 00 00 08 */	b lbl_80A2DF68
lbl_80A2DF64:
/* 80A2DF64  3B E0 00 01 */	li r31, 1
lbl_80A2DF68:
/* 80A2DF68  7F E3 FB 78 */	mr r3, r31
/* 80A2DF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2DF70  4B 93 42 B1 */	bl _restgpr_27
/* 80A2DF74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2DF78  7C 08 03 A6 */	mtlr r0
/* 80A2DF7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2DF80  4E 80 00 20 */	blr 
