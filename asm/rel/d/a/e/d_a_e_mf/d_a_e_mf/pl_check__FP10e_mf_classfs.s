lbl_8070B76C:
/* 8070B76C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8070B770  7C 08 02 A6 */	mflr r0
/* 8070B774  90 01 00 24 */	stw r0, 0x24(r1)
/* 8070B778  39 61 00 20 */	addi r11, r1, 0x20
/* 8070B77C  4B C5 6A 59 */	bl _savegpr_27
/* 8070B780  7C 7B 1B 78 */	mr r27, r3
/* 8070B784  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070B788  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070B78C  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 8070B790  C0 03 06 B0 */	lfs f0, 0x6b0(r3)
/* 8070B794  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8070B798  40 80 00 48 */	bge lbl_8070B7E0
/* 8070B79C  A8 BB 06 B4 */	lha r5, 0x6b4(r27)
/* 8070B7A0  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8070B7A4  7C 05 00 50 */	subf r0, r5, r0
/* 8070B7A8  7C 05 07 34 */	extsh r5, r0
/* 8070B7AC  7C 80 07 34 */	extsh r0, r4
/* 8070B7B0  7C 05 00 00 */	cmpw r5, r0
/* 8070B7B4  40 80 00 2C */	bge lbl_8070B7E0
/* 8070B7B8  7C 04 00 D0 */	neg r0, r4
/* 8070B7BC  7C 00 07 34 */	extsh r0, r0
/* 8070B7C0  7C 05 00 00 */	cmpw r5, r0
/* 8070B7C4  40 81 00 1C */	ble lbl_8070B7E0
/* 8070B7C8  7F A4 EB 78 */	mr r4, r29
/* 8070B7CC  4B FF F8 71 */	bl other_bg_check__FP10e_mf_classP10fopAc_ac_c
/* 8070B7D0  2C 03 00 00 */	cmpwi r3, 0
/* 8070B7D4  40 82 00 0C */	bne lbl_8070B7E0
/* 8070B7D8  38 60 00 01 */	li r3, 1
/* 8070B7DC  48 00 00 54 */	b lbl_8070B830
lbl_8070B7E0:
/* 8070B7E0  3B 80 00 00 */	li r28, 0
/* 8070B7E4  3B E0 00 00 */	li r31, 0
lbl_8070B7E8:
/* 8070B7E8  3B DF 0A 7C */	addi r30, r31, 0xa7c
/* 8070B7EC  7F DB F2 14 */	add r30, r27, r30
/* 8070B7F0  7F C3 F3 78 */	mr r3, r30
/* 8070B7F4  4B 97 8E 65 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8070B7F8  28 03 00 00 */	cmplwi r3, 0
/* 8070B7FC  41 82 00 20 */	beq lbl_8070B81C
/* 8070B800  7F C3 F3 78 */	mr r3, r30
/* 8070B804  4B 97 8E ED */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 8070B808  4B B5 82 41 */	bl GetAc__8cCcD_ObjFv
/* 8070B80C  7C 1D 18 40 */	cmplw r29, r3
/* 8070B810  40 82 00 0C */	bne lbl_8070B81C
/* 8070B814  38 60 00 02 */	li r3, 2
/* 8070B818  48 00 00 18 */	b lbl_8070B830
lbl_8070B81C:
/* 8070B81C  3B 9C 00 01 */	addi r28, r28, 1
/* 8070B820  2C 1C 00 02 */	cmpwi r28, 2
/* 8070B824  3B FF 01 38 */	addi r31, r31, 0x138
/* 8070B828  40 81 FF C0 */	ble lbl_8070B7E8
/* 8070B82C  38 60 00 00 */	li r3, 0
lbl_8070B830:
/* 8070B830  39 61 00 20 */	addi r11, r1, 0x20
/* 8070B834  4B C5 69 ED */	bl _restgpr_27
/* 8070B838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8070B83C  7C 08 03 A6 */	mtlr r0
/* 8070B840  38 21 00 20 */	addi r1, r1, 0x20
/* 8070B844  4E 80 00 20 */	blr 
