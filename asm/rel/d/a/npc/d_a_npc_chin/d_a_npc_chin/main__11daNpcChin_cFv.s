lbl_8098D0F8:
/* 8098D0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098D0FC  7C 08 02 A6 */	mflr r0
/* 8098D100  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098D104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098D108  7C 7F 1B 78 */	mr r31, r3
/* 8098D10C  38 7F 0D B8 */	addi r3, r31, 0xdb8
/* 8098D110  4B 9D 4F 08 */	b __ptmf_test
/* 8098D114  2C 03 00 00 */	cmpwi r3, 0
/* 8098D118  41 82 00 18 */	beq lbl_8098D130
/* 8098D11C  7F E3 FB 78 */	mr r3, r31
/* 8098D120  38 80 00 00 */	li r4, 0
/* 8098D124  39 9F 0D B8 */	addi r12, r31, 0xdb8
/* 8098D128  4B 9D 4F 5C */	b __ptmf_scall
/* 8098D12C  60 00 00 00 */	nop 
lbl_8098D130:
/* 8098D130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098D134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098D138  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8098D13C  28 00 00 00 */	cmplwi r0, 0
/* 8098D140  41 82 00 30 */	beq lbl_8098D170
/* 8098D144  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8098D148  28 00 00 01 */	cmplwi r0, 1
/* 8098D14C  41 82 00 24 */	beq lbl_8098D170
/* 8098D150  80 9F 0D F4 */	lwz r4, 0xdf4(r31)
/* 8098D154  3C 04 00 01 */	addis r0, r4, 1
/* 8098D158  28 00 FF FF */	cmplwi r0, 0xffff
/* 8098D15C  41 82 00 14 */	beq lbl_8098D170
/* 8098D160  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098D164  4B 6B 65 88 */	b setPtI_Id__14dEvt_control_cFUi
/* 8098D168  38 00 FF FF */	li r0, -1
/* 8098D16C  90 1F 0D F4 */	stw r0, 0xdf4(r31)
lbl_8098D170:
/* 8098D170  7F E3 FB 78 */	mr r3, r31
/* 8098D174  48 00 0B 5D */	bl playExpression__11daNpcChin_cFv
/* 8098D178  7F E3 FB 78 */	mr r3, r31
/* 8098D17C  48 00 0E D1 */	bl playMotion__11daNpcChin_cFv
/* 8098D180  38 60 00 01 */	li r3, 1
/* 8098D184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098D188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098D18C  7C 08 03 A6 */	mtlr r0
/* 8098D190  38 21 00 10 */	addi r1, r1, 0x10
/* 8098D194  4E 80 00 20 */	blr 
