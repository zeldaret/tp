lbl_806E1A00:
/* 806E1A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E1A04  7C 08 02 A6 */	mflr r0
/* 806E1A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E1A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E1A10  7C 7F 1B 78 */	mr r31, r3
/* 806E1A14  A8 03 05 D4 */	lha r0, 0x5d4(r3)
/* 806E1A18  2C 00 00 03 */	cmpwi r0, 3
/* 806E1A1C  41 82 00 70 */	beq lbl_806E1A8C
/* 806E1A20  40 80 00 1C */	bge lbl_806E1A3C
/* 806E1A24  2C 00 00 01 */	cmpwi r0, 1
/* 806E1A28  41 82 00 30 */	beq lbl_806E1A58
/* 806E1A2C  40 80 00 24 */	bge lbl_806E1A50
/* 806E1A30  2C 00 00 00 */	cmpwi r0, 0
/* 806E1A34  40 80 00 4C */	bge lbl_806E1A80
/* 806E1A38  48 00 00 54 */	b lbl_806E1A8C
lbl_806E1A3C:
/* 806E1A3C  2C 00 00 05 */	cmpwi r0, 5
/* 806E1A40  41 82 00 48 */	beq lbl_806E1A88
/* 806E1A44  40 80 00 48 */	bge lbl_806E1A8C
/* 806E1A48  48 00 1C DD */	bl WaitAction__8daE_HM_cFv
/* 806E1A4C  48 00 00 40 */	b lbl_806E1A8C
lbl_806E1A50:
/* 806E1A50  48 00 19 D1 */	bl AttackAction__8daE_HM_cFv
/* 806E1A54  48 00 00 38 */	b lbl_806E1A8C
lbl_806E1A58:
/* 806E1A58  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E1A5C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E1A60  90 1F 09 28 */	stw r0, 0x928(r31)
/* 806E1A64  4B FF F9 0D */	bl W_DeathMotion__8daE_HM_cFv
/* 806E1A68  38 7F 07 14 */	addi r3, r31, 0x714
/* 806E1A6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806E1A70  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806E1A74  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806E1A78  4B 99 50 34 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806E1A7C  48 00 00 10 */	b lbl_806E1A8C
lbl_806E1A80:
/* 806E1A80  48 00 11 01 */	bl ShieldMotion__8daE_HM_cFv
/* 806E1A84  48 00 00 08 */	b lbl_806E1A8C
lbl_806E1A88:
/* 806E1A88  48 00 0F 31 */	bl ShippuAction__8daE_HM_cFv
lbl_806E1A8C:
/* 806E1A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E1A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E1A94  7C 08 03 A6 */	mtlr r0
/* 806E1A98  38 21 00 10 */	addi r1, r1, 0x10
/* 806E1A9C  4E 80 00 20 */	blr 
