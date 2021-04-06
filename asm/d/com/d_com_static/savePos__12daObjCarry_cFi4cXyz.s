lbl_80031D38:
/* 80031D38  C0 04 00 00 */	lfs f0, 0(r4)
/* 80031D3C  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80031D40  3C 60 80 42 */	lis r3, mPos__12daObjCarry_c@ha /* 0x804245AC@ha */
/* 80031D44  38 63 45 AC */	addi r3, r3, mPos__12daObjCarry_c@l /* 0x804245AC@l */
/* 80031D48  7C 03 05 2E */	stfsx f0, r3, r0
/* 80031D4C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80031D50  7C 63 02 14 */	add r3, r3, r0
/* 80031D54  D0 03 00 04 */	stfs f0, 4(r3)
/* 80031D58  C0 04 00 08 */	lfs f0, 8(r4)
/* 80031D5C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80031D60  4E 80 00 20 */	blr 
