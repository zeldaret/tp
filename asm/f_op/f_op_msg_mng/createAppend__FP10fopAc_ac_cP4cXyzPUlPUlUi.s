lbl_8001FA6C:
/* 8001FA6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001FA70  7C 08 02 A6 */	mflr r0
/* 8001FA74  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001FA78  39 61 00 30 */	addi r11, r1, 0x30
/* 8001FA7C  48 34 27 55 */	bl _savegpr_26
/* 8001FA80  7C 7A 1B 78 */	mr r26, r3
/* 8001FA84  7C 9B 23 78 */	mr r27, r4
/* 8001FA88  7C BC 2B 78 */	mr r28, r5
/* 8001FA8C  7C DD 33 78 */	mr r29, r6
/* 8001FA90  7C FE 3B 78 */	mr r30, r7
/* 8001FA94  38 60 FF FC */	li r3, -4
/* 8001FA98  38 80 00 1C */	li r4, 0x1c
/* 8001FA9C  48 24 37 8D */	bl memalignB__3cMlFiUl
/* 8001FAA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001FAA4  40 82 00 0C */	bne lbl_8001FAB0
/* 8001FAA8  38 60 00 00 */	li r3, 0
/* 8001FAAC  48 00 00 8C */	b lbl_8001FB38
lbl_8001FAB0:
/* 8001FAB0  93 5F 00 00 */	stw r26, 0(r31)
/* 8001FAB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001FAB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001FABC  80 03 5D BC */	lwz r0, 0x5dbc(r3)
/* 8001FAC0  28 00 00 00 */	cmplwi r0, 0
/* 8001FAC4  41 82 00 0C */	beq lbl_8001FAD0
/* 8001FAC8  7F 43 D3 78 */	mr r3, r26
/* 8001FACC  48 21 87 A1 */	bl setTalkActor__12dMsgObject_cFP10fopAc_ac_c
lbl_8001FAD0:
/* 8001FAD0  28 1C 00 00 */	cmplwi r28, 0
/* 8001FAD4  41 82 00 0C */	beq lbl_8001FAE0
/* 8001FAD8  80 1C 00 00 */	lwz r0, 0(r28)
/* 8001FADC  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_8001FAE0:
/* 8001FAE0  28 1D 00 00 */	cmplwi r29, 0
/* 8001FAE4  41 82 00 0C */	beq lbl_8001FAF0
/* 8001FAE8  80 1D 00 00 */	lwz r0, 0(r29)
/* 8001FAEC  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_8001FAF0:
/* 8001FAF0  28 1B 00 00 */	cmplwi r27, 0
/* 8001FAF4  41 82 00 20 */	beq lbl_8001FB14
/* 8001FAF8  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8001FAFC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8001FB00  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8001FB04  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8001FB08  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8001FB0C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8001FB10  48 00 00 20 */	b lbl_8001FB30
lbl_8001FB14:
/* 8001FB14  C0 02 82 70 */	lfs f0, lit_3902(r2)
/* 8001FB18  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001FB1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001FB20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001FB24  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8001FB28  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8001FB2C  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8001FB30:
/* 8001FB30  93 DF 00 18 */	stw r30, 0x18(r31)
/* 8001FB34  7F E3 FB 78 */	mr r3, r31
lbl_8001FB38:
/* 8001FB38  39 61 00 30 */	addi r11, r1, 0x30
/* 8001FB3C  48 34 26 E1 */	bl _restgpr_26
/* 8001FB40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001FB44  7C 08 03 A6 */	mtlr r0
/* 8001FB48  38 21 00 30 */	addi r1, r1, 0x30
/* 8001FB4C  4E 80 00 20 */	blr 
