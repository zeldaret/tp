lbl_8065E6E8:
/* 8065E6E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065E6EC  7C 08 02 A6 */	mflr r0
/* 8065E6F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065E6F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8065E6F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8065E6FC  7C 7E 1B 78 */	mr r30, r3
/* 8065E700  3C 80 80 66 */	lis r4, lit_3987@ha
/* 8065E704  3B E4 2D B0 */	addi r31, r4, lit_3987@l
/* 8065E708  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 8065E70C  38 80 00 01 */	li r4, 1
/* 8065E710  4B FF F4 F9 */	bl calcCatchPos__7daCow_cFfi
/* 8065E714  A0 7E 05 68 */	lhz r3, 0x568(r30)
/* 8065E718  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8065E71C  41 82 00 50 */	beq lbl_8065E76C
/* 8065E720  7F C3 F3 78 */	mr r3, r30
/* 8065E724  38 80 00 00 */	li r4, 0
/* 8065E728  48 00 00 A9 */	bl initCrazyCatch__7daCow_cFi
/* 8065E72C  A0 1E 05 68 */	lhz r0, 0x568(r30)
/* 8065E730  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8065E734  B0 1E 05 68 */	sth r0, 0x568(r30)
/* 8065E738  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065E73C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065E740  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8065E744  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8065E748  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8065E74C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065E750  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065E754  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8065E758  38 80 00 08 */	li r4, 8
/* 8065E75C  38 A0 00 1F */	li r5, 0x1f
/* 8065E760  38 C1 00 08 */	addi r6, r1, 8
/* 8065E764  4B A1 12 C0 */	b StartShock__12dVibration_cFii4cXyz
/* 8065E768  48 00 00 50 */	b lbl_8065E7B8
lbl_8065E76C:
/* 8065E76C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8065E770  41 82 00 48 */	beq lbl_8065E7B8
/* 8065E774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065E778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065E77C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065E780  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8065E784  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065E788  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065E78C  40 82 00 14 */	bne lbl_8065E7A0
/* 8065E790  7F C3 F3 78 */	mr r3, r30
/* 8065E794  38 80 00 00 */	li r4, 0
/* 8065E798  48 00 08 F1 */	bl initCrazyAttack__7daCow_cFi
/* 8065E79C  48 00 00 10 */	b lbl_8065E7AC
lbl_8065E7A0:
/* 8065E7A0  7F C3 F3 78 */	mr r3, r30
/* 8065E7A4  38 80 00 01 */	li r4, 1
/* 8065E7A8  48 00 08 E1 */	bl initCrazyAttack__7daCow_cFi
lbl_8065E7AC:
/* 8065E7AC  A0 1E 05 68 */	lhz r0, 0x568(r30)
/* 8065E7B0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8065E7B4  B0 1E 05 68 */	sth r0, 0x568(r30)
lbl_8065E7B8:
/* 8065E7B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8065E7BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8065E7C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065E7C4  7C 08 03 A6 */	mtlr r0
/* 8065E7C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8065E7CC  4E 80 00 20 */	blr 
