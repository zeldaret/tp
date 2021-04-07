lbl_801D9268:
/* 801D9268  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801D926C  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801D9270  80 84 00 34 */	lwz r4, 0x34(r4)
/* 801D9274  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 801D9278  40 82 00 0C */	bne lbl_801D9284
/* 801D927C  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801D9280  4D 82 00 20 */	beqlr 
lbl_801D9284:
/* 801D9284  38 00 00 04 */	li r0, 4
/* 801D9288  98 03 00 F3 */	stb r0, 0xf3(r3)
/* 801D928C  4E 80 00 20 */	blr 
