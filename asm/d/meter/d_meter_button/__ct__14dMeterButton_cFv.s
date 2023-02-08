lbl_80201328:
/* 80201328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020132C  7C 08 02 A6 */	mflr r0
/* 80201330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80201334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80201338  7C 7F 1B 78 */	mr r31, r3
/* 8020133C  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 80201340  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 80201344  90 03 00 00 */	stw r0, 0(r3)
/* 80201348  3C 80 80 3C */	lis r4, __vt__14dMeterButton_c@ha /* 0x803BF258@ha */
/* 8020134C  38 04 F2 58 */	addi r0, r4, __vt__14dMeterButton_c@l /* 0x803BF258@l */
/* 80201350  90 03 00 00 */	stw r0, 0(r3)
/* 80201354  48 00 00 79 */	bl _create__14dMeterButton_cFv
/* 80201358  7F E3 FB 78 */	mr r3, r31
/* 8020135C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80201360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80201364  7C 08 03 A6 */	mtlr r0
/* 80201368  38 21 00 10 */	addi r1, r1, 0x10
/* 8020136C  4E 80 00 20 */	blr 
