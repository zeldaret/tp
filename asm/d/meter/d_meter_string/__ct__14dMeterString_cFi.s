lbl_8020ED60:
/* 8020ED60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020ED64  7C 08 02 A6 */	mflr r0
/* 8020ED68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020ED6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020ED70  7C 7F 1B 78 */	mr r31, r3
/* 8020ED74  3C A0 80 3A */	lis r5, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 8020ED78  38 05 6F 88 */	addi r0, r5, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 8020ED7C  90 03 00 00 */	stw r0, 0(r3)
/* 8020ED80  3C A0 80 3C */	lis r5, __vt__11dMeterSub_c@ha /* 0x803BB6D4@ha */
/* 8020ED84  38 05 B6 D4 */	addi r0, r5, __vt__11dMeterSub_c@l /* 0x803BB6D4@l */
/* 8020ED88  90 03 00 00 */	stw r0, 0(r3)
/* 8020ED8C  3C A0 80 3C */	lis r5, __vt__14dMeterString_c@ha /* 0x803BF308@ha */
/* 8020ED90  38 05 F3 08 */	addi r0, r5, __vt__14dMeterString_c@l /* 0x803BF308@l */
/* 8020ED94  90 03 00 00 */	stw r0, 0(r3)
/* 8020ED98  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020ED9C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020EDA0  80 05 5C E0 */	lwz r0, 0x5ce0(r5)
/* 8020EDA4  90 03 00 18 */	stw r0, 0x18(r3)
/* 8020EDA8  38 00 00 00 */	li r0, 0
/* 8020EDAC  98 03 00 28 */	stb r0, 0x28(r3)
/* 8020EDB0  90 83 00 24 */	stw r4, 0x24(r3)
/* 8020EDB4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020EDB8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8020EDBC  7D 89 03 A6 */	mtctr r12
/* 8020EDC0  4E 80 04 21 */	bctrl 
/* 8020EDC4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8020EDC8  28 00 00 00 */	cmplwi r0, 0
/* 8020EDCC  41 82 00 10 */	beq lbl_8020EDDC
/* 8020EDD0  7F E3 FB 78 */	mr r3, r31
/* 8020EDD4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8020EDD8  48 00 07 CD */	bl createString__14dMeterString_cFi
lbl_8020EDDC:
/* 8020EDDC  7F E3 FB 78 */	mr r3, r31
/* 8020EDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020EDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020EDE8  7C 08 03 A6 */	mtlr r0
/* 8020EDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8020EDF0  4E 80 00 20 */	blr 
