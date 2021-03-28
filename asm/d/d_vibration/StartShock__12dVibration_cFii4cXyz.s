lbl_8006FA24:
/* 8006FA24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006FA28  7C 08 02 A6 */	mflr r0
/* 8006FA2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006FA30  39 61 00 20 */	addi r11, r1, 0x20
/* 8006FA34  48 2F 27 A9 */	bl _savegpr_29
/* 8006FA38  7C 7E 1B 78 */	mr r30, r3
/* 8006FA3C  7C 9F 23 78 */	mr r31, r4
/* 8006FA40  3B A0 00 00 */	li r29, 0
/* 8006FA44  54 A0 06 7D */	rlwinm. r0, r5, 0, 0x19, 0x1e
/* 8006FA48  41 82 00 58 */	beq lbl_8006FAA0
/* 8006FA4C  93 FE 00 04 */	stw r31, 4(r30)
/* 8006FA50  38 00 00 00 */	li r0, 0
/* 8006FA54  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8006FA58  90 BE 00 14 */	stw r5, 0x14(r30)
/* 8006FA5C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8006FA60  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8006FA64  C0 06 00 04 */	lfs f0, 4(r6)
/* 8006FA68  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8006FA6C  C0 06 00 08 */	lfs f0, 8(r6)
/* 8006FA70  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8006FA74  3C 60 80 38 */	lis r3, CS_patt__12dVibration_c@ha
/* 8006FA78  38 83 A6 78 */	addi r4, r3, CS_patt__12dVibration_c@l
/* 8006FA7C  57 E6 18 38 */	slwi r6, r31, 3
/* 8006FA80  7C 64 32 14 */	add r3, r4, r6
/* 8006FA84  80 03 00 04 */	lwz r0, 4(r3)
/* 8006FA88  90 1E 00 08 */	stw r0, 8(r30)
/* 8006FA8C  A0 03 00 02 */	lhz r0, 2(r3)
/* 8006FA90  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8006FA94  7C 04 32 2E */	lhzx r0, r4, r6
/* 8006FA98  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8006FA9C  3B A0 00 01 */	li r29, 1
lbl_8006FAA0:
/* 8006FAA0  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8006FAA4  41 82 00 50 */	beq lbl_8006FAF4
/* 8006FAA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8006FAAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8006FAB0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006FAB4  4B FC 4B 91 */	bl checkVibration__19dSv_player_config_cCFv
/* 8006FAB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8006FABC  28 00 00 01 */	cmplwi r0, 1
/* 8006FAC0  40 82 00 34 */	bne lbl_8006FAF4
/* 8006FAC4  93 FE 00 54 */	stw r31, 0x54(r30)
/* 8006FAC8  38 00 00 00 */	li r0, 0
/* 8006FACC  90 1E 00 64 */	stw r0, 0x64(r30)
/* 8006FAD0  3C 60 80 38 */	lis r3, MS_patt__12dVibration_c@ha
/* 8006FAD4  38 03 A6 20 */	addi r0, r3, MS_patt__12dVibration_c@l
/* 8006FAD8  57 E3 18 38 */	slwi r3, r31, 3
/* 8006FADC  7C 60 1A 14 */	add r3, r0, r3
/* 8006FAE0  80 03 00 04 */	lwz r0, 4(r3)
/* 8006FAE4  90 1E 00 58 */	stw r0, 0x58(r30)
/* 8006FAE8  A0 03 00 02 */	lhz r0, 2(r3)
/* 8006FAEC  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 8006FAF0  3B A0 00 01 */	li r29, 1
lbl_8006FAF4:
/* 8006FAF4  7F A3 EB 78 */	mr r3, r29
/* 8006FAF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8006FAFC  48 2F 27 2D */	bl _restgpr_29
/* 8006FB00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006FB04  7C 08 03 A6 */	mtlr r0
/* 8006FB08  38 21 00 20 */	addi r1, r1, 0x20
/* 8006FB0C  4E 80 00 20 */	blr 
