lbl_8004B064:
/* 8004B064  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004B068  7C 08 02 A6 */	mflr r0
/* 8004B06C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004B070  39 61 00 20 */	addi r11, r1, 0x20
/* 8004B074  48 31 71 69 */	bl _savegpr_29
/* 8004B078  7C 7F 1B 78 */	mr r31, r3
/* 8004B07C  7C 9D 23 78 */	mr r29, r4
/* 8004B080  A0 63 00 08 */	lhz r3, 8(r3)
/* 8004B084  48 00 0A ED */	bl getRM_ID__13dPa_control_cFUs
/* 8004B088  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 8004B08C  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 8004B090  7C 64 00 2E */	lwzx r3, r4, r0
/* 8004B094  A0 9F 00 08 */	lhz r4, 8(r31)
/* 8004B098  48 22 8F 35 */	bl getResUserWork__18JPAResourceManagerCFUs
/* 8004B09C  7C 7E 1B 78 */	mr r30, r3
/* 8004B0A0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8004B0A4  28 00 00 00 */	cmplwi r0, 0
/* 8004B0A8  40 82 00 A4 */	bne lbl_8004B14C
/* 8004B0AC  88 0D 89 1E */	lbz r0, struct_80450E9C+0x2(r13)
/* 8004B0B0  7C 00 07 75 */	extsb. r0, r0
/* 8004B0B4  40 82 00 20 */	bne lbl_8004B0D4
/* 8004B0B8  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004B0BC  3C 60 80 42 */	lis r3, pos@ha
/* 8004B0C0  D4 03 47 28 */	stfsu f0, pos@l(r3)
/* 8004B0C4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8004B0C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8004B0CC  38 00 00 01 */	li r0, 1
/* 8004B0D0  98 0D 89 1E */	stb r0, struct_80450E9C+0x2(r13)
lbl_8004B0D4:
/* 8004B0D4  A0 7F 00 08 */	lhz r3, 8(r31)
/* 8004B0D8  48 00 0A 99 */	bl getRM_ID__13dPa_control_cFUs
/* 8004B0DC  7C 67 1B 78 */	mr r7, r3
/* 8004B0E0  7F A3 EB 78 */	mr r3, r29
/* 8004B0E4  3C 80 80 42 */	lis r4, pos@ha
/* 8004B0E8  38 84 47 28 */	addi r4, r4, pos@l
/* 8004B0EC  A0 BF 00 08 */	lhz r5, 8(r31)
/* 8004B0F0  88 DF 00 0A */	lbz r6, 0xa(r31)
/* 8004B0F4  39 00 00 00 */	li r8, 0
/* 8004B0F8  39 20 00 00 */	li r9, 0
/* 8004B0FC  48 23 2D C1 */	bl func_8027DEBC
/* 8004B100  90 7F 00 04 */	stw r3, 4(r31)
/* 8004B104  80 7F 00 04 */	lwz r3, 4(r31)
/* 8004B108  28 03 00 00 */	cmplwi r3, 0
/* 8004B10C  40 82 00 0C */	bne lbl_8004B118
/* 8004B110  38 60 00 00 */	li r3, 0
/* 8004B114  48 00 00 3C */	b lbl_8004B150
lbl_8004B118:
/* 8004B118  57 C0 05 EF */	rlwinm. r0, r30, 0, 0x17, 0x17
/* 8004B11C  41 82 00 0C */	beq lbl_8004B128
/* 8004B120  38 0D 89 28 */	la r0, mFsenthPcallBack__13dPa_control_c(r13) /* 80450EA8-_SDA_BASE_ */
/* 8004B124  90 03 00 F0 */	stw r0, 0xf0(r3)
lbl_8004B128:
/* 8004B128  80 7F 00 04 */	lwz r3, 4(r31)
/* 8004B12C  93 E3 00 EC */	stw r31, 0xec(r3)
/* 8004B130  38 00 00 00 */	li r0, 0
/* 8004B134  80 7F 00 04 */	lwz r3, 4(r31)
/* 8004B138  90 03 00 24 */	stw r0, 0x24(r3)
/* 8004B13C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8004B140  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8004B144  60 00 00 01 */	ori r0, r0, 1
/* 8004B148  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8004B14C:
/* 8004B14C  80 7F 00 04 */	lwz r3, 4(r31)
lbl_8004B150:
/* 8004B150  39 61 00 20 */	addi r11, r1, 0x20
/* 8004B154  48 31 70 D5 */	bl _restgpr_29
/* 8004B158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004B15C  7C 08 03 A6 */	mtlr r0
/* 8004B160  38 21 00 20 */	addi r1, r1, 0x20
/* 8004B164  4E 80 00 20 */	blr 
