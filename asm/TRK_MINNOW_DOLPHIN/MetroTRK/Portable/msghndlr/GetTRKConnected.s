lbl_8036ECCC:
/* 8036ECCC  3C 60 80 45 */	lis r3, IsTRKConnected@ha /* 0x8044F288@ha */
/* 8036ECD0  38 63 F2 88 */	addi r3, r3, IsTRKConnected@l /* 0x8044F288@l */
/* 8036ECD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8036ECD8  4E 80 00 20 */	blr 
