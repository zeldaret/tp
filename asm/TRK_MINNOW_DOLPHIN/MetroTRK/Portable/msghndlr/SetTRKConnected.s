lbl_8036ECC0:
/* 8036ECC0  3C 80 80 45 */	lis r4, IsTRKConnected@ha /* 0x8044F288@ha */
/* 8036ECC4  90 64 F2 88 */	stw r3, IsTRKConnected@l(r4)  /* 0x8044F288@l */
/* 8036ECC8  4E 80 00 20 */	blr 
