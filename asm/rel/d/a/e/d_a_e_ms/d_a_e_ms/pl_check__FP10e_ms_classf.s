lbl_80725C80:
/* 80725C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80725C84  7C 08 02 A6 */	mflr r0
/* 80725C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80725C8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80725C90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80725C94  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80725C98  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 80725C9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80725CA0  40 80 00 18 */	bge lbl_80725CB8
/* 80725CA4  4B 8F 71 59 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80725CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80725CAC  40 82 00 0C */	bne lbl_80725CB8
/* 80725CB0  38 60 00 01 */	li r3, 1
/* 80725CB4  48 00 00 08 */	b lbl_80725CBC
lbl_80725CB8:
/* 80725CB8  38 60 00 00 */	li r3, 0
lbl_80725CBC:
/* 80725CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80725CC0  7C 08 03 A6 */	mtlr r0
/* 80725CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80725CC8  4E 80 00 20 */	blr 
