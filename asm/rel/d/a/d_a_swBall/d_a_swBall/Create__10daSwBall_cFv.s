lbl_80D4E374:
/* 80D4E374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4E378  7C 08 02 A6 */	mflr r0
/* 80D4E37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4E380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4E384  7C 7F 1B 78 */	mr r31, r3
/* 80D4E388  38 60 00 00 */	li r3, 0
/* 80D4E38C  38 80 FF FF */	li r4, -1
/* 80D4E390  38 00 00 08 */	li r0, 8
/* 80D4E394  7C 09 03 A6 */	mtctr r0
lbl_80D4E398:
/* 80D4E398  38 03 05 68 */	addi r0, r3, 0x568
/* 80D4E39C  7C 9F 01 2E */	stwx r4, r31, r0
/* 80D4E3A0  38 63 00 04 */	addi r3, r3, 4
/* 80D4E3A4  42 00 FF F4 */	bdnz lbl_80D4E398
/* 80D4E3A8  38 00 FF FF */	li r0, -1
/* 80D4E3AC  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80D4E3B0  7F E3 FB 78 */	mr r3, r31
/* 80D4E3B4  48 00 00 E1 */	bl execute__10daSwBall_cFv
/* 80D4E3B8  7F E3 FB 78 */	mr r3, r31
/* 80D4E3BC  4B FF FD D9 */	bl checkArea__10daSwBall_cFv
/* 80D4E3C0  2C 03 00 00 */	cmpwi r3, 0
/* 80D4E3C4  41 82 00 48 */	beq lbl_80D4E40C
/* 80D4E3C8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4E3CC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D4E3D0  28 00 00 01 */	cmplwi r0, 1
/* 80D4E3D4  40 82 00 10 */	bne lbl_80D4E3E4
/* 80D4E3D8  38 00 00 03 */	li r0, 3
/* 80D4E3DC  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80D4E3E0  48 00 00 0C */	b lbl_80D4E3EC
lbl_80D4E3E4:
/* 80D4E3E4  38 00 00 02 */	li r0, 2
/* 80D4E3E8  98 1F 05 8A */	stb r0, 0x58a(r31)
lbl_80D4E3EC:
/* 80D4E3EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4E3F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4E3F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4E3F8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D4E3FC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4E400  7C 05 07 74 */	extsb r5, r0
/* 80D4E404  4B 2E 6D FD */	bl onSwitch__10dSv_info_cFii
/* 80D4E408  48 00 00 0C */	b lbl_80D4E414
lbl_80D4E40C:
/* 80D4E40C  38 00 00 00 */	li r0, 0
/* 80D4E410  98 1F 05 8A */	stb r0, 0x58a(r31)
lbl_80D4E414:
/* 80D4E414  38 60 00 01 */	li r3, 1
/* 80D4E418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4E41C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4E420  7C 08 03 A6 */	mtlr r0
/* 80D4E424  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4E428  4E 80 00 20 */	blr 
