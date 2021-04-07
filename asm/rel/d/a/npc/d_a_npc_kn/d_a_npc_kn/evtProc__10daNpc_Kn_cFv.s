lbl_80A39BBC:
/* 80A39BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A39BC0  7C 08 02 A6 */	mflr r0
/* 80A39BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A39BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A39BCC  4B 92 86 0D */	bl _savegpr_28
/* 80A39BD0  7C 7E 1B 78 */	mr r30, r3
/* 80A39BD4  3B E0 00 00 */	li r31, 0
/* 80A39BD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A39BDC  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A39BE0  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80A39BE4  28 00 00 00 */	cmplwi r0, 0
/* 80A39BE8  41 82 01 8C */	beq lbl_80A39D74
/* 80A39BEC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A39BF0  28 00 00 01 */	cmplwi r0, 1
/* 80A39BF4  40 82 00 2C */	bne lbl_80A39C20
/* 80A39BF8  81 83 0E 40 */	lwz r12, 0xe40(r3)
/* 80A39BFC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A39C00  7D 89 03 A6 */	mtctr r12
/* 80A39C04  4E 80 04 21 */	bctrl 
/* 80A39C08  2C 03 00 00 */	cmpwi r3, 0
/* 80A39C0C  40 82 00 0C */	bne lbl_80A39C18
/* 80A39C10  7F C3 F3 78 */	mr r3, r30
/* 80A39C14  4B FF 26 21 */	bl evtTalk__10daNpc_Kn_cFv
lbl_80A39C18:
/* 80A39C18  3B E0 00 01 */	li r31, 1
/* 80A39C1C  48 00 00 AC */	b lbl_80A39CC8
lbl_80A39C20:
/* 80A39C20  28 00 00 02 */	cmplwi r0, 2
/* 80A39C24  40 82 00 48 */	bne lbl_80A39C6C
/* 80A39C28  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80A39C2C  A8 9E 0E 24 */	lha r4, 0xe24(r30)
/* 80A39C30  4B 60 DE 49 */	bl endCheck__16dEvent_manager_cFs
/* 80A39C34  2C 03 00 00 */	cmpwi r3, 0
/* 80A39C38  41 82 00 34 */	beq lbl_80A39C6C
/* 80A39C3C  7F C3 F3 78 */	mr r3, r30
/* 80A39C40  81 9E 0E 40 */	lwz r12, 0xe40(r30)
/* 80A39C44  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A39C48  7D 89 03 A6 */	mtctr r12
/* 80A39C4C  4E 80 04 21 */	bctrl 
/* 80A39C50  2C 03 00 00 */	cmpwi r3, 0
/* 80A39C54  41 82 00 74 */	beq lbl_80A39CC8
/* 80A39C58  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A39C5C  4B 60 88 0D */	bl reset__14dEvt_control_cFv
/* 80A39C60  38 00 FF FF */	li r0, -1
/* 80A39C64  B0 1E 0E 24 */	sth r0, 0xe24(r30)
/* 80A39C68  48 00 00 60 */	b lbl_80A39CC8
lbl_80A39C6C:
/* 80A39C6C  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80A39C70  4B 60 E7 79 */	bl getRunEventName__16dEvent_manager_cFv
/* 80A39C74  3C 80 80 A4 */	lis r4, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A39C78  38 84 0A F8 */	addi r4, r4, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A39C7C  4B 92 ED 19 */	bl strcmp
/* 80A39C80  2C 03 00 00 */	cmpwi r3, 0
/* 80A39C84  40 82 00 38 */	bne lbl_80A39CBC
/* 80A39C88  80 7E 0D C4 */	lwz r3, 0xdc4(r30)
/* 80A39C8C  3C 03 00 01 */	addis r0, r3, 1
/* 80A39C90  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A39C94  41 82 00 28 */	beq lbl_80A39CBC
/* 80A39C98  3B BD 4E C8 */	addi r29, r29, 0x4ec8
/* 80A39C9C  7F A3 EB 78 */	mr r3, r29
/* 80A39CA0  38 80 00 00 */	li r4, 0
/* 80A39CA4  4B 60 99 E9 */	bl setPtT__14dEvt_control_cFPv
/* 80A39CA8  7F A3 EB 78 */	mr r3, r29
/* 80A39CAC  80 9E 0D C4 */	lwz r4, 0xdc4(r30)
/* 80A39CB0  4B 60 9A 3D */	bl setPtI_Id__14dEvt_control_cFUi
/* 80A39CB4  38 00 FF FF */	li r0, -1
/* 80A39CB8  90 1E 0D C4 */	stw r0, 0xdc4(r30)
lbl_80A39CBC:
/* 80A39CBC  7F C3 F3 78 */	mr r3, r30
/* 80A39CC0  4B FF 26 59 */	bl evtCutProc__10daNpc_Kn_cFv
/* 80A39CC4  7C 7F 1B 78 */	mr r31, r3
lbl_80A39CC8:
/* 80A39CC8  83 9E 0D DC */	lwz r28, 0xddc(r30)
/* 80A39CCC  7F C3 F3 78 */	mr r3, r30
/* 80A39CD0  38 81 00 0C */	addi r4, r1, 0xc
/* 80A39CD4  38 A1 00 08 */	addi r5, r1, 8
/* 80A39CD8  7F C6 F3 78 */	mr r6, r30
/* 80A39CDC  88 FE 0E 34 */	lbz r7, 0xe34(r30)
/* 80A39CE0  4B FF FA 59 */	bl ctrlMsgAnm__10daNpc_Kn_cFPiPiP10fopAc_ac_ci
/* 80A39CE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A39CE8  41 82 00 6C */	beq lbl_80A39D54
/* 80A39CEC  88 1E 0E 2D */	lbz r0, 0xe2d(r30)
/* 80A39CF0  28 00 00 00 */	cmplwi r0, 0
/* 80A39CF4  41 82 00 AC */	beq lbl_80A39DA0
/* 80A39CF8  83 81 00 0C */	lwz r28, 0xc(r1)
/* 80A39CFC  2C 1C 00 00 */	cmpwi r28, 0
/* 80A39D00  41 80 00 24 */	blt lbl_80A39D24
/* 80A39D04  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A39D08  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A39D0C  4B 70 BB 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A39D10  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A39D14  93 9E 0B 8C */	stw r28, 0xb8c(r30)
/* 80A39D18  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A39D1C  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A39D20  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A39D24:
/* 80A39D24  83 81 00 08 */	lwz r28, 8(r1)
/* 80A39D28  2C 1C 00 00 */	cmpwi r28, 0
/* 80A39D2C  41 80 00 74 */	blt lbl_80A39DA0
/* 80A39D30  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A39D34  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A39D38  4B 70 BB 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A39D3C  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A39D40  93 9E 0B B0 */	stw r28, 0xbb0(r30)
/* 80A39D44  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A39D48  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A39D4C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A39D50  48 00 00 50 */	b lbl_80A39DA0
lbl_80A39D54:
/* 80A39D54  2C 1C 00 00 */	cmpwi r28, 0
/* 80A39D58  41 82 00 48 */	beq lbl_80A39DA0
/* 80A39D5C  88 1E 0E 2D */	lbz r0, 0xe2d(r30)
/* 80A39D60  28 00 00 00 */	cmplwi r0, 0
/* 80A39D64  41 82 00 3C */	beq lbl_80A39DA0
/* 80A39D68  7F C3 F3 78 */	mr r3, r30
/* 80A39D6C  4B FF 24 65 */	bl setAfterTalkMotion__10daNpc_Kn_cFv
/* 80A39D70  48 00 00 30 */	b lbl_80A39DA0
lbl_80A39D74:
/* 80A39D74  80 1E 0D D4 */	lwz r0, 0xdd4(r30)
/* 80A39D78  2C 00 FF FF */	cmpwi r0, -1
/* 80A39D7C  41 82 00 14 */	beq lbl_80A39D90
/* 80A39D80  38 00 00 01 */	li r0, 1
/* 80A39D84  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
/* 80A39D88  38 00 FF FF */	li r0, -1
/* 80A39D8C  90 1E 0D D4 */	stw r0, 0xdd4(r30)
lbl_80A39D90:
/* 80A39D90  38 00 00 00 */	li r0, 0
/* 80A39D94  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 80A39D98  38 00 00 01 */	li r0, 1
/* 80A39D9C  98 1E 0E 2D */	stb r0, 0xe2d(r30)
lbl_80A39DA0:
/* 80A39DA0  7F E3 FB 78 */	mr r3, r31
/* 80A39DA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A39DA8  4B 92 84 7D */	bl _restgpr_28
/* 80A39DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A39DB0  7C 08 03 A6 */	mtlr r0
/* 80A39DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A39DB8  4E 80 00 20 */	blr 
