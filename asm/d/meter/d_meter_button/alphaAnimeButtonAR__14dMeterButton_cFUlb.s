lbl_80203E58:
/* 80203E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80203E5C  7C 08 02 A6 */	mflr r0
/* 80203E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80203E64  39 61 00 20 */	addi r11, r1, 0x20
/* 80203E68  48 15 E3 75 */	bl _savegpr_29
/* 80203E6C  7C 7E 1B 78 */	mr r30, r3
/* 80203E70  7C 9F 23 78 */	mr r31, r4
/* 80203E74  7C BD 2B 78 */	mr r29, r5
/* 80203E78  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80203E7C  40 82 00 94 */	bne lbl_80203F10
/* 80203E80  48 03 43 AD */	bl getStatus__12dMsgObject_cFv
/* 80203E84  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80203E88  20 60 00 01 */	subfic r3, r0, 1
/* 80203E8C  30 03 FF FF */	addic r0, r3, -1
/* 80203E90  7C 00 19 10 */	subfe r0, r0, r3
/* 80203E94  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80203E98  40 82 00 78 */	bne lbl_80203F10
/* 80203E9C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80203EA0  41 82 00 70 */	beq lbl_80203F10
/* 80203EA4  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 80203EA8  40 82 00 68 */	bne lbl_80203F10
/* 80203EAC  57 E0 00 43 */	rlwinm. r0, r31, 0, 1, 1
/* 80203EB0  40 82 00 60 */	bne lbl_80203F10
/* 80203EB4  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 80203EB8  40 82 00 58 */	bne lbl_80203F10
/* 80203EBC  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80203EC0  41 82 00 30 */	beq lbl_80203EF0
/* 80203EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80203EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80203ECC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80203ED0  28 00 00 00 */	cmplwi r0, 0
/* 80203ED4  41 82 00 10 */	beq lbl_80203EE4
/* 80203ED8  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80203EDC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80203EE0  48 00 00 08 */	b lbl_80203EE8
lbl_80203EE4:
/* 80203EE4  38 00 00 00 */	li r0, 0
lbl_80203EE8:
/* 80203EE8  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80203EEC  40 82 00 24 */	bne lbl_80203F10
lbl_80203EF0:
/* 80203EF0  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 80203EF4  40 82 00 1C */	bne lbl_80203F10
/* 80203EF8  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 80203EFC  40 82 00 14 */	bne lbl_80203F10
/* 80203F00  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80203F04  40 82 00 0C */	bne lbl_80203F10
/* 80203F08  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80203F0C  41 82 00 1C */	beq lbl_80203F28
lbl_80203F10:
/* 80203F10  7F C3 F3 78 */	mr r3, r30
/* 80203F14  48 00 44 2D */	bl setAlphaButtonARAnimeMin__14dMeterButton_cFv
/* 80203F18  A0 1E 04 B0 */	lhz r0, 0x4b0(r30)
/* 80203F1C  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 80203F20  B0 1E 04 B0 */	sth r0, 0x4b0(r30)
/* 80203F24  48 00 00 20 */	b lbl_80203F44
lbl_80203F28:
/* 80203F28  7F C3 F3 78 */	mr r3, r30
/* 80203F2C  48 00 44 AD */	bl setAlphaButtonARAnimeMax__14dMeterButton_cFv
/* 80203F30  A0 1E 04 B0 */	lhz r0, 0x4b0(r30)
/* 80203F34  60 00 10 00 */	ori r0, r0, 0x1000
/* 80203F38  B0 1E 04 B0 */	sth r0, 0x4b0(r30)
/* 80203F3C  38 60 00 01 */	li r3, 1
/* 80203F40  48 00 00 08 */	b lbl_80203F48
lbl_80203F44:
/* 80203F44  38 60 00 00 */	li r3, 0
lbl_80203F48:
/* 80203F48  39 61 00 20 */	addi r11, r1, 0x20
/* 80203F4C  48 15 E2 DD */	bl _restgpr_29
/* 80203F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80203F54  7C 08 03 A6 */	mtlr r0
/* 80203F58  38 21 00 20 */	addi r1, r1, 0x20
/* 80203F5C  4E 80 00 20 */	blr 
