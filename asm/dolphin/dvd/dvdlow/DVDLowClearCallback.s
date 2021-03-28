lbl_80348458:
/* 80348458  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034845C  38 00 00 00 */	li r0, 0
/* 80348460  90 03 60 04 */	stw r0, 0x6004(r3)
/* 80348464  80 6D 91 98 */	lwz r3, Callback(r13)
/* 80348468  90 0D 91 AC */	stw r0, WaitingCoverClose(r13)
/* 8034846C  90 0D 91 98 */	stw r0, Callback(r13)
/* 80348470  4E 80 00 20 */	blr 
