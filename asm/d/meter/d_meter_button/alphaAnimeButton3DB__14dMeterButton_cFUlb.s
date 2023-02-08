lbl_80203F60:
/* 80203F60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80203F64  7C 08 02 A6 */	mflr r0
/* 80203F68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80203F6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80203F70  48 15 E2 6D */	bl _savegpr_29
/* 80203F74  7C 7E 1B 78 */	mr r30, r3
/* 80203F78  7C 9F 23 78 */	mr r31, r4
/* 80203F7C  7C BD 2B 78 */	mr r29, r5
/* 80203F80  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80203F84  40 82 00 94 */	bne lbl_80204018
/* 80203F88  48 03 42 A5 */	bl getStatus__12dMsgObject_cFv
/* 80203F8C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80203F90  20 60 00 01 */	subfic r3, r0, 1
/* 80203F94  30 03 FF FF */	addic r0, r3, -1
/* 80203F98  7C 00 19 10 */	subfe r0, r0, r3
/* 80203F9C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80203FA0  40 82 00 78 */	bne lbl_80204018
/* 80203FA4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80203FA8  41 82 00 70 */	beq lbl_80204018
/* 80203FAC  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 80203FB0  40 82 00 68 */	bne lbl_80204018
/* 80203FB4  57 E0 00 43 */	rlwinm. r0, r31, 0, 1, 1
/* 80203FB8  40 82 00 60 */	bne lbl_80204018
/* 80203FBC  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 80203FC0  40 82 00 58 */	bne lbl_80204018
/* 80203FC4  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80203FC8  41 82 00 30 */	beq lbl_80203FF8
/* 80203FCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80203FD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80203FD4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80203FD8  28 00 00 00 */	cmplwi r0, 0
/* 80203FDC  41 82 00 10 */	beq lbl_80203FEC
/* 80203FE0  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80203FE4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80203FE8  48 00 00 08 */	b lbl_80203FF0
lbl_80203FEC:
/* 80203FEC  38 00 00 00 */	li r0, 0
lbl_80203FF0:
/* 80203FF0  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80203FF4  40 82 00 24 */	bne lbl_80204018
lbl_80203FF8:
/* 80203FF8  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 80203FFC  40 82 00 1C */	bne lbl_80204018
/* 80204000  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 80204004  40 82 00 14 */	bne lbl_80204018
/* 80204008  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 8020400C  40 82 00 0C */	bne lbl_80204018
/* 80204010  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80204014  41 82 00 1C */	beq lbl_80204030
lbl_80204018:
/* 80204018  7F C3 F3 78 */	mr r3, r30
/* 8020401C  48 00 44 BD */	bl setAlphaButton3DBAnimeMin__14dMeterButton_cFv
/* 80204020  A0 1E 04 B0 */	lhz r0, 0x4b0(r30)
/* 80204024  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 80204028  B0 1E 04 B0 */	sth r0, 0x4b0(r30)
/* 8020402C  48 00 00 20 */	b lbl_8020404C
lbl_80204030:
/* 80204030  7F C3 F3 78 */	mr r3, r30
/* 80204034  48 00 45 3D */	bl setAlphaButton3DBAnimeMax__14dMeterButton_cFv
/* 80204038  A0 1E 04 B0 */	lhz r0, 0x4b0(r30)
/* 8020403C  60 00 20 00 */	ori r0, r0, 0x2000
/* 80204040  B0 1E 04 B0 */	sth r0, 0x4b0(r30)
/* 80204044  38 60 00 01 */	li r3, 1
/* 80204048  48 00 00 08 */	b lbl_80204050
lbl_8020404C:
/* 8020404C  38 60 00 00 */	li r3, 0
lbl_80204050:
/* 80204050  39 61 00 20 */	addi r11, r1, 0x20
/* 80204054  48 15 E1 D5 */	bl _restgpr_29
/* 80204058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020405C  7C 08 03 A6 */	mtlr r0
/* 80204060  38 21 00 20 */	addi r1, r1, 0x20
/* 80204064  4E 80 00 20 */	blr 
