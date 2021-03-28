lbl_8035D2F0:
/* 8035D2F0  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035D2F4  80 04 01 EC */	lwz r0, 0x1ec(r4)
/* 8035D2F8  50 60 3D F0 */	rlwimi r0, r3, 7, 0x17, 0x18
/* 8035D2FC  90 04 01 EC */	stw r0, 0x1ec(r4)
/* 8035D300  4E 80 00 20 */	blr 
