lbl_80A8F0FC:
/* 80A8F0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A8F100  7C 08 02 A6 */	mflr r0
/* 80A8F104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8F108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A8F10C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A8F110  7C 7E 1B 78 */	mr r30, r3
/* 80A8F114  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8F118  3B E4 24 1C */	addi r31, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A8F11C  38 00 00 0A */	li r0, 0xa
/* 80A8F120  B0 03 06 56 */	sth r0, 0x656(r3)
/* 80A8F124  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8F128  2C 00 00 01 */	cmpwi r0, 1
/* 80A8F12C  41 82 00 34 */	beq lbl_80A8F160
/* 80A8F130  40 80 00 30 */	bge lbl_80A8F160
/* 80A8F134  2C 00 00 00 */	cmpwi r0, 0
/* 80A8F138  40 80 00 08 */	bge lbl_80A8F140
/* 80A8F13C  48 00 00 24 */	b lbl_80A8F160
lbl_80A8F140:
/* 80A8F140  38 80 00 10 */	li r4, 0x10
/* 80A8F144  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8F148  38 A0 00 02 */	li r5, 2
/* 80A8F14C  FC 40 08 90 */	fmr f2, f1
/* 80A8F150  4B FF 9B C5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8F154  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8F158  38 03 00 01 */	addi r0, r3, 1
/* 80A8F15C  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8F160:
/* 80A8F160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8F164  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8F168  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A8F16C  38 80 10 01 */	li r4, 0x1001
/* 80A8F170  4B 5A 58 4D */	bl isEventBit__11dSv_event_cCFUs
/* 80A8F174  2C 03 00 00 */	cmpwi r3, 0
/* 80A8F178  40 82 00 20 */	bne lbl_80A8F198
/* 80A8F17C  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80A8F180  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A8F184  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8F188  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A8F18C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A8F190  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80A8F194  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80A8F198:
/* 80A8F198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A8F19C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A8F1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8F1A4  7C 08 03 A6 */	mtlr r0
/* 80A8F1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A8F1AC  4E 80 00 20 */	blr 
