lbl_8005195C:
/* 8005195C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80051960  7C 08 02 A6 */	mflr r0
/* 80051964  90 01 00 24 */	stw r0, 0x24(r1)
/* 80051968  39 61 00 20 */	addi r11, r1, 0x20
/* 8005196C  48 31 08 65 */	bl _savegpr_26
/* 80051970  7C 7A 1B 78 */	mr r26, r3
/* 80051974  7C 9E 23 78 */	mr r30, r4
/* 80051978  7C BF 2B 78 */	mr r31, r5
/* 8005197C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80051980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80051984  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80051988  7F 83 E3 78 */	mr r3, r28
/* 8005198C  7F 44 D3 78 */	mr r4, r26
/* 80051990  48 02 37 71 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80051994  7C 7B 1B 78 */	mr r27, r3
/* 80051998  7F 83 E3 78 */	mr r3, r28
/* 8005199C  7F 44 D3 78 */	mr r4, r26
/* 800519A0  48 02 36 41 */	bl GetRoomPathId__4dBgSFRC13cBgS_PolyInfo
/* 800519A4  C0 02 86 00 */	lfs f0, lit_3685(r2)
/* 800519A8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800519AC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800519B0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800519B4  38 00 00 00 */	li r0, 0
/* 800519B8  90 1F 00 00 */	stw r0, 0(r31)
/* 800519BC  2C 1B FF FF */	cmpwi r27, -1
/* 800519C0  40 82 00 0C */	bne lbl_800519CC
/* 800519C4  38 60 00 00 */	li r3, 0
/* 800519C8  48 00 00 E0 */	b lbl_80051AA8
lbl_800519CC:
/* 800519CC  7F 64 DB 78 */	mr r4, r27
/* 800519D0  4B FF FE 1D */	bl dPath_GetRoomPath__Fii
/* 800519D4  7C 7D 1B 79 */	or. r29, r3, r3
/* 800519D8  40 82 00 0C */	bne lbl_800519E4
/* 800519DC  38 60 00 00 */	li r3, 0
/* 800519E0  48 00 00 C8 */	b lbl_80051AA8
lbl_800519E4:
/* 800519E4  88 9D 00 06 */	lbz r4, 6(r29)
/* 800519E8  28 04 00 FF */	cmplwi r4, 0xff
/* 800519EC  41 82 00 24 */	beq lbl_80051A10
/* 800519F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800519F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800519F8  7F 65 DB 78 */	mr r5, r27
/* 800519FC  4B FE 39 65 */	bl isSwitch__10dSv_info_cCFii
/* 80051A00  2C 03 00 00 */	cmpwi r3, 0
/* 80051A04  41 82 00 0C */	beq lbl_80051A10
/* 80051A08  38 60 00 00 */	li r3, 0
/* 80051A0C  48 00 00 9C */	b lbl_80051AA8
lbl_80051A10:
/* 80051A10  7F 83 E3 78 */	mr r3, r28
/* 80051A14  7F 44 D3 78 */	mr r4, r26
/* 80051A18  48 02 36 19 */	bl GetRoomPathPntNo__4dBgSFRC13cBgS_PolyInfo
/* 80051A1C  2C 03 00 FF */	cmpwi r3, 0xff
/* 80051A20  41 82 00 18 */	beq lbl_80051A38
/* 80051A24  2C 03 00 00 */	cmpwi r3, 0
/* 80051A28  41 80 00 10 */	blt lbl_80051A38
/* 80051A2C  A0 9D 00 00 */	lhz r4, 0(r29)
/* 80051A30  7C 03 20 00 */	cmpw r3, r4
/* 80051A34  41 80 00 0C */	blt lbl_80051A40
lbl_80051A38:
/* 80051A38  38 60 00 00 */	li r3, 0
/* 80051A3C  48 00 00 6C */	b lbl_80051AA8
lbl_80051A40:
/* 80051A40  80 BD 00 08 */	lwz r5, 8(r29)
/* 80051A44  54 60 20 36 */	slwi r0, r3, 4
/* 80051A48  7C C5 02 14 */	add r6, r5, r0
/* 80051A4C  38 04 FF FF */	addi r0, r4, -1
/* 80051A50  7C 03 00 00 */	cmpw r3, r0
/* 80051A54  40 82 00 0C */	bne lbl_80051A60
/* 80051A58  7C A3 2B 78 */	mr r3, r5
/* 80051A5C  48 00 00 10 */	b lbl_80051A6C
lbl_80051A60:
/* 80051A60  38 03 00 01 */	addi r0, r3, 1
/* 80051A64  54 00 20 36 */	slwi r0, r0, 4
/* 80051A68  7C 65 02 14 */	add r3, r5, r0
lbl_80051A6C:
/* 80051A6C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80051A70  C0 06 00 04 */	lfs f0, 4(r6)
/* 80051A74  EC 01 00 28 */	fsubs f0, f1, f0
/* 80051A78  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80051A7C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80051A80  C0 06 00 08 */	lfs f0, 8(r6)
/* 80051A84  EC 01 00 28 */	fsubs f0, f1, f0
/* 80051A88  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80051A8C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80051A90  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80051A94  EC 01 00 28 */	fsubs f0, f1, f0
/* 80051A98  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80051A9C  88 1D 00 04 */	lbz r0, 4(r29)
/* 80051AA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80051AA4  38 60 00 01 */	li r3, 1
lbl_80051AA8:
/* 80051AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80051AAC  48 31 07 71 */	bl _restgpr_26
/* 80051AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80051AB4  7C 08 03 A6 */	mtlr r0
/* 80051AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80051ABC  4E 80 00 20 */	blr 
