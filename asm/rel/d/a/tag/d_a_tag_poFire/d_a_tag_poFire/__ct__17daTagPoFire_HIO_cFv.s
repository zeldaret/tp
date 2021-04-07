lbl_80D5DACC:
/* 80D5DACC  3C 80 80 D6 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80D5DDB8@ha */
/* 80D5DAD0  38 04 DD B8 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80D5DDB8@l */
/* 80D5DAD4  90 03 00 00 */	stw r0, 0(r3)
/* 80D5DAD8  3C 80 80 D6 */	lis r4, __vt__17daTagPoFire_HIO_c@ha /* 0x80D5DDAC@ha */
/* 80D5DADC  38 04 DD AC */	addi r0, r4, __vt__17daTagPoFire_HIO_c@l /* 0x80D5DDAC@l */
/* 80D5DAE0  90 03 00 00 */	stw r0, 0(r3)
/* 80D5DAE4  38 00 00 14 */	li r0, 0x14
/* 80D5DAE8  98 03 00 04 */	stb r0, 4(r3)
/* 80D5DAEC  4E 80 00 20 */	blr 
