lbl_8035CC60:
/* 8035CC60  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035CC64  38 00 00 00 */	li r0, 0
/* 8035CC68  80 85 01 EC */	lwz r4, 0x1ec(r5)
/* 8035CC6C  50 64 64 A6 */	rlwimi r4, r3, 0xc, 0x12, 0x13
/* 8035CC70  90 85 01 EC */	stw r4, 0x1ec(r5)
/* 8035CC74  80 65 01 FC */	lwz r3, 0x1fc(r5)
/* 8035CC78  50 03 64 A6 */	rlwimi r3, r0, 0xc, 0x12, 0x13
/* 8035CC7C  90 65 01 FC */	stw r3, 0x1fc(r5)
/* 8035CC80  4E 80 00 20 */	blr 
