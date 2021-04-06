lbl_8006FC0C:
/* 8006FC0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006FC10  7C 08 02 A6 */	mflr r0
/* 8006FC14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006FC18  39 61 00 20 */	addi r11, r1, 0x20
/* 8006FC1C  48 2F 25 B5 */	bl _savegpr_26
/* 8006FC20  7C 7B 1B 78 */	mr r27, r3
/* 8006FC24  7C 9C 23 78 */	mr r28, r4
/* 8006FC28  7C BD 2B 78 */	mr r29, r5
/* 8006FC2C  7C DE 33 78 */	mr r30, r6
/* 8006FC30  3B E0 00 00 */	li r31, 0
/* 8006FC34  88 04 00 00 */	lbz r0, 0(r4)
/* 8006FC38  88 84 00 01 */	lbz r4, 1(r4)
/* 8006FC3C  7C 83 23 78 */	mr r3, r4
/* 8006FC40  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 8006FC44  38 00 00 09 */	li r0, 9
/* 8006FC48  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8006FC4C  38 03 FF F7 */	addi r0, r3, -9
/* 8006FC50  7C 00 28 14 */	addc r0, r0, r5
/* 8006FC54  7C A0 01 10 */	subfe r5, r0, r0
/* 8006FC58  38 00 00 03 */	li r0, 3
/* 8006FC5C  7C 00 28 38 */	and r0, r0, r5
/* 8006FC60  38 A0 00 01 */	li r5, 1
/* 8006FC64  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 8006FC68  38 A3 FF FF */	addi r5, r3, -1
/* 8006FC6C  7C A5 30 14 */	addc r5, r5, r6
/* 8006FC70  7C C5 29 10 */	subfe r6, r5, r5
/* 8006FC74  38 A0 00 02 */	li r5, 2
/* 8006FC78  7C A8 30 38 */	and r8, r5, r6
/* 8006FC7C  38 A0 00 11 */	li r5, 0x11
/* 8006FC80  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 8006FC84  38 A3 FF EF */	addi r5, r3, -17
/* 8006FC88  7C A5 30 14 */	addc r5, r5, r6
/* 8006FC8C  7C C5 29 10 */	subfe r6, r5, r5
/* 8006FC90  38 A0 00 04 */	li r5, 4
/* 8006FC94  7C A9 30 38 */	and r9, r5, r6
/* 8006FC98  38 A0 00 19 */	li r5, 0x19
/* 8006FC9C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8006FCA0  38 63 FF E7 */	addi r3, r3, -25
/* 8006FCA4  7C 63 28 14 */	addc r3, r3, r5
/* 8006FCA8  7C A3 19 10 */	subfe r5, r3, r3
/* 8006FCAC  38 60 00 05 */	li r3, 5
/* 8006FCB0  7C 63 28 38 */	and r3, r3, r5
/* 8006FCB4  7C DC 18 AE */	lbzx r6, r28, r3
/* 8006FCB8  7C BC 48 AE */	lbzx r5, r28, r9
/* 8006FCBC  7C 7C 40 AE */	lbzx r3, r28, r8
/* 8006FCC0  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8006FCC4  54 00 80 1E */	slwi r0, r0, 0x10
/* 8006FCC8  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 8006FCCC  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8006FCD0  7C DA 03 78 */	or r26, r6, r0
/* 8006FCD4  57 C0 06 7D */	rlwinm. r0, r30, 0, 0x19, 0x1e
/* 8006FCD8  41 82 00 4C */	beq lbl_8006FD24
/* 8006FCDC  38 00 00 00 */	li r0, 0
/* 8006FCE0  90 1B 00 2C */	stw r0, 0x2c(r27)
/* 8006FCE4  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 8006FCE8  93 DB 00 3C */	stw r30, 0x3c(r27)
/* 8006FCEC  C0 07 00 00 */	lfs f0, 0(r7)
/* 8006FCF0  D0 1B 00 40 */	stfs f0, 0x40(r27)
/* 8006FCF4  C0 07 00 04 */	lfs f0, 4(r7)
/* 8006FCF8  D0 1B 00 44 */	stfs f0, 0x44(r27)
/* 8006FCFC  C0 07 00 08 */	lfs f0, 8(r7)
/* 8006FD00  D0 1B 00 48 */	stfs f0, 0x48(r27)
/* 8006FD04  7F 43 D3 78 */	mr r3, r26
/* 8006FD08  38 A0 00 20 */	li r5, 0x20
/* 8006FD0C  4B FF F4 99 */	bl func_8006F1A4
/* 8006FD10  90 7B 00 30 */	stw r3, 0x30(r27)
/* 8006FD14  38 00 00 20 */	li r0, 0x20
/* 8006FD18  90 1B 00 34 */	stw r0, 0x34(r27)
/* 8006FD1C  93 BB 00 38 */	stw r29, 0x38(r27)
/* 8006FD20  3B E0 00 01 */	li r31, 1
lbl_8006FD24:
/* 8006FD24  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 8006FD28  41 82 00 50 */	beq lbl_8006FD78
/* 8006FD2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006FD30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006FD34  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006FD38  4B FC 49 0D */	bl checkVibration__19dSv_player_config_cCFv
/* 8006FD3C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8006FD40  28 00 00 01 */	cmplwi r0, 1
/* 8006FD44  40 82 00 34 */	bne lbl_8006FD78
/* 8006FD48  38 00 00 00 */	li r0, 0
/* 8006FD4C  90 1B 00 70 */	stw r0, 0x70(r27)
/* 8006FD50  90 1B 00 80 */	stw r0, 0x80(r27)
/* 8006FD54  7F 43 D3 78 */	mr r3, r26
/* 8006FD58  88 9C 00 01 */	lbz r4, 1(r28)
/* 8006FD5C  38 A0 00 20 */	li r5, 0x20
/* 8006FD60  4B FF F4 45 */	bl func_8006F1A4
/* 8006FD64  90 7B 00 74 */	stw r3, 0x74(r27)
/* 8006FD68  38 00 00 20 */	li r0, 0x20
/* 8006FD6C  90 1B 00 78 */	stw r0, 0x78(r27)
/* 8006FD70  93 BB 00 7C */	stw r29, 0x7c(r27)
/* 8006FD74  3B E0 00 01 */	li r31, 1
lbl_8006FD78:
/* 8006FD78  7F E3 FB 78 */	mr r3, r31
/* 8006FD7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8006FD80  48 2F 24 9D */	bl _restgpr_26
/* 8006FD84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006FD88  7C 08 03 A6 */	mtlr r0
/* 8006FD8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8006FD90  4E 80 00 20 */	blr 
