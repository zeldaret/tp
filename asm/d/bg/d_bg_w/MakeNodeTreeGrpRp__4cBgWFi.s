lbl_80079CC4:
/* 80079CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80079CC8  7C 08 02 A6 */	mflr r0
/* 80079CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80079CD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80079CD4  48 2E 85 05 */	bl _savegpr_28
/* 80079CD8  7C 7D 1B 78 */	mr r29, r3
/* 80079CDC  7C 9E 23 78 */	mr r30, r4
/* 80079CE0  80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 80079CE4  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80079CE8  1F FE 00 34 */	mulli r31, r30, 0x34
/* 80079CEC  7C 80 FA 14 */	add r4, r0, r31
/* 80079CF0  A0 84 00 2E */	lhz r4, 0x2e(r4)
/* 80079CF4  28 04 FF FF */	cmplwi r4, 0xffff
/* 80079CF8  41 82 00 68 */	beq lbl_80079D60
/* 80079CFC  4B FF FE E1 */	bl MakeNodeTreeRp__4cBgWFi
/* 80079D00  80 9D 00 AC */	lwz r4, 0xac(r29)
/* 80079D04  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 80079D08  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80079D0C  7C 60 FA 14 */	add r3, r0, r31
/* 80079D10  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80079D14  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80079D18  7C 84 02 14 */	add r4, r4, r0
/* 80079D1C  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 80079D20  57 DC 28 34 */	slwi r28, r30, 5
/* 80079D24  38 7C 00 04 */	addi r3, r28, 4
/* 80079D28  7C 60 1A 14 */	add r3, r0, r3
/* 80079D2C  48 1F 50 79 */	bl SetMin__8cM3dGAabFRC4cXyz
/* 80079D30  80 BD 00 AC */	lwz r5, 0xac(r29)
/* 80079D34  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 80079D38  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80079D3C  7C 60 FA 14 */	add r3, r0, r31
/* 80079D40  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80079D44  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80079D48  38 83 00 0C */	addi r4, r3, 0xc
/* 80079D4C  7C 85 22 14 */	add r4, r5, r4
/* 80079D50  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 80079D54  38 7C 00 04 */	addi r3, r28, 4
/* 80079D58  7C 60 1A 14 */	add r3, r0, r3
/* 80079D5C  48 1F 50 89 */	bl SetMax__8cM3dGAabFRC4cXyz
lbl_80079D60:
/* 80079D60  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 80079D64  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80079D68  7C 60 FA 14 */	add r3, r0, r31
/* 80079D6C  A3 E3 00 28 */	lhz r31, 0x28(r3)
/* 80079D70  57 DE 28 34 */	slwi r30, r30, 5
lbl_80079D74:
/* 80079D74  3C 1F 00 00 */	addis r0, r31, 0
/* 80079D78  28 00 FF FF */	cmplwi r0, 0xffff
/* 80079D7C  41 82 00 5C */	beq lbl_80079DD8
/* 80079D80  7F A3 EB 78 */	mr r3, r29
/* 80079D84  7F E4 FB 78 */	mr r4, r31
/* 80079D88  4B FF FF 3D */	bl MakeNodeTreeGrpRp__4cBgWFi
/* 80079D8C  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 80079D90  57 FC 28 34 */	slwi r28, r31, 5
/* 80079D94  38 9C 00 04 */	addi r4, r28, 4
/* 80079D98  7C 80 22 14 */	add r4, r0, r4
/* 80079D9C  38 7E 00 04 */	addi r3, r30, 4
/* 80079DA0  7C 60 1A 14 */	add r3, r0, r3
/* 80079DA4  48 1F 50 01 */	bl SetMin__8cM3dGAabFRC4cXyz
/* 80079DA8  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 80079DAC  38 9C 00 10 */	addi r4, r28, 0x10
/* 80079DB0  7C 80 22 14 */	add r4, r0, r4
/* 80079DB4  38 7E 00 04 */	addi r3, r30, 4
/* 80079DB8  7C 60 1A 14 */	add r3, r0, r3
/* 80079DBC  48 1F 50 29 */	bl SetMax__8cM3dGAabFRC4cXyz
/* 80079DC0  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 80079DC4  80 83 00 24 */	lwz r4, 0x24(r3)
/* 80079DC8  1C 7F 00 34 */	mulli r3, r31, 0x34
/* 80079DCC  38 03 00 26 */	addi r0, r3, 0x26
/* 80079DD0  7F E4 02 2E */	lhzx r31, r4, r0
/* 80079DD4  4B FF FF A0 */	b lbl_80079D74
lbl_80079DD8:
/* 80079DD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80079DDC  48 2E 84 49 */	bl _restgpr_28
/* 80079DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80079DE4  7C 08 03 A6 */	mtlr r0
/* 80079DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80079DEC  4E 80 00 20 */	blr 
