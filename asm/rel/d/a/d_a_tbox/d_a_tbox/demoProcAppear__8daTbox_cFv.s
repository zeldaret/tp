lbl_80493484:
/* 80493484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493488  7C 08 02 A6 */	mflr r0
/* 8049348C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80493494  7C 7F 1B 78 */	mr r31, r3
/* 80493498  A0 63 07 5A */	lhz r3, 0x75a(r3)
/* 8049349C  28 03 00 00 */	cmplwi r3, 0
/* 804934A0  41 82 00 0C */	beq lbl_804934AC
/* 804934A4  38 03 FF FF */	addi r0, r3, -1
/* 804934A8  B0 1F 07 5A */	sth r0, 0x75a(r31)
lbl_804934AC:
/* 804934AC  80 7F 07 34 */	lwz r3, 0x734(r31)
/* 804934B0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804934B4  3C 60 80 49 */	lis r3, lit_5021@ha
/* 804934B8  C0 03 63 0C */	lfs f0, lit_5021@l(r3)
/* 804934BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804934C0  40 82 00 10 */	bne lbl_804934D0
/* 804934C4  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 804934C8  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 804934CC  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_804934D0:
/* 804934D0  80 7F 07 34 */	lwz r3, 0x734(r31)
/* 804934D4  4B B7 9F 54 */	b play__14mDoExt_baseAnmFv
/* 804934D8  2C 03 00 00 */	cmpwi r3, 0
/* 804934DC  41 82 00 28 */	beq lbl_80493504
/* 804934E0  3C 60 80 49 */	lis r3, lit_3934@ha
/* 804934E4  C0 03 62 48 */	lfs f0, lit_3934@l(r3)
/* 804934E8  80 7F 07 34 */	lwz r3, 0x734(r31)
/* 804934EC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804934F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804934F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804934F8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804934FC  80 9F 07 4C */	lwz r4, 0x74c(r31)
/* 80493500  4B BB 4C 7C */	b cutEnd__16dEvent_manager_cFi
lbl_80493504:
/* 80493504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80493508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049350C  7C 08 03 A6 */	mtlr r0
/* 80493510  38 21 00 10 */	addi r1, r1, 0x10
/* 80493514  4E 80 00 20 */	blr 
