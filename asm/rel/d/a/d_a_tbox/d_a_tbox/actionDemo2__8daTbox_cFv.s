lbl_80493CC8:
/* 80493CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493CCC  7C 08 02 A6 */	mflr r0
/* 80493CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80493CD8  7C 7F 1B 78 */	mr r31, r3
/* 80493CDC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80493CE0  54 00 46 3E */	srwi r0, r0, 0x18
/* 80493CE4  28 00 00 FF */	cmplwi r0, 0xff
/* 80493CE8  40 82 00 28 */	bne lbl_80493D10
/* 80493CEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80493CF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80493CF4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80493CF8  3C 80 80 49 */	lis r4, d_a_tbox__stringBase0@ha /* 0x80496334@ha */
/* 80493CFC  38 84 63 34 */	addi r4, r4, d_a_tbox__stringBase0@l /* 0x80496334@l */
/* 80493D00  38 84 00 E4 */	addi r4, r4, 0xe4
/* 80493D04  4B BB 3D D9 */	bl endCheckOld__16dEvent_manager_cFPCc
/* 80493D08  2C 03 00 00 */	cmpwi r3, 0
/* 80493D0C  40 82 00 30 */	bne lbl_80493D3C
lbl_80493D10:
/* 80493D10  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80493D14  54 00 46 3E */	srwi r0, r0, 0x18
/* 80493D18  28 00 00 FF */	cmplwi r0, 0xff
/* 80493D1C  41 82 00 54 */	beq lbl_80493D70
/* 80493D20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80493D24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80493D28  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80493D2C  A8 9F 09 7A */	lha r4, 0x97a(r31)
/* 80493D30  4B BB 3D 49 */	bl endCheck__16dEvent_manager_cFs
/* 80493D34  2C 03 00 00 */	cmpwi r3, 0
/* 80493D38  41 82 00 38 */	beq lbl_80493D70
lbl_80493D3C:
/* 80493D3C  3C 60 80 49 */	lis r3, lit_5283@ha /* 0x804965F4@ha */
/* 80493D40  38 83 65 F4 */	addi r4, r3, lit_5283@l /* 0x804965F4@l */
/* 80493D44  80 64 00 00 */	lwz r3, 0(r4)
/* 80493D48  80 04 00 04 */	lwz r0, 4(r4)
/* 80493D4C  90 7F 07 40 */	stw r3, 0x740(r31)
/* 80493D50  90 1F 07 44 */	stw r0, 0x744(r31)
/* 80493D54  80 04 00 08 */	lwz r0, 8(r4)
/* 80493D58  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80493D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80493D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80493D64  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80493D68  4B BA E7 01 */	bl reset__14dEvt_control_cFv
/* 80493D6C  48 00 00 0C */	b lbl_80493D78
lbl_80493D70:
/* 80493D70  7F E3 FB 78 */	mr r3, r31
/* 80493D74  4B FF F7 A5 */	bl demoProc__8daTbox_cFv
lbl_80493D78:
/* 80493D78  38 60 00 01 */	li r3, 1
/* 80493D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80493D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493D84  7C 08 03 A6 */	mtlr r0
/* 80493D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80493D8C  4E 80 00 20 */	blr 
