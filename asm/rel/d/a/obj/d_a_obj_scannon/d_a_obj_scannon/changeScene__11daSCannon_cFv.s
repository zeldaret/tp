lbl_80CC88A8:
/* 80CC88A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC88AC  7C 08 02 A6 */	mflr r0
/* 80CC88B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC88B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC88B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC88BC  7C 7F 1B 78 */	mr r31, r3
/* 80CC88C0  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80CC88C4  2C 00 00 03 */	cmpwi r0, 3
/* 80CC88C8  41 82 00 0C */	beq lbl_80CC88D4
/* 80CC88CC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CC88D0  40 82 00 B0 */	bne lbl_80CC8980
lbl_80CC88D4:
/* 80CC88D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC88D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC88DC  3B C3 5B D4 */	addi r30, r3, 0x5bd4
/* 80CC88E0  7F C3 F3 78 */	mr r3, r30
/* 80CC88E4  4B 3A 75 78 */	b CheckQuake__12dVibration_cFv
/* 80CC88E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC88EC  41 82 00 10 */	beq lbl_80CC88FC
/* 80CC88F0  7F C3 F3 78 */	mr r3, r30
/* 80CC88F4  38 80 00 1F */	li r4, 0x1f
/* 80CC88F8  4B 3A 74 9C */	b StopQuake__12dVibration_cFi
lbl_80CC88FC:
/* 80CC88FC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CC8900  60 00 00 80 */	ori r0, r0, 0x80
/* 80CC8904  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80CC8908  88 1F 06 19 */	lbz r0, 0x619(r31)
/* 80CC890C  28 00 00 00 */	cmplwi r0, 0
/* 80CC8910  40 82 00 0C */	bne lbl_80CC891C
/* 80CC8914  38 00 00 01 */	li r0, 1
/* 80CC8918  98 1F 06 19 */	stb r0, 0x619(r31)
lbl_80CC891C:
/* 80CC891C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC8920  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC8924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC8928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC892C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC8930  7C 05 07 74 */	extsb r5, r0
/* 80CC8934  4B 36 CA 2C */	b isSwitch__10dSv_info_cCFii
/* 80CC8938  2C 03 00 00 */	cmpwi r3, 0
/* 80CC893C  40 82 00 20 */	bne lbl_80CC895C
/* 80CC8940  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC8944  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC8948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC894C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC8950  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC8954  7C 05 07 74 */	extsb r5, r0
/* 80CC8958  4B 36 C8 A8 */	b onSwitch__10dSv_info_cFii
lbl_80CC895C:
/* 80CC895C  38 60 00 07 */	li r3, 7
/* 80CC8960  3C 80 80 CD */	lis r4, lit_3994@ha
/* 80CC8964  C0 24 91 AC */	lfs f1, lit_3994@l(r4)
/* 80CC8968  38 80 00 00 */	li r4, 0
/* 80CC896C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CC8970  7C 05 07 74 */	extsb r5, r0
/* 80CC8974  38 C0 00 00 */	li r6, 0
/* 80CC8978  38 E0 FF FF */	li r7, -1
/* 80CC897C  4B 35 E7 F4 */	b dStage_changeScene__FifUlScsi
lbl_80CC8980:
/* 80CC8980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC8984  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC8988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC898C  7C 08 03 A6 */	mtlr r0
/* 80CC8990  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC8994  4E 80 00 20 */	blr 
