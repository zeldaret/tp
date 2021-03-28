lbl_80A5DD58:
/* 80A5DD58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A5DD5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A5DD60  54 60 18 38 */	slwi r0, r3, 3
/* 80A5DD64  7C 64 02 14 */	add r3, r4, r0
/* 80A5DD68  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A5DD6C  4E 80 00 20 */	blr 
