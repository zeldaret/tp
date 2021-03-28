lbl_80042014:
/* 80042014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80042018  7C 08 02 A6 */	mflr r0
/* 8004201C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80042020  39 61 00 20 */	addi r11, r1, 0x20
/* 80042024  48 32 01 B9 */	bl _savegpr_29
/* 80042028  7C 7D 1B 78 */	mr r29, r3
/* 8004202C  7C 9E 23 78 */	mr r30, r4
/* 80042030  38 A0 00 04 */	li r5, 4
/* 80042034  38 C0 00 03 */	li r6, 3
/* 80042038  4B FF F9 71 */	bl commonCheck__14dEvt_control_cFP12dEvt_order_cUsUs
/* 8004203C  2C 03 00 00 */	cmpwi r3, 0
/* 80042040  41 82 00 D0 */	beq lbl_80042110
/* 80042044  38 00 00 02 */	li r0, 2
/* 80042048  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8004204C  7F A3 EB 78 */	mr r3, r29
/* 80042050  80 9D 00 C8 */	lwz r4, 0xc8(r29)
/* 80042054  48 00 12 99 */	bl convPId__14dEvt_control_cFUi
/* 80042058  7C 7F 1B 79 */	or. r31, r3, r3
/* 8004205C  41 82 00 18 */	beq lbl_80042074
/* 80042060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80042064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80042068  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8004206C  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80042070  48 00 47 91 */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_80042074:
/* 80042074  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 80042078  2C 00 FF FF */	cmpwi r0, -1
/* 8004207C  40 82 00 1C */	bne lbl_80042098
/* 80042080  28 1F 00 00 */	cmplwi r31, 0
/* 80042084  41 82 00 14 */	beq lbl_80042098
/* 80042088  A8 1F 00 FC */	lha r0, 0xfc(r31)
/* 8004208C  2C 00 FF FF */	cmpwi r0, -1
/* 80042090  41 82 00 08 */	beq lbl_80042098
/* 80042094  B0 1D 00 DE */	sth r0, 0xde(r29)
lbl_80042098:
/* 80042098  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 8004209C  2C 04 FF FF */	cmpwi r4, -1
/* 800420A0  41 82 00 30 */	beq lbl_800420D0
/* 800420A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800420A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800420AC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 800420B0  7F E3 FB 78 */	mr r3, r31
/* 800420B4  48 00 54 09 */	bl getEventData__16dEvent_manager_cFs
/* 800420B8  28 03 00 00 */	cmplwi r3, 0
/* 800420BC  41 82 00 14 */	beq lbl_800420D0
/* 800420C0  7F E3 FB 78 */	mr r3, r31
/* 800420C4  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 800420C8  48 00 58 BD */	bl order__16dEvent_manager_cFs
/* 800420CC  48 00 00 14 */	b lbl_800420E0
lbl_800420D0:
/* 800420D0  38 00 FF FF */	li r0, -1
/* 800420D4  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 800420D8  7F A3 EB 78 */	mr r3, r29
/* 800420DC  48 00 03 8D */	bl reset__14dEvt_control_cFv
lbl_800420E0:
/* 800420E0  A0 1E 00 00 */	lhz r0, 0(r30)
/* 800420E4  28 00 00 0B */	cmplwi r0, 0xb
/* 800420E8  40 82 00 14 */	bne lbl_800420FC
/* 800420EC  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 800420F0  60 00 00 04 */	ori r0, r0, 4
/* 800420F4  B0 1D 00 D8 */	sth r0, 0xd8(r29)
/* 800420F8  48 00 00 10 */	b lbl_80042108
lbl_800420FC:
/* 800420FC  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042100  60 00 00 40 */	ori r0, r0, 0x40
/* 80042104  B0 1D 00 D8 */	sth r0, 0xd8(r29)
lbl_80042108:
/* 80042108  38 60 00 01 */	li r3, 1
/* 8004210C  48 00 00 08 */	b lbl_80042114
lbl_80042110:
/* 80042110  38 60 00 00 */	li r3, 0
lbl_80042114:
/* 80042114  39 61 00 20 */	addi r11, r1, 0x20
/* 80042118  48 32 01 11 */	bl _restgpr_29
/* 8004211C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80042120  7C 08 03 A6 */	mtlr r0
/* 80042124  38 21 00 20 */	addi r1, r1, 0x20
/* 80042128  4E 80 00 20 */	blr 
