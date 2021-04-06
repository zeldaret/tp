lbl_8020D948:
/* 8020D948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D94C  7C 08 02 A6 */	mflr r0
/* 8020D950  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020D958  7C 7F 1B 78 */	mr r31, r3
/* 8020D95C  3C A0 80 3A */	lis r5, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 8020D960  38 05 6F 88 */	addi r0, r5, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 8020D964  90 03 00 00 */	stw r0, 0(r3)
/* 8020D968  3C A0 80 3C */	lis r5, __vt__11dMeterMap_c@ha /* 0x803BF2F8@ha */
/* 8020D96C  38 05 F2 F8 */	addi r0, r5, __vt__11dMeterMap_c@l /* 0x803BF2F8@l */
/* 8020D970  90 03 00 00 */	stw r0, 0(r3)
/* 8020D974  48 00 00 79 */	bl _create__11dMeterMap_cFP9J2DScreen
/* 8020D978  7F E3 FB 78 */	mr r3, r31
/* 8020D97C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020D980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D984  7C 08 03 A6 */	mtlr r0
/* 8020D988  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D98C  4E 80 00 20 */	blr 
