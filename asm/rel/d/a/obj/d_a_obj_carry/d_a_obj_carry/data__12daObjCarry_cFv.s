lbl_8046F6A4:
/* 8046F6A4  88 03 0C F0 */	lbz r0, 0xcf0(r3)
/* 8046F6A8  1C 80 00 94 */	mulli r4, r0, 0x94
/* 8046F6AC  3C 60 80 48 */	lis r3, mData__12daObjCarry_c@ha
/* 8046F6B0  38 03 9A 24 */	addi r0, r3, mData__12daObjCarry_c@l
/* 8046F6B4  7C 60 22 14 */	add r3, r0, r4
/* 8046F6B8  4E 80 00 20 */	blr 
