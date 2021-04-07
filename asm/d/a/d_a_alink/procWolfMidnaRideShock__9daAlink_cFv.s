lbl_8012D104:
/* 8012D104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012D108  7C 08 02 A6 */	mflr r0
/* 8012D10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012D110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012D114  93 C1 00 08 */	stw r30, 8(r1)
/* 8012D118  7C 7E 1B 78 */	mr r30, r3
/* 8012D11C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012D120  7F E3 FB 78 */	mr r3, r31
/* 8012D124  48 03 13 A9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012D128  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D12C  41 82 00 38 */	beq lbl_8012D164
/* 8012D130  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 8012D134  28 00 00 32 */	cmplwi r0, 0x32
/* 8012D138  40 82 00 1C */	bne lbl_8012D154
/* 8012D13C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012D140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012D144  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8012D148  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8012D14C  4B F1 B0 31 */	bl cutEnd__16dEvent_manager_cFi
/* 8012D150  48 00 00 3C */	b lbl_8012D18C
lbl_8012D154:
/* 8012D154  7F C3 F3 78 */	mr r3, r30
/* 8012D158  38 80 00 00 */	li r4, 0
/* 8012D15C  4B FF C9 E9 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012D160  48 00 00 2C */	b lbl_8012D18C
lbl_8012D164:
/* 8012D164  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012D168  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 8012D16C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012D170  40 81 00 1C */	ble lbl_8012D18C
/* 8012D174  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 8012D178  28 00 00 32 */	cmplwi r0, 0x32
/* 8012D17C  41 82 00 10 */	beq lbl_8012D18C
/* 8012D180  7F C3 F3 78 */	mr r3, r30
/* 8012D184  38 80 00 01 */	li r4, 1
/* 8012D188  4B FF C9 BD */	bl checkNextActionWolf__9daAlink_cFi
lbl_8012D18C:
/* 8012D18C  38 60 00 01 */	li r3, 1
/* 8012D190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012D194  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012D198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012D19C  7C 08 03 A6 */	mtlr r0
/* 8012D1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8012D1A4  4E 80 00 20 */	blr 
