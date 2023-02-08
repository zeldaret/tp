lbl_80A5DD3C:
/* 80A5DD3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A5DD40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A5DD44  54 60 18 38 */	slwi r0, r3, 3
/* 80A5DD48  7C 64 02 14 */	add r3, r4, r0
/* 80A5DD4C  88 63 5D B0 */	lbz r3, 0x5db0(r3)
/* 80A5DD50  7C 63 07 74 */	extsb r3, r3
/* 80A5DD54  4E 80 00 20 */	blr 
