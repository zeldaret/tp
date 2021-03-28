lbl_80BB7C18:
/* 80BB7C18  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BB7C1C  7C 08 02 A6 */	mflr r0
/* 80BB7C20  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BB7C24  39 61 00 70 */	addi r11, r1, 0x70
/* 80BB7C28  4B 7A A5 A8 */	b _savegpr_26
/* 80BB7C2C  7C 9D 23 78 */	mr r29, r4
/* 80BB7C30  7C BE 2B 78 */	mr r30, r5
/* 80BB7C34  3C 80 80 BB */	lis r4, VIBMODE_POWER@ha
/* 80BB7C38  3B E4 7E B0 */	addi r31, r4, VIBMODE_POWER@l
/* 80BB7C3C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BB7C40  C0 63 04 D8 */	lfs f3, 0x4d8(r3)
/* 80BB7C44  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 80BB7C48  54 1B 16 BA */	rlwinm r27, r0, 2, 0x1a, 0x1d
/* 80BB7C4C  38 9F 00 14 */	addi r4, r31, 0x14
/* 80BB7C50  7C 04 D8 2E */	lwzx r0, r4, r27
/* 80BB7C54  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 80BB7C58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB7C5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BB7C60  3C 00 43 30 */	lis r0, 0x4330
/* 80BB7C64  90 01 00 40 */	stw r0, 0x40(r1)
/* 80BB7C68  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80BB7C6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BB7C70  EC 22 00 28 */	fsubs f1, f2, f0
/* 80BB7C74  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BB7C78  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BB7C7C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80BB7C80  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80BB7C84  38 61 00 20 */	addi r3, r1, 0x20
/* 80BB7C88  38 80 00 00 */	li r4, 0
/* 80BB7C8C  38 A0 00 00 */	li r5, 0
/* 80BB7C90  38 C0 00 00 */	li r6, 0
/* 80BB7C94  4B 6A F7 60 */	b __ct__5csXyzFsss
/* 80BB7C98  C0 5F 01 60 */	lfs f2, 0x160(r31)
/* 80BB7C9C  38 7F 00 0C */	addi r3, r31, 0xc
/* 80BB7CA0  7C 03 D8 2E */	lwzx r0, r3, r27
/* 80BB7CA4  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 80BB7CA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB7CAC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80BB7CB0  3C 00 43 30 */	lis r0, 0x4330
/* 80BB7CB4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80BB7CB8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80BB7CBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BB7CC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BB7CC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BB7CC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BB7CCC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BB7CD0  3B 40 00 00 */	li r26, 0
/* 80BB7CD4  3B 80 00 00 */	li r28, 0
/* 80BB7CD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB7CDC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80BB7CE0  48 00 00 50 */	b lbl_80BB7D30
lbl_80BB7CE4:
/* 80BB7CE4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80BB7CE8  38 80 00 00 */	li r4, 0
/* 80BB7CEC  90 81 00 08 */	stw r4, 8(r1)
/* 80BB7CF0  38 00 FF FF */	li r0, -1
/* 80BB7CF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB7CF8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB7CFC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB7D00  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB7D04  38 80 00 00 */	li r4, 0
/* 80BB7D08  7C BE E2 2E */	lhzx r5, r30, r28
/* 80BB7D0C  38 C1 00 34 */	addi r6, r1, 0x34
/* 80BB7D10  38 E0 00 00 */	li r7, 0
/* 80BB7D14  39 01 00 20 */	addi r8, r1, 0x20
/* 80BB7D18  39 21 00 28 */	addi r9, r1, 0x28
/* 80BB7D1C  39 40 00 FF */	li r10, 0xff
/* 80BB7D20  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80BB7D24  4B 49 4D 6C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB7D28  3B 5A 00 01 */	addi r26, r26, 1
/* 80BB7D2C  3B 9C 00 02 */	addi r28, r28, 2
lbl_80BB7D30:
/* 80BB7D30  7C 1A E8 00 */	cmpw r26, r29
/* 80BB7D34  41 80 FF B0 */	blt lbl_80BB7CE4
/* 80BB7D38  39 61 00 70 */	addi r11, r1, 0x70
/* 80BB7D3C  4B 7A A4 E0 */	b _restgpr_26
/* 80BB7D40  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BB7D44  7C 08 03 A6 */	mtlr r0
/* 80BB7D48  38 21 00 70 */	addi r1, r1, 0x70
/* 80BB7D4C  4E 80 00 20 */	blr 
