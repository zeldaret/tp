lbl_804FC0C0:
/* 804FC0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC0C4  7C 08 02 A6 */	mflr r0
/* 804FC0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC0CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FC0D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FC0D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804FC0D8  C0 03 06 88 */	lfs f0, 0x688(r3)
/* 804FC0DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804FC0E0  40 80 00 24 */	bge lbl_804FC104
/* 804FC0E4  88 03 08 51 */	lbz r0, 0x851(r3)
/* 804FC0E8  7C 00 07 75 */	extsb. r0, r0
/* 804FC0EC  40 82 00 10 */	bne lbl_804FC0FC
/* 804FC0F0  4B B2 0D 0D */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804FC0F4  2C 03 00 00 */	cmpwi r3, 0
/* 804FC0F8  40 82 00 0C */	bne lbl_804FC104
lbl_804FC0FC:
/* 804FC0FC  38 60 00 01 */	li r3, 1
/* 804FC100  48 00 00 08 */	b lbl_804FC108
lbl_804FC104:
/* 804FC104  38 60 00 00 */	li r3, 0
lbl_804FC108:
/* 804FC108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC10C  7C 08 03 A6 */	mtlr r0
/* 804FC110  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC114  4E 80 00 20 */	blr 
