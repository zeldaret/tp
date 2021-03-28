lbl_80504B20:
/* 80504B20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80504B24  7C 08 02 A6 */	mflr r0
/* 80504B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80504B2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80504B30  4B E5 D6 AC */	b _savegpr_29
/* 80504B34  7C 7D 1B 78 */	mr r29, r3
/* 80504B38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80504B3C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80504B40  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 80504B44  38 00 00 56 */	li r0, 0x56
/* 80504B48  B0 01 00 08 */	sth r0, 8(r1)
/* 80504B4C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80504B50  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80504B54  38 81 00 08 */	addi r4, r1, 8
/* 80504B58  4B B1 4C A0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80504B5C  28 03 00 00 */	cmplwi r3, 0
/* 80504B60  40 82 00 0C */	bne lbl_80504B6C
/* 80504B64  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80504B68  48 00 00 54 */	b lbl_80504BBC
lbl_80504B6C:
/* 80504B6C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80504B70  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80504B74  EC 60 08 28 */	fsubs f3, f0, f1
/* 80504B78  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80504B7C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80504B80  EC A0 10 28 */	fsubs f5, f0, f2
/* 80504B84  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80504B88  EC 80 08 28 */	fsubs f4, f0, f1
/* 80504B8C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80504B90  EC C0 10 28 */	fsubs f6, f0, f2
/* 80504B94  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80504B98  EC 05 01 72 */	fmuls f0, f5, f5
/* 80504B9C  EC 41 00 2A */	fadds f2, f1, f0
/* 80504BA0  EC 24 01 32 */	fmuls f1, f4, f4
/* 80504BA4  EC 06 01 B2 */	fmuls f0, f6, f6
/* 80504BA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80504BAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80504BB0  40 81 00 08 */	ble lbl_80504BB8
/* 80504BB4  48 00 00 08 */	b lbl_80504BBC
lbl_80504BB8:
/* 80504BB8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
lbl_80504BBC:
/* 80504BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80504BC0  4B E5 D6 68 */	b _restgpr_29
/* 80504BC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504BC8  7C 08 03 A6 */	mtlr r0
/* 80504BCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80504BD0  4E 80 00 20 */	blr 
