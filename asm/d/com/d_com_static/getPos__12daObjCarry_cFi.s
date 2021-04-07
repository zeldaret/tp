lbl_80031D24:
/* 80031D24  1C 83 00 0C */	mulli r4, r3, 0xc
/* 80031D28  3C 60 80 42 */	lis r3, mPos__12daObjCarry_c@ha /* 0x804245AC@ha */
/* 80031D2C  38 03 45 AC */	addi r0, r3, mPos__12daObjCarry_c@l /* 0x804245AC@l */
/* 80031D30  7C 60 22 14 */	add r3, r0, r4
/* 80031D34  4E 80 00 20 */	blr 
