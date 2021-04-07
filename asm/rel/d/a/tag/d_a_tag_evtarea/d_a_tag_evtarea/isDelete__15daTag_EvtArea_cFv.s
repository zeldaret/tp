lbl_8048C89C:
/* 8048C89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C8A0  7C 08 02 A6 */	mflr r0
/* 8048C8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C8A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C8AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8048C8B0  7C 7E 1B 78 */	mr r30, r3
/* 8048C8B4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048C8B8  54 04 A5 3E */	rlwinm r4, r0, 0x14, 0x14, 0x1f
/* 8048C8BC  28 04 0F FF */	cmplwi r4, 0xfff
/* 8048C8C0  38 60 FF FF */	li r3, -1
/* 8048C8C4  41 82 00 08 */	beq lbl_8048C8CC
/* 8048C8C8  7C 83 23 78 */	mr r3, r4
lbl_8048C8CC:
/* 8048C8CC  3C 03 00 01 */	addis r0, r3, 1
/* 8048C8D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048C8D4  41 82 00 28 */	beq lbl_8048C8FC
/* 8048C8D8  28 04 0F FF */	cmplwi r4, 0xfff
/* 8048C8DC  38 60 FF FF */	li r3, -1
/* 8048C8E0  41 82 00 08 */	beq lbl_8048C8E8
/* 8048C8E4  7C 83 23 78 */	mr r3, r4
lbl_8048C8E8:
/* 8048C8E8  4B CC 01 C5 */	bl daNpcT_chkEvtBit__FUl
/* 8048C8EC  2C 03 00 00 */	cmpwi r3, 0
/* 8048C8F0  41 82 00 0C */	beq lbl_8048C8FC
/* 8048C8F4  38 60 00 01 */	li r3, 1
/* 8048C8F8  48 00 00 3C */	b lbl_8048C934
lbl_8048C8FC:
/* 8048C8FC  3B E0 00 00 */	li r31, 0
/* 8048C900  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 8048C904  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8048C908  28 04 00 FF */	cmplwi r4, 0xff
/* 8048C90C  41 82 00 24 */	beq lbl_8048C930
/* 8048C910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048C914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048C918  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8048C91C  7C 05 07 74 */	extsb r5, r0
/* 8048C920  4B BA 8A 41 */	bl isSwitch__10dSv_info_cCFii
/* 8048C924  2C 03 00 00 */	cmpwi r3, 0
/* 8048C928  41 82 00 08 */	beq lbl_8048C930
/* 8048C92C  3B E0 00 01 */	li r31, 1
lbl_8048C930:
/* 8048C930  57 E3 06 3E */	clrlwi r3, r31, 0x18
lbl_8048C934:
/* 8048C934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C938  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048C93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C940  7C 08 03 A6 */	mtlr r0
/* 8048C944  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C948  4E 80 00 20 */	blr 
