lbl_80A46C48:
/* 80A46C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A46C4C  7C 08 02 A6 */	mflr r0
/* 80A46C50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A46C54  39 61 00 20 */	addi r11, r1, 0x20
/* 80A46C58  4B 91 B5 7D */	bl _savegpr_27
/* 80A46C5C  7C 7D 1B 78 */	mr r29, r3
/* 80A46C60  7C 9B 23 78 */	mr r27, r4
/* 80A46C64  3B E0 00 00 */	li r31, 0
/* 80A46C68  3B C0 FF FF */	li r30, -1
/* 80A46C6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A46C70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A46C74  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A46C78  7F 83 E3 78 */	mr r3, r28
/* 80A46C7C  3C A0 80 A5 */	lis r5, d_a_npc_kolinb__stringBase0@ha /* 0x80A487DC@ha */
/* 80A46C80  38 A5 87 DC */	addi r5, r5, d_a_npc_kolinb__stringBase0@l /* 0x80A487DC@l */
/* 80A46C84  38 A5 00 71 */	addi r5, r5, 0x71
/* 80A46C88  38 C0 00 03 */	li r6, 3
/* 80A46C8C  4B 60 14 61 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A46C90  28 03 00 00 */	cmplwi r3, 0
/* 80A46C94  41 82 00 08 */	beq lbl_80A46C9C
/* 80A46C98  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A46C9C:
/* 80A46C9C  7F 83 E3 78 */	mr r3, r28
/* 80A46CA0  7F 64 DB 78 */	mr r4, r27
/* 80A46CA4  4B 60 10 A9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A46CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A46CAC  41 82 00 F8 */	beq lbl_80A46DA4
/* 80A46CB0  2C 1E 00 01 */	cmpwi r30, 1
/* 80A46CB4  41 82 00 20 */	beq lbl_80A46CD4
/* 80A46CB8  40 80 00 EC */	bge lbl_80A46DA4
/* 80A46CBC  2C 1E 00 00 */	cmpwi r30, 0
/* 80A46CC0  40 80 00 08 */	bge lbl_80A46CC8
/* 80A46CC4  48 00 00 E0 */	b lbl_80A46DA4
lbl_80A46CC8:
/* 80A46CC8  38 00 00 3D */	li r0, 0x3d
/* 80A46CCC  90 1D 0D C4 */	stw r0, 0xdc4(r29)
/* 80A46CD0  48 00 00 D4 */	b lbl_80A46DA4
lbl_80A46CD4:
/* 80A46CD4  88 1D 0F B4 */	lbz r0, 0xfb4(r29)
/* 80A46CD8  28 00 00 02 */	cmplwi r0, 2
/* 80A46CDC  40 82 00 68 */	bne lbl_80A46D44
/* 80A46CE0  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A46CE4  2C 00 00 05 */	cmpwi r0, 5
/* 80A46CE8  41 82 00 28 */	beq lbl_80A46D10
/* 80A46CEC  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A46CF0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A46CF4  4B 6F EB A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46CF8  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A46CFC  38 00 00 05 */	li r0, 5
/* 80A46D00  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A46D04  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46D08  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46D0C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A46D10:
/* 80A46D10  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A46D14  2C 00 00 05 */	cmpwi r0, 5
/* 80A46D18  41 82 00 8C */	beq lbl_80A46DA4
/* 80A46D1C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A46D20  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A46D24  4B 6F EB 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46D28  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A46D2C  38 00 00 05 */	li r0, 5
/* 80A46D30  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A46D34  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46D38  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46D3C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A46D40  48 00 00 64 */	b lbl_80A46DA4
lbl_80A46D44:
/* 80A46D44  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A46D48  2C 00 00 00 */	cmpwi r0, 0
/* 80A46D4C  41 82 00 28 */	beq lbl_80A46D74
/* 80A46D50  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A46D54  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A46D58  4B 6F EB 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46D5C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A46D60  38 00 00 00 */	li r0, 0
/* 80A46D64  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A46D68  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46D6C  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46D70  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A46D74:
/* 80A46D74  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A46D78  2C 00 00 00 */	cmpwi r0, 0
/* 80A46D7C  41 82 00 28 */	beq lbl_80A46DA4
/* 80A46D80  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A46D84  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A46D88  4B 6F EB 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46D8C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A46D90  38 00 00 00 */	li r0, 0
/* 80A46D94  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A46D98  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46D9C  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46DA0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A46DA4:
/* 80A46DA4  2C 1E 00 01 */	cmpwi r30, 1
/* 80A46DA8  41 82 01 1C */	beq lbl_80A46EC4
/* 80A46DAC  40 80 01 1C */	bge lbl_80A46EC8
/* 80A46DB0  2C 1E 00 00 */	cmpwi r30, 0
/* 80A46DB4  40 80 00 08 */	bge lbl_80A46DBC
/* 80A46DB8  48 00 01 10 */	b lbl_80A46EC8
lbl_80A46DBC:
/* 80A46DBC  7F A3 EB 78 */	mr r3, r29
/* 80A46DC0  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80A46DC4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A46DC8  7D 89 03 A6 */	mtctr r12
/* 80A46DCC  4E 80 04 21 */	bctrl 
/* 80A46DD0  80 1D 0D C4 */	lwz r0, 0xdc4(r29)
/* 80A46DD4  2C 00 00 00 */	cmpwi r0, 0
/* 80A46DD8  41 82 00 E4 */	beq lbl_80A46EBC
/* 80A46DDC  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80A46DE0  48 00 16 55 */	bl func_80A48434
/* 80A46DE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A46DE8  40 82 00 D4 */	bne lbl_80A46EBC
/* 80A46DEC  88 1D 0F B4 */	lbz r0, 0xfb4(r29)
/* 80A46DF0  28 00 00 02 */	cmplwi r0, 2
/* 80A46DF4  40 82 00 68 */	bne lbl_80A46E5C
/* 80A46DF8  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A46DFC  2C 00 00 06 */	cmpwi r0, 6
/* 80A46E00  41 82 00 28 */	beq lbl_80A46E28
/* 80A46E04  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A46E08  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A46E0C  4B 6F EA 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46E10  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A46E14  38 00 00 06 */	li r0, 6
/* 80A46E18  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A46E1C  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46E20  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46E24  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A46E28:
/* 80A46E28  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A46E2C  2C 00 00 06 */	cmpwi r0, 6
/* 80A46E30  41 82 00 8C */	beq lbl_80A46EBC
/* 80A46E34  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A46E38  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A46E3C  4B 6F EA 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46E40  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A46E44  38 00 00 06 */	li r0, 6
/* 80A46E48  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A46E4C  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46E50  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46E54  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A46E58  48 00 00 64 */	b lbl_80A46EBC
lbl_80A46E5C:
/* 80A46E5C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A46E60  2C 00 00 03 */	cmpwi r0, 3
/* 80A46E64  41 82 00 28 */	beq lbl_80A46E8C
/* 80A46E68  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A46E6C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A46E70  4B 6F EA 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46E74  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A46E78  38 00 00 03 */	li r0, 3
/* 80A46E7C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A46E80  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46E84  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46E88  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A46E8C:
/* 80A46E8C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A46E90  2C 00 00 03 */	cmpwi r0, 3
/* 80A46E94  41 82 00 28 */	beq lbl_80A46EBC
/* 80A46E98  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A46E9C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A46EA0  4B 6F E9 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46EA4  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A46EA8  38 00 00 03 */	li r0, 3
/* 80A46EAC  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A46EB0  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46EB4  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46EB8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A46EBC:
/* 80A46EBC  3B E0 00 01 */	li r31, 1
/* 80A46EC0  48 00 00 08 */	b lbl_80A46EC8
lbl_80A46EC4:
/* 80A46EC4  3B E0 00 01 */	li r31, 1
lbl_80A46EC8:
/* 80A46EC8  7F E3 FB 78 */	mr r3, r31
/* 80A46ECC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A46ED0  4B 91 B3 51 */	bl _restgpr_27
/* 80A46ED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A46ED8  7C 08 03 A6 */	mtlr r0
/* 80A46EDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A46EE0  4E 80 00 20 */	blr 
