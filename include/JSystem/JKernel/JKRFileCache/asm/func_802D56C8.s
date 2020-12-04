/* getFsResource__12JKRFileCacheFPCc __ct__12JKRFileCacheFPCcPCc::getFsResource(char const *) */
/* missing reference */
/* 802D56C8 002D2608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D56CC 002D260C  7C 08 02 A6 */	mflr r0
/* 802D56D0 002D2610  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D56D4 002D2614  81 83 00 00 */	lwz r12, 0(r3)
/* 802D56D8 002D2618  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D56DC 002D261C  7D 89 03 A6 */	mtctr r12
/* 802D56E0 002D2620  4E 80 04 21 */	bctrl
/* 802D56E4 002D2624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D56E8 002D2628  7C 08 03 A6 */	mtlr r0
/* 802D56EC 002D262C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D56F0 002D2630  4E 80 00 20 */	blr
