/* readNameResource__12JKRFileCacheFPvUlUlPCc __ct__12JKRFileCacheFPCcPCc::readNameResource(void *, unsigned long, unsigned long, char const *) */
/* missing reference */
/* 802D574C 002D268C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5750 002D2690  7C 08 02 A6 */	mflr r0
/* 802D5754 002D2694  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5758 002D2698  81 83 00 00 */	lwz r12, 0(r3)
/* 802D575C 002D269C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D5760 002D26A0  7D 89 03 A6 */	mtctr r12
/* 802D5764 002D26A4  4E 80 04 21 */	bctrl
/* 802D5768 002D26A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D576C 002D26AC  7C 08 03 A6 */	mtlr r0
/* 802D5770 002D26B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5774 002D26B4  4E 80 00 20 */	blr
