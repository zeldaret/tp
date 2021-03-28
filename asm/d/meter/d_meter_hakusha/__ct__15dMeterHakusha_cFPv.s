lbl_8020C320:
/* 8020C320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C324  7C 08 02 A6 */	mflr r0
/* 8020C328  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C32C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020C330  7C 7F 1B 78 */	mr r31, r3
/* 8020C334  3C A0 80 3A */	lis r5, __vt__12dDlst_base_c@ha
/* 8020C338  38 05 6F 88 */	addi r0, r5, __vt__12dDlst_base_c@l
/* 8020C33C  90 03 00 00 */	stw r0, 0(r3)
/* 8020C340  3C A0 80 3C */	lis r5, __vt__11dMeterSub_c@ha
/* 8020C344  38 05 B6 D4 */	addi r0, r5, __vt__11dMeterSub_c@l
/* 8020C348  90 03 00 00 */	stw r0, 0(r3)
/* 8020C34C  3C A0 80 3C */	lis r5, __vt__15dMeterHakusha_c@ha
/* 8020C350  38 05 F2 B8 */	addi r0, r5, __vt__15dMeterHakusha_c@l
/* 8020C354  90 03 00 00 */	stw r0, 0(r3)
/* 8020C358  90 83 00 04 */	stw r4, 4(r3)
/* 8020C35C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C360  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8020C364  7D 89 03 A6 */	mtctr r12
/* 8020C368  4E 80 04 21 */	bctrl 
/* 8020C36C  7F E3 FB 78 */	mr r3, r31
/* 8020C370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020C374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C378  7C 08 03 A6 */	mtlr r0
/* 8020C37C  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C380  4E 80 00 20 */	blr 
