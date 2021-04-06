lbl_8046002C:
/* 8046002C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460030  7C 08 02 A6 */	mflr r0
/* 80460034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046003C  93 C1 00 08 */	stw r30, 8(r1)
/* 80460040  7C 7E 1B 78 */	mr r30, r3
/* 80460044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80460048  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046004C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80460050  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 80460054  54 00 08 3C */	slwi r0, r0, 1
/* 80460058  7C 9E 02 14 */	add r4, r30, r0
/* 8046005C  A8 84 05 A4 */	lha r4, 0x5a4(r4)
/* 80460060  4B BE 7A 19 */	bl endCheck__16dEvent_manager_cFs
/* 80460064  2C 03 00 00 */	cmpwi r3, 0
/* 80460068  41 82 00 20 */	beq lbl_80460088
/* 8046006C  38 00 00 01 */	li r0, 1
/* 80460070  98 1E 06 0E */	stb r0, 0x60e(r30)
/* 80460074  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80460078  4B BE 23 F1 */	bl reset__14dEvt_control_cFv
/* 8046007C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80460080  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80460084  48 00 00 20 */	b lbl_804600A4
lbl_80460088:
/* 80460088  7F C3 F3 78 */	mr r3, r30
/* 8046008C  4B FF F4 DD */	bl demoProc__10daKnob20_cFv
/* 80460090  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80460094  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80460098  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 8046009C  60 00 00 02 */	ori r0, r0, 2
/* 804600A0  B0 03 00 B0 */	sth r0, 0xb0(r3)
lbl_804600A4:
/* 804600A4  38 60 00 01 */	li r3, 1
/* 804600A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804600AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804600B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804600B4  7C 08 03 A6 */	mtlr r0
/* 804600B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804600BC  4E 80 00 20 */	blr 
