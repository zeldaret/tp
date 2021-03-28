lbl_800A3D7C:
/* 800A3D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3D80  7C 08 02 A6 */	mflr r0
/* 800A3D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A3D88  39 61 00 20 */	addi r11, r1, 0x20
/* 800A3D8C  48 2B E4 4D */	bl _savegpr_28
/* 800A3D90  7C 9C 23 78 */	mr r28, r4
/* 800A3D94  7C BD 2B 78 */	mr r29, r5
/* 800A3D98  7C DE 33 78 */	mr r30, r6
/* 800A3D9C  80 A4 00 6C */	lwz r5, 0x6c(r4)
/* 800A3DA0  A0 85 00 00 */	lhz r4, 0(r5)
/* 800A3DA4  34 04 FF FF */	addic. r0, r4, -1
/* 800A3DA8  3B E0 00 00 */	li r31, 0
/* 800A3DAC  41 80 00 28 */	blt lbl_800A3DD4
/* 800A3DB0  80 85 00 04 */	lwz r4, 4(r5)
/* 800A3DB4  54 00 2A F4 */	rlwinm r0, r0, 5, 0xb, 0x1a
/* 800A3DB8  7C 84 02 14 */	add r4, r4, r0
/* 800A3DBC  80 63 07 C0 */	lwz r3, 0x7c0(r3)
/* 800A3DC0  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 800A3DC4  7C 04 02 14 */	add r0, r4, r0
/* 800A3DC8  7C 03 00 40 */	cmplw r3, r0
/* 800A3DCC  40 82 00 08 */	bne lbl_800A3DD4
/* 800A3DD0  3B E0 00 01 */	li r31, 1
lbl_800A3DD4:
/* 800A3DD4  2C 1F 00 00 */	cmpwi r31, 0
/* 800A3DD8  41 82 00 14 */	beq lbl_800A3DEC
/* 800A3DDC  7F 83 E3 78 */	mr r3, r28
/* 800A3DE0  4B F9 6D 51 */	bl onWarpMaterial__11dRes_info_cFP12J3DModelData
/* 800A3DE4  67 DE 02 00 */	oris r30, r30, 0x200
/* 800A3DE8  63 DE 04 00 */	ori r30, r30, 0x400
lbl_800A3DEC:
/* 800A3DEC  7F 83 E3 78 */	mr r3, r28
/* 800A3DF0  7F A4 EB 78 */	mr r4, r29
/* 800A3DF4  67 C5 11 00 */	oris r5, r30, 0x1100
/* 800A3DF8  60 A5 00 84 */	ori r5, r5, 0x84
/* 800A3DFC  4B F7 0E 59 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 800A3E00  7C 7E 1B 78 */	mr r30, r3
/* 800A3E04  2C 1F 00 00 */	cmpwi r31, 0
/* 800A3E08  41 82 00 0C */	beq lbl_800A3E14
/* 800A3E0C  7F 83 E3 78 */	mr r3, r28
/* 800A3E10  4B F9 6E 0D */	bl offWarpMaterial__11dRes_info_cFP12J3DModelData
lbl_800A3E14:
/* 800A3E14  7F C3 F3 78 */	mr r3, r30
/* 800A3E18  39 61 00 20 */	addi r11, r1, 0x20
/* 800A3E1C  48 2B E4 09 */	bl _restgpr_28
/* 800A3E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3E24  7C 08 03 A6 */	mtlr r0
/* 800A3E28  38 21 00 20 */	addi r1, r1, 0x20
/* 800A3E2C  4E 80 00 20 */	blr 
