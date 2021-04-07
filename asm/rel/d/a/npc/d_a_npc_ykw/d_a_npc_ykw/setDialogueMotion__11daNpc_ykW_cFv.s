lbl_80B647E4:
/* 80B647E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B647E8  7C 08 02 A6 */	mflr r0
/* 80B647EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B647F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B647F4  4B 7F D9 E1 */	bl _savegpr_27
/* 80B647F8  7C 7B 1B 78 */	mr r27, r3
/* 80B647FC  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B64800  3B E3 7C 38 */	addi r31, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B64804  83 9B 10 24 */	lwz r28, 0x1024(r27)
/* 80B64808  7F 9C 0E 70 */	srawi r28, r28, 1
/* 80B6480C  4B 70 30 61 */	bl cM_rnd__Fv
/* 80B64810  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80B64814  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B64818  40 80 00 28 */	bge lbl_80B64840
/* 80B6481C  4B 70 30 51 */	bl cM_rnd__Fv
/* 80B64820  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80B64824  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B64828  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B6482C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B64830  40 80 00 0C */	bge lbl_80B6483C
/* 80B64834  3B 9C FF FF */	addi r28, r28, -1
/* 80B64838  48 00 00 08 */	b lbl_80B64840
lbl_80B6483C:
/* 80B6483C  3B 9C 00 01 */	addi r28, r28, 1
lbl_80B64840:
/* 80B64840  80 1B 10 18 */	lwz r0, 0x1018(r27)
/* 80B64844  2C 00 00 00 */	cmpwi r0, 0
/* 80B64848  41 82 00 5C */	beq lbl_80B648A4
/* 80B6484C  38 7B 10 18 */	addi r3, r27, 0x1018
/* 80B64850  48 00 30 81 */	bl func_80B678D0
/* 80B64854  2C 03 00 00 */	cmpwi r3, 0
/* 80B64858  40 82 00 4C */	bne lbl_80B648A4
/* 80B6485C  57 9C 07 FE */	clrlwi r28, r28, 0x1f
/* 80B64860  57 80 10 3A */	slwi r0, r28, 2
/* 80B64864  38 7F 01 F8 */	addi r3, r31, 0x1f8
/* 80B64868  7F A3 00 2E */	lwzx r29, r3, r0
/* 80B6486C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B64870  41 80 00 2C */	blt lbl_80B6489C
/* 80B64874  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B64878  7C 1D 00 00 */	cmpw r29, r0
/* 80B6487C  41 82 00 20 */	beq lbl_80B6489C
/* 80B64880  83 DB 0B 80 */	lwz r30, 0xb80(r27)
/* 80B64884  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B64888  4B 5E 10 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6488C  93 DB 0B 80 */	stw r30, 0xb80(r27)
/* 80B64890  93 BB 0B 7C */	stw r29, 0xb7c(r27)
/* 80B64894  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80B64898  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B6489C:
/* 80B6489C  38 00 00 01 */	li r0, 1
/* 80B648A0  90 1B 10 20 */	stw r0, 0x1020(r27)
lbl_80B648A4:
/* 80B648A4  80 1B 10 1C */	lwz r0, 0x101c(r27)
/* 80B648A8  2C 00 00 00 */	cmpwi r0, 0
/* 80B648AC  41 82 00 58 */	beq lbl_80B64904
/* 80B648B0  38 7B 10 1C */	addi r3, r27, 0x101c
/* 80B648B4  48 00 30 1D */	bl func_80B678D0
/* 80B648B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B648BC  40 82 00 48 */	bne lbl_80B64904
/* 80B648C0  57 80 17 7A */	rlwinm r0, r28, 2, 0x1d, 0x1d
/* 80B648C4  38 7F 02 00 */	addi r3, r31, 0x200
/* 80B648C8  7F C3 00 2E */	lwzx r30, r3, r0
/* 80B648CC  2C 1E 00 00 */	cmpwi r30, 0
/* 80B648D0  41 80 00 2C */	blt lbl_80B648FC
/* 80B648D4  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B648D8  7C 1E 00 00 */	cmpw r30, r0
/* 80B648DC  41 82 00 20 */	beq lbl_80B648FC
/* 80B648E0  83 BB 0B 80 */	lwz r29, 0xb80(r27)
/* 80B648E4  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B648E8  4B 5E 0F B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B648EC  93 BB 0B 80 */	stw r29, 0xb80(r27)
/* 80B648F0  93 DB 0B 7C */	stw r30, 0xb7c(r27)
/* 80B648F4  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80B648F8  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B648FC:
/* 80B648FC  38 00 00 01 */	li r0, 1
/* 80B64900  90 1B 10 20 */	stw r0, 0x1020(r27)
lbl_80B64904:
/* 80B64904  39 61 00 20 */	addi r11, r1, 0x20
/* 80B64908  4B 7F D9 19 */	bl _restgpr_27
/* 80B6490C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B64910  7C 08 03 A6 */	mtlr r0
/* 80B64914  38 21 00 20 */	addi r1, r1, 0x20
/* 80B64918  4E 80 00 20 */	blr 
