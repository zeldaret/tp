lbl_806E8FEC:
/* 806E8FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E8FF0  7C 08 02 A6 */	mflr r0
/* 806E8FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E8FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E8FFC  7C 7F 1B 78 */	mr r31, r3
/* 806E9000  88 83 07 7C */	lbz r4, 0x77c(r3)
/* 806E9004  28 04 00 FF */	cmplwi r4, 0xff
/* 806E9008  41 82 00 78 */	beq lbl_806E9080
/* 806E900C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E9010  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E9014  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 806E9018  7C 05 07 74 */	extsb r5, r0
/* 806E901C  4B 94 C3 45 */	bl isSwitch__10dSv_info_cCFii
/* 806E9020  2C 03 00 00 */	cmpwi r3, 0
/* 806E9024  40 82 00 5C */	bne lbl_806E9080
/* 806E9028  38 00 00 00 */	li r0, 0
/* 806E902C  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806E9030  98 1F 04 96 */	stb r0, 0x496(r31)
/* 806E9034  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806E9038  54 00 00 3E */	slwi r0, r0, 0
/* 806E903C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806E9040  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806E9044  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806E9048  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806E904C  88 1F 07 8B */	lbz r0, 0x78b(r31)
/* 806E9050  28 00 00 00 */	cmplwi r0, 0
/* 806E9054  40 82 00 24 */	bne lbl_806E9078
/* 806E9058  3C 60 80 6F */	lis r3, lit_3906@ha /* 0x806EA1F8@ha */
/* 806E905C  C0 03 A1 F8 */	lfs f0, lit_3906@l(r3)  /* 0x806EA1F8@l */
/* 806E9060  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 806E9064  38 00 00 01 */	li r0, 1
/* 806E9068  98 1F 07 8B */	stb r0, 0x78b(r31)
/* 806E906C  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806E9070  38 80 00 00 */	li r4, 0
/* 806E9074  4B BD 8B 1D */	bl setEnemyName__15Z2CreatureEnemyFPCc
lbl_806E9078:
/* 806E9078  38 60 00 01 */	li r3, 1
/* 806E907C  48 00 00 E0 */	b lbl_806E915C
lbl_806E9080:
/* 806E9080  88 1F 07 8C */	lbz r0, 0x78c(r31)
/* 806E9084  28 00 00 01 */	cmplwi r0, 1
/* 806E9088  40 82 00 68 */	bne lbl_806E90F0
/* 806E908C  4B AB 6A 2D */	bl dKy_daynight_check__Fv
/* 806E9090  2C 03 00 00 */	cmpwi r3, 0
/* 806E9094  40 82 00 5C */	bne lbl_806E90F0
/* 806E9098  38 00 00 00 */	li r0, 0
/* 806E909C  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806E90A0  98 1F 04 96 */	stb r0, 0x496(r31)
/* 806E90A4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806E90A8  54 00 00 3E */	slwi r0, r0, 0
/* 806E90AC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806E90B0  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806E90B4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806E90B8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806E90BC  88 1F 07 8B */	lbz r0, 0x78b(r31)
/* 806E90C0  28 00 00 00 */	cmplwi r0, 0
/* 806E90C4  40 82 00 24 */	bne lbl_806E90E8
/* 806E90C8  3C 60 80 6F */	lis r3, lit_3906@ha /* 0x806EA1F8@ha */
/* 806E90CC  C0 03 A1 F8 */	lfs f0, lit_3906@l(r3)  /* 0x806EA1F8@l */
/* 806E90D0  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 806E90D4  38 00 00 01 */	li r0, 1
/* 806E90D8  98 1F 07 8B */	stb r0, 0x78b(r31)
/* 806E90DC  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806E90E0  38 80 00 00 */	li r4, 0
/* 806E90E4  4B BD 8A AD */	bl setEnemyName__15Z2CreatureEnemyFPCc
lbl_806E90E8:
/* 806E90E8  38 60 00 01 */	li r3, 1
/* 806E90EC  48 00 00 70 */	b lbl_806E915C
lbl_806E90F0:
/* 806E90F0  88 1F 05 46 */	lbz r0, 0x546(r31)
/* 806E90F4  28 00 00 00 */	cmplwi r0, 0
/* 806E90F8  40 82 00 20 */	bne lbl_806E9118
/* 806E90FC  38 00 00 04 */	li r0, 4
/* 806E9100  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806E9104  38 00 00 02 */	li r0, 2
/* 806E9108  98 1F 04 96 */	stb r0, 0x496(r31)
/* 806E910C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806E9110  60 00 00 04 */	ori r0, r0, 4
/* 806E9114  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_806E9118:
/* 806E9118  88 7F 07 1C */	lbz r3, 0x71c(r31)
/* 806E911C  28 03 00 00 */	cmplwi r3, 0
/* 806E9120  41 82 00 0C */	beq lbl_806E912C
/* 806E9124  38 03 FF FF */	addi r0, r3, -1
/* 806E9128  98 1F 07 1C */	stb r0, 0x71c(r31)
lbl_806E912C:
/* 806E912C  88 7F 07 1E */	lbz r3, 0x71e(r31)
/* 806E9130  28 03 00 00 */	cmplwi r3, 0
/* 806E9134  41 82 00 0C */	beq lbl_806E9140
/* 806E9138  38 03 FF FF */	addi r0, r3, -1
/* 806E913C  98 1F 07 1E */	stb r0, 0x71e(r31)
lbl_806E9140:
/* 806E9140  7F E3 FB 78 */	mr r3, r31
/* 806E9144  4B FF F0 09 */	bl action__8daE_HP_cFv
/* 806E9148  7F E3 FB 78 */	mr r3, r31
/* 806E914C  4B FF F8 75 */	bl mtx_set__8daE_HP_cFv
/* 806E9150  7F E3 FB 78 */	mr r3, r31
/* 806E9154  4B FF FC 8D */	bl cc_set__8daE_HP_cFv
/* 806E9158  38 60 00 01 */	li r3, 1
lbl_806E915C:
/* 806E915C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9164  7C 08 03 A6 */	mtlr r0
/* 806E9168  38 21 00 10 */	addi r1, r1, 0x10
/* 806E916C  4E 80 00 20 */	blr 
