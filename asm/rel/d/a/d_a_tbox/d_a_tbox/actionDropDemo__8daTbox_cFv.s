lbl_80493D90:
/* 80493D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493D94  7C 08 02 A6 */	mflr r0
/* 80493D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80493DA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80493DA4  7C 7F 1B 78 */	mr r31, r3
/* 80493DA8  A8 83 09 7A */	lha r4, 0x97a(r3)
/* 80493DAC  2C 04 FF FF */	cmpwi r4, -1
/* 80493DB0  41 82 00 B8 */	beq lbl_80493E68
/* 80493DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493DB8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80493DBC  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80493DC0  4B BB 3C B8 */	b endCheck__16dEvent_manager_cFs
/* 80493DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80493DC8  41 82 00 94 */	beq lbl_80493E5C
/* 80493DCC  3C 60 80 49 */	lis r3, lit_5303@ha
/* 80493DD0  38 83 66 00 */	addi r4, r3, lit_5303@l
/* 80493DD4  80 64 00 00 */	lwz r3, 0(r4)
/* 80493DD8  80 04 00 04 */	lwz r0, 4(r4)
/* 80493DDC  90 7F 07 40 */	stw r3, 0x740(r31)
/* 80493DE0  90 1F 07 44 */	stw r0, 0x744(r31)
/* 80493DE4  80 04 00 08 */	lwz r0, 8(r4)
/* 80493DE8  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80493DEC  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80493DF0  4B BA E6 78 */	b reset__14dEvt_control_cFv
/* 80493DF4  7F E3 FB 78 */	mr r3, r31
/* 80493DF8  4B FF D6 25 */	bl setDzb__8daTbox_cFv
/* 80493DFC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80493E00  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80493E04  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80493E08  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80493E0C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80493E10  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80493E14  88 1F 09 C9 */	lbz r0, 0x9c9(r31)
/* 80493E18  28 00 00 00 */	cmplwi r0, 0
/* 80493E1C  41 82 00 A0 */	beq lbl_80493EBC
/* 80493E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493E24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80493E28  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80493E2C  7C 00 07 74 */	extsb r0, r0
/* 80493E30  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80493E34  7C 63 02 14 */	add r3, r3, r0
/* 80493E38  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 80493E3C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80493E40  4B CC D6 6C */	b Start__9dCamera_cFv
/* 80493E44  38 7E 02 48 */	addi r3, r30, 0x248
/* 80493E48  38 80 00 00 */	li r4, 0
/* 80493E4C  4B CC F1 C0 */	b SetTrimSize__9dCamera_cFl
/* 80493E50  38 00 00 00 */	li r0, 0
/* 80493E54  98 1F 09 C9 */	stb r0, 0x9c9(r31)
/* 80493E58  48 00 00 64 */	b lbl_80493EBC
lbl_80493E5C:
/* 80493E5C  7F E3 FB 78 */	mr r3, r31
/* 80493E60  4B FF F6 B9 */	bl demoProc__8daTbox_cFv
/* 80493E64  48 00 00 58 */	b lbl_80493EBC
lbl_80493E68:
/* 80493E68  4B FF F0 E9 */	bl dropProc__8daTbox_cFv
/* 80493E6C  80 1F 07 8C */	lwz r0, 0x78c(r31)
/* 80493E70  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80493E74  41 82 00 48 */	beq lbl_80493EBC
/* 80493E78  88 1F 09 7D */	lbz r0, 0x97d(r31)
/* 80493E7C  28 00 00 00 */	cmplwi r0, 0
/* 80493E80  41 82 00 3C */	beq lbl_80493EBC
/* 80493E84  3C 60 80 49 */	lis r3, lit_5312@ha
/* 80493E88  38 83 66 0C */	addi r4, r3, lit_5312@l
/* 80493E8C  80 64 00 00 */	lwz r3, 0(r4)
/* 80493E90  80 04 00 04 */	lwz r0, 4(r4)
/* 80493E94  90 7F 07 40 */	stw r3, 0x740(r31)
/* 80493E98  90 1F 07 44 */	stw r0, 0x744(r31)
/* 80493E9C  80 04 00 08 */	lwz r0, 8(r4)
/* 80493EA0  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80493EA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80493EA8  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80493EAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80493EB0  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80493EB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80493EB8  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
lbl_80493EBC:
/* 80493EBC  38 60 00 01 */	li r3, 1
/* 80493EC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80493EC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80493EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493ECC  7C 08 03 A6 */	mtlr r0
/* 80493ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80493ED4  4E 80 00 20 */	blr 
