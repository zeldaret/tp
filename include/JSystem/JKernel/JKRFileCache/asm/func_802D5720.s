/* readFsResource__12JKRFileCacheFPvUlPCc __ct__12JKRFileCacheFPCcPCc::readFsResource(void *, unsigned long, char const *) */
/* missing reference */
/* 802D5720 002D2660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5724 002D2664  7C 08 02 A6 */	mflr r0
/* 802D5728 002D2668  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D572C 002D266C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D5730 002D2670  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D5734 002D2674  7D 89 03 A6 */	mtctr r12
/* 802D5738 002D2678  4E 80 04 21 */	bctrl
/* 802D573C 002D267C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5740 002D2680  7C 08 03 A6 */	mtlr r0
/* 802D5744 002D2684  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5748 002D2688  4E 80 00 20 */	blr
