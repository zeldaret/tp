lbl_80174E50:
/* 80174E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80174E54  7C 08 02 A6 */	mflr r0
/* 80174E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80174E5C  7C 6B 1B 78 */	mr r11, r3
/* 80174E60  7C 8A 23 78 */	mr r10, r4
/* 80174E64  7C A9 2B 78 */	mr r9, r5
/* 80174E68  7C C0 33 78 */	mr r0, r6
/* 80174E6C  7C E8 3B 78 */	mr r8, r7
/* 80174E70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80174E74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80174E78  38 63 23 3C */	addi r3, r3, 0x233c
/* 80174E7C  7D 64 5B 78 */	mr r4, r11
/* 80174E80  7D 45 53 78 */	mr r5, r10
/* 80174E84  C0 22 9D CC */	lfs f1, lit_10574(r2)
/* 80174E88  7D 26 4B 78 */	mr r6, r9
/* 80174E8C  7C 07 03 78 */	mr r7, r0
/* 80174E90  4B F1 1E FD */	bl ChkCamera__4dCcSFR4cXyzR4cXyzfP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_c
/* 80174E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80174E98  7C 08 03 A6 */	mtlr r0
/* 80174E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80174EA0  4E 80 00 20 */	blr 
