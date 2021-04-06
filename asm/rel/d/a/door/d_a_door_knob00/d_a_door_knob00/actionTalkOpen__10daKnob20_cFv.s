lbl_804601D4:
/* 804601D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804601D8  7C 08 02 A6 */	mflr r0
/* 804601DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804601E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804601E4  7C 7F 1B 78 */	mr r31, r3
/* 804601E8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 804601EC  28 00 00 03 */	cmplwi r0, 3
/* 804601F0  40 82 00 1C */	bne lbl_8046020C
/* 804601F4  4B FF FC 05 */	bl initOpenDemo__10daKnob20_cFv
/* 804601F8  38 00 00 02 */	li r0, 2
/* 804601FC  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 80460200  7F E3 FB 78 */	mr r3, r31
/* 80460204  4B FF F3 65 */	bl demoProc__10daKnob20_cFv
/* 80460208  48 00 00 5C */	b lbl_80460264
lbl_8046020C:
/* 8046020C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80460210  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80460214  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80460218  28 00 00 00 */	cmplwi r0, 0
/* 8046021C  41 82 00 44 */	beq lbl_80460260
/* 80460220  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 80460224  3C 80 80 46 */	lis r4, d_a_door_knob00__stringBase0@ha /* 0x804606C4@ha */
/* 80460228  38 84 06 C4 */	addi r4, r4, d_a_door_knob00__stringBase0@l /* 0x804606C4@l */
/* 8046022C  38 84 01 AA */	addi r4, r4, 0x1aa
/* 80460230  38 A0 00 00 */	li r5, 0
/* 80460234  38 C0 00 00 */	li r6, 0
/* 80460238  4B BE 78 E5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8046023C  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 80460240  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 80460244  2C 00 FF FF */	cmpwi r0, -1
/* 80460248  41 82 00 1C */	beq lbl_80460264
/* 8046024C  38 00 00 07 */	li r0, 7
/* 80460250  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 80460254  7F E3 FB 78 */	mr r3, r31
/* 80460258  4B FF F3 11 */	bl demoProc__10daKnob20_cFv
/* 8046025C  48 00 00 08 */	b lbl_80460264
lbl_80460260:
/* 80460260  4B FF F0 3D */	bl setEventPrm__10daKnob20_cFv
lbl_80460264:
/* 80460264  38 60 00 01 */	li r3, 1
/* 80460268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046026C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460270  7C 08 03 A6 */	mtlr r0
/* 80460274  38 21 00 10 */	addi r1, r1, 0x10
/* 80460278  4E 80 00 20 */	blr 
