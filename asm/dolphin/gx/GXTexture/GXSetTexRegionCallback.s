lbl_8035E6AC:
/* 8035E6AC  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035E6B0  84 04 04 C8 */	lwzu r0, 0x4c8(r4)
/* 8035E6B4  90 64 00 00 */	stw r3, 0(r4)
/* 8035E6B8  7C 03 03 78 */	mr r3, r0
/* 8035E6BC  4E 80 00 20 */	blr 
