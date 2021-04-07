lbl_80A2DF84:
/* 80A2DF84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2DF88  7C 08 02 A6 */	mflr r0
/* 80A2DF8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2DF90  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2DF94  4B 93 42 41 */	bl _savegpr_27
/* 80A2DF98  7C 7D 1B 78 */	mr r29, r3
/* 80A2DF9C  7C 9B 23 78 */	mr r27, r4
/* 80A2DFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2DFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2DFA8  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A2DFAC  3B E0 00 00 */	li r31, 0
/* 80A2DFB0  3B C0 FF FF */	li r30, -1
/* 80A2DFB4  7F 83 E3 78 */	mr r3, r28
/* 80A2DFB8  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A2DFBC  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A2DFC0  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A2DFC4  38 C0 00 03 */	li r6, 3
/* 80A2DFC8  4B 61 A1 25 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A2DFCC  28 03 00 00 */	cmplwi r3, 0
/* 80A2DFD0  41 82 00 08 */	beq lbl_80A2DFD8
/* 80A2DFD4  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A2DFD8:
/* 80A2DFD8  7F 83 E3 78 */	mr r3, r28
/* 80A2DFDC  7F 64 DB 78 */	mr r4, r27
/* 80A2DFE0  4B 61 9D 6D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A2DFE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2DFE8  41 82 01 34 */	beq lbl_80A2E11C
/* 80A2DFEC  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80A2DFF0  41 82 00 D4 */	beq lbl_80A2E0C4
/* 80A2DFF4  40 80 00 10 */	bge lbl_80A2E004
/* 80A2DFF8  2C 1E 00 00 */	cmpwi r30, 0
/* 80A2DFFC  41 82 00 14 */	beq lbl_80A2E010
/* 80A2E000  48 00 01 1C */	b lbl_80A2E11C
lbl_80A2E004:
/* 80A2E004  2C 1E 00 14 */	cmpwi r30, 0x14
/* 80A2E008  41 82 00 FC */	beq lbl_80A2E104
/* 80A2E00C  48 00 01 10 */	b lbl_80A2E11C
lbl_80A2E010:
/* 80A2E010  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2E014  2C 00 00 00 */	cmpwi r0, 0
/* 80A2E018  41 82 00 28 */	beq lbl_80A2E040
/* 80A2E01C  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2E020  4B 71 76 DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A2E024  38 00 00 00 */	li r0, 0
/* 80A2E028  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2E02C  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A2E030  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A2E034  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2E038  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2E03C  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2E040:
/* 80A2E040  38 00 00 00 */	li r0, 0
/* 80A2E044  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2E048  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2E04C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E050  41 82 00 28 */	beq lbl_80A2E078
/* 80A2E054  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2E058  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2E05C  4B 71 78 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E060  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2E064  38 00 00 01 */	li r0, 1
/* 80A2E068  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2E06C  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A2E070  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A2E074  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2E078:
/* 80A2E078  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2E07C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A2E080  41 82 00 28 */	beq lbl_80A2E0A8
/* 80A2E084  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2E088  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2E08C  4B 71 78 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E090  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2E094  38 00 00 16 */	li r0, 0x16
/* 80A2E098  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2E09C  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A2E0A0  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A2E0A4  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2E0A8:
/* 80A2E0A8  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A2E0AC  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A2E0B0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A2E0B4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A2E0B8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A2E0BC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2E0C0  48 00 00 5C */	b lbl_80A2E11C
lbl_80A2E0C4:
/* 80A2E0C4  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2E0C8  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E0CC  41 82 00 2C */	beq lbl_80A2E0F8
/* 80A2E0D0  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2E0D4  4B 71 76 29 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A2E0D8  38 00 00 00 */	li r0, 0
/* 80A2E0DC  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2E0E0  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A2E0E4  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A2E0E8  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2E0EC  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2E0F0  38 00 00 01 */	li r0, 1
/* 80A2E0F4  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2E0F8:
/* 80A2E0F8  38 00 00 00 */	li r0, 0
/* 80A2E0FC  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2E100  48 00 00 1C */	b lbl_80A2E11C
lbl_80A2E104:
/* 80A2E104  38 00 00 02 */	li r0, 2
/* 80A2E108  B0 1D 0D FE */	sth r0, 0xdfe(r29)
/* 80A2E10C  7F A3 EB 78 */	mr r3, r29
/* 80A2E110  80 9D 0A B0 */	lwz r4, 0xab0(r29)
/* 80A2E114  38 A0 00 00 */	li r5, 0
/* 80A2E118  48 00 D2 D1 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A2E11C:
/* 80A2E11C  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80A2E120  41 82 00 40 */	beq lbl_80A2E160
/* 80A2E124  40 80 00 10 */	bge lbl_80A2E134
/* 80A2E128  2C 1E 00 00 */	cmpwi r30, 0
/* 80A2E12C  41 82 00 14 */	beq lbl_80A2E140
/* 80A2E130  48 00 01 1C */	b lbl_80A2E24C
lbl_80A2E134:
/* 80A2E134  2C 1E 00 14 */	cmpwi r30, 0x14
/* 80A2E138  41 82 00 EC */	beq lbl_80A2E224
/* 80A2E13C  48 00 01 10 */	b lbl_80A2E24C
lbl_80A2E140:
/* 80A2E140  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2E144  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A2E148  40 82 01 08 */	bne lbl_80A2E250
/* 80A2E14C  80 1D 0B B8 */	lwz r0, 0xbb8(r29)
/* 80A2E150  2C 00 00 00 */	cmpwi r0, 0
/* 80A2E154  40 81 00 FC */	ble lbl_80A2E250
/* 80A2E158  3B E0 00 01 */	li r31, 1
/* 80A2E15C  48 00 00 F4 */	b lbl_80A2E250
lbl_80A2E160:
/* 80A2E160  7F A3 EB 78 */	mr r3, r29
/* 80A2E164  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2E168  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2E16C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A2E170  4B 5E C5 A1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E174  A8 9D 0D AE */	lha r4, 0xdae(r29)
/* 80A2E178  7C 60 07 34 */	extsh r0, r3
/* 80A2E17C  7C 04 00 00 */	cmpw r4, r0
/* 80A2E180  41 82 00 9C */	beq lbl_80A2E21C
/* 80A2E184  7F A3 EB 78 */	mr r3, r29
/* 80A2E188  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A2E18C  4B 5E C5 85 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E190  7C 64 1B 78 */	mr r4, r3
/* 80A2E194  7F A3 EB 78 */	mr r3, r29
/* 80A2E198  38 A0 00 01 */	li r5, 1
/* 80A2E19C  38 C0 00 20 */	li r6, 0x20
/* 80A2E1A0  38 E0 00 14 */	li r7, 0x14
/* 80A2E1A4  39 00 00 00 */	li r8, 0
/* 80A2E1A8  48 00 D0 79 */	bl step__10daNpc_Kn_cFsiiii
/* 80A2E1AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A2E1B0  41 82 00 A0 */	beq lbl_80A2E250
/* 80A2E1B4  3B E0 00 01 */	li r31, 1
/* 80A2E1B8  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2E1BC  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E1C0  41 82 00 28 */	beq lbl_80A2E1E8
/* 80A2E1C4  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2E1C8  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2E1CC  4B 71 76 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E1D0  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2E1D4  38 00 00 01 */	li r0, 1
/* 80A2E1D8  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2E1DC  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A2E1E0  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A2E1E4  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2E1E8:
/* 80A2E1E8  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2E1EC  2C 00 00 00 */	cmpwi r0, 0
/* 80A2E1F0  41 82 00 60 */	beq lbl_80A2E250
/* 80A2E1F4  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2E1F8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2E1FC  4B 71 76 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E200  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2E204  38 00 00 00 */	li r0, 0
/* 80A2E208  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2E20C  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A2E210  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A2E214  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A2E218  48 00 00 38 */	b lbl_80A2E250
lbl_80A2E21C:
/* 80A2E21C  3B E0 00 01 */	li r31, 1
/* 80A2E220  48 00 00 30 */	b lbl_80A2E250
lbl_80A2E224:
/* 80A2E224  7F A3 EB 78 */	mr r3, r29
/* 80A2E228  38 80 00 00 */	li r4, 0
/* 80A2E22C  38 A0 00 00 */	li r5, 0
/* 80A2E230  38 C0 00 00 */	li r6, 0
/* 80A2E234  38 E0 00 00 */	li r7, 0
/* 80A2E238  48 00 D2 11 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A2E23C  2C 03 00 00 */	cmpwi r3, 0
/* 80A2E240  41 82 00 10 */	beq lbl_80A2E250
/* 80A2E244  3B E0 00 01 */	li r31, 1
/* 80A2E248  48 00 00 08 */	b lbl_80A2E250
lbl_80A2E24C:
/* 80A2E24C  3B E0 00 01 */	li r31, 1
lbl_80A2E250:
/* 80A2E250  7F E3 FB 78 */	mr r3, r31
/* 80A2E254  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2E258  4B 93 3F C9 */	bl _restgpr_27
/* 80A2E25C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2E260  7C 08 03 A6 */	mtlr r0
/* 80A2E264  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2E268  4E 80 00 20 */	blr 
