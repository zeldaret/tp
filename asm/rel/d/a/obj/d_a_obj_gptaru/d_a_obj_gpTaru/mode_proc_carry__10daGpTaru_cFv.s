lbl_8057E660:
/* 8057E660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E664  7C 08 02 A6 */	mflr r0
/* 8057E668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057E670  7C 7F 1B 78 */	mr r31, r3
/* 8057E674  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057E678  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057E67C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8057E680  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 8057E684  C0 5F 05 84 */	lfs f2, 0x584(r31)
/* 8057E688  38 80 00 00 */	li r4, 0
/* 8057E68C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8057E690  81 8C 01 24 */	lwz r12, 0x124(r12)
/* 8057E694  7D 89 03 A6 */	mtctr r12
/* 8057E698  4E 80 04 21 */	bctrl 
/* 8057E69C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8057E6A0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8057E6A4  40 82 00 48 */	bne lbl_8057E6EC
/* 8057E6A8  7F E3 FB 78 */	mr r3, r31
/* 8057E6AC  4B FF F4 B5 */	bl chkWaterLineIn__10daGpTaru_cFv
/* 8057E6B0  2C 03 00 00 */	cmpwi r3, 0
/* 8057E6B4  41 82 00 10 */	beq lbl_8057E6C4
/* 8057E6B8  7F E3 FB 78 */	mr r3, r31
/* 8057E6BC  48 00 09 41 */	bl mode_init_sink__10daGpTaru_cFv
/* 8057E6C0  48 00 00 2C */	b lbl_8057E6EC
lbl_8057E6C4:
/* 8057E6C4  3C 60 80 58 */	lis r3, lit_3807@ha
/* 8057E6C8  C0 23 F5 C4 */	lfs f1, lit_3807@l(r3)
/* 8057E6CC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 8057E6D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8057E6D4  41 82 00 10 */	beq lbl_8057E6E4
/* 8057E6D8  7F E3 FB 78 */	mr r3, r31
/* 8057E6DC  48 00 00 25 */	bl mode_init_drop__10daGpTaru_cFv
/* 8057E6E0  48 00 00 0C */	b lbl_8057E6EC
lbl_8057E6E4:
/* 8057E6E4  7F E3 FB 78 */	mr r3, r31
/* 8057E6E8  48 00 00 69 */	bl mode_init_roll__10daGpTaru_cFv
lbl_8057E6EC:
/* 8057E6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057E6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E6F4  7C 08 03 A6 */	mtlr r0
/* 8057E6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E6FC  4E 80 00 20 */	blr 
