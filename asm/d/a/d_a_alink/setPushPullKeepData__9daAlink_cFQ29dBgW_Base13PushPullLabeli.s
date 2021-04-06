lbl_800E7F3C:
/* 800E7F3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E7F40  7C 08 02 A6 */	mflr r0
/* 800E7F44  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E7F48  39 61 00 20 */	addi r11, r1, 0x20
/* 800E7F4C  48 27 A2 91 */	bl _savegpr_29
/* 800E7F50  7C 7F 1B 78 */	mr r31, r3
/* 800E7F54  7C 9D 23 79 */	or. r29, r4, r4
/* 800E7F58  7C BE 2B 78 */	mr r30, r5
/* 800E7F5C  41 82 00 14 */	beq lbl_800E7F70
/* 800E7F60  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800E7F64  2C 00 00 00 */	cmpwi r0, 0
/* 800E7F68  41 82 00 08 */	beq lbl_800E7F70
/* 800E7F6C  63 BD 00 04 */	ori r29, r29, 4
lbl_800E7F70:
/* 800E7F70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E7F74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E7F78  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E7F7C  38 9F 1E 1C */	addi r4, r31, 0x1e1c
/* 800E7F80  7F E5 FB 78 */	mr r5, r31
/* 800E7F84  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 800E7F88  7F A7 EB 78 */	mr r7, r29
/* 800E7F8C  4B F8 DC E1 */	bl PushPullCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_csQ29dBgW_Base13PushPullLabel
/* 800E7F90  28 03 00 00 */	cmplwi r3, 0
/* 800E7F94  40 82 00 0C */	bne lbl_800E7FA0
/* 800E7F98  38 60 00 00 */	li r3, 0
/* 800E7F9C  48 00 00 F0 */	b lbl_800E808C
lbl_800E7FA0:
/* 800E7FA0  2C 1D 00 00 */	cmpwi r29, 0
/* 800E7FA4  40 82 00 0C */	bne lbl_800E7FB0
/* 800E7FA8  2C 1E 00 00 */	cmpwi r30, 0
/* 800E7FAC  41 82 00 BC */	beq lbl_800E8068
lbl_800E7FB0:
/* 800E7FB0  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 800E7FB4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800E7FB8  7C 04 00 00 */	cmpw r4, r0
/* 800E7FBC  41 82 00 7C */	beq lbl_800E8038
/* 800E7FC0  7C 00 20 50 */	subf r0, r0, r4
/* 800E7FC4  7C 05 07 34 */	extsh r5, r0
/* 800E7FC8  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800E7FCC  7C 00 2A 14 */	add r0, r0, r5
/* 800E7FD0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800E7FD4  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800E7FD8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800E7FDC  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800E7FE0  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800E7FE4  7C 44 04 2E */	lfsx f2, r4, r0
/* 800E7FE8  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800E7FEC  C0 1F 34 7C */	lfs f0, 0x347c(r31)
/* 800E7FF0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E7FF4  EC 01 00 2A */	fadds f0, f1, f0
/* 800E7FF8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800E7FFC  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800E8000  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800E8004  7C 84 02 14 */	add r4, r4, r0
/* 800E8008  C0 44 00 04 */	lfs f2, 4(r4)
/* 800E800C  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800E8010  C0 1F 34 7C */	lfs f0, 0x347c(r31)
/* 800E8014  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E8018  EC 01 00 2A */	fadds f0, f1, f0
/* 800E801C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800E8020  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E8024  7C 00 2A 14 */	add r0, r0, r5
/* 800E8028  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800E802C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800E8030  7C 00 2A 14 */	add r0, r0, r5
/* 800E8034  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800E8038:
/* 800E8038  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 800E803C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 800E8040  C0 1F 37 C8 */	lfs f0, 0x37c8(r31)
/* 800E8044  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E8048  EC 02 00 2A */	fadds f0, f2, f0
/* 800E804C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800E8050  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800E8054  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 800E8058  C0 1F 37 D0 */	lfs f0, 0x37d0(r31)
/* 800E805C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E8060  EC 02 00 2A */	fadds f0, f2, f0
/* 800E8064  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800E8068:
/* 800E8068  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800E806C  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800E8070  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 800E8074  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 800E8078  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 800E807C  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800E8080  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800E8084  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800E8088  38 60 00 01 */	li r3, 1
lbl_800E808C:
/* 800E808C  39 61 00 20 */	addi r11, r1, 0x20
/* 800E8090  48 27 A1 99 */	bl _restgpr_29
/* 800E8094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E8098  7C 08 03 A6 */	mtlr r0
/* 800E809C  38 21 00 20 */	addi r1, r1, 0x20
/* 800E80A0  4E 80 00 20 */	blr 
