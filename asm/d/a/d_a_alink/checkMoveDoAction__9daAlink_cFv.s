lbl_800B9018:
/* 800B9018  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B901C  7C 08 02 A6 */	mflr r0
/* 800B9020  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B9024  39 61 00 20 */	addi r11, r1, 0x20
/* 800B9028  48 2A 91 B5 */	bl _savegpr_29
/* 800B902C  7C 7F 1B 78 */	mr r31, r3
/* 800B9030  88 03 2F 8D */	lbz r0, 0x2f8d(r3)
/* 800B9034  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B9038  41 82 00 F4 */	beq lbl_800B912C
/* 800B903C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B9040  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B9044  88 04 5E 24 */	lbz r0, 0x5e24(r4)
/* 800B9048  28 00 00 19 */	cmplwi r0, 0x19
/* 800B904C  40 82 00 74 */	bne lbl_800B90C0
/* 800B9050  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B9054  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B9058  41 82 00 10 */	beq lbl_800B9068
/* 800B905C  38 80 00 00 */	li r4, 0
/* 800B9060  48 07 4E 69 */	bl procWolfSideStepInit__9daAlink_cFi
/* 800B9064  48 00 00 CC */	b lbl_800B9130
lbl_800B9068:
/* 800B9068  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800B906C  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800B9070  7C 03 00 50 */	subf r0, r3, r0
/* 800B9074  7C 03 07 34 */	extsh r3, r0
/* 800B9078  4B FF A4 1D */	bl getDirectionFromAngle__9daAlink_cFs
/* 800B907C  7C 7E 1B 78 */	mr r30, r3
/* 800B9080  88 1F 2F B0 */	lbz r0, 0x2fb0(r31)
/* 800B9084  28 00 00 00 */	cmplwi r0, 0
/* 800B9088  41 82 00 28 */	beq lbl_800B90B0
/* 800B908C  2C 1E 00 01 */	cmpwi r30, 1
/* 800B9090  41 82 00 20 */	beq lbl_800B90B0
/* 800B9094  7F E3 FB 78 */	mr r3, r31
/* 800B9098  7F C4 F3 78 */	mr r4, r30
/* 800B909C  48 00 00 AD */	bl checkSideRollAction__9daAlink_cFi
/* 800B90A0  2C 03 00 00 */	cmpwi r3, 0
/* 800B90A4  41 82 00 0C */	beq lbl_800B90B0
/* 800B90A8  38 60 00 01 */	li r3, 1
/* 800B90AC  48 00 00 84 */	b lbl_800B9130
lbl_800B90B0:
/* 800B90B0  7F E3 FB 78 */	mr r3, r31
/* 800B90B4  7F C4 F3 78 */	mr r4, r30
/* 800B90B8  48 00 AC E9 */	bl procSideStepInit__9daAlink_cFi
/* 800B90BC  48 00 00 74 */	b lbl_800B9130
lbl_800B90C0:
/* 800B90C0  28 00 00 79 */	cmplwi r0, 0x79
/* 800B90C4  40 82 00 58 */	bne lbl_800B911C
/* 800B90C8  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800B90CC  3B A0 00 01 */	li r29, 1
/* 800B90D0  7F C3 F3 78 */	mr r3, r30
/* 800B90D4  4B FB A7 11 */	bl LockonTruth__12dAttention_cFv
/* 800B90D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B90DC  40 82 00 14 */	bne lbl_800B90F0
/* 800B90E0  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800B90E4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B90E8  40 82 00 08 */	bne lbl_800B90F0
/* 800B90EC  3B A0 00 00 */	li r29, 0
lbl_800B90F0:
/* 800B90F0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800B90F4  40 82 00 1C */	bne lbl_800B9110
/* 800B90F8  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800B90FC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B9100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B9104  40 81 00 0C */	ble lbl_800B9110
/* 800B9108  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800B910C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_800B9110:
/* 800B9110  7F E3 FB 78 */	mr r3, r31
/* 800B9114  48 00 B8 39 */	bl procFrontRollInit__9daAlink_cFv
/* 800B9118  48 00 00 18 */	b lbl_800B9130
lbl_800B911C:
/* 800B911C  28 00 00 09 */	cmplwi r0, 9
/* 800B9120  40 82 00 0C */	bne lbl_800B912C
/* 800B9124  48 07 43 51 */	bl procWolfDashInit__9daAlink_cFv
/* 800B9128  48 00 00 08 */	b lbl_800B9130
lbl_800B912C:
/* 800B912C  38 60 00 00 */	li r3, 0
lbl_800B9130:
/* 800B9130  39 61 00 20 */	addi r11, r1, 0x20
/* 800B9134  48 2A 90 F5 */	bl _restgpr_29
/* 800B9138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B913C  7C 08 03 A6 */	mtlr r0
/* 800B9140  38 21 00 20 */	addi r1, r1, 0x20
/* 800B9144  4E 80 00 20 */	blr 
