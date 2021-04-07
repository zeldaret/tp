lbl_800E011C:
/* 800E011C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E0120  7C 08 02 A6 */	mflr r0
/* 800E0124  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E0128  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800E012C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800E0130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0134  7C 7F 1B 78 */	mr r31, r3
/* 800E0138  4B FF FF 89 */	bl getBoomFlyMax__9daAlink_cCFv
/* 800E013C  FF E0 08 90 */	fmr f31, f1
/* 800E0140  7F E3 FB 78 */	mr r3, r31
/* 800E0144  48 00 00 5D */	bl checkBossBabaRoom__9daAlink_cFv
/* 800E0148  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E014C  41 82 00 0C */	beq lbl_800E0158
/* 800E0150  C0 22 93 E8 */	lfs f1, lit_12475(r2)
/* 800E0154  48 00 00 20 */	b lbl_800E0174
lbl_800E0158:
/* 800E0158  3C 60 80 39 */	lis r3, m__18daAlinkHIO_boom_c0@ha /* 0x8038E6C8@ha */
/* 800E015C  38 63 E6 C8 */	addi r3, r3, m__18daAlinkHIO_boom_c0@l /* 0x8038E6C8@l */
/* 800E0160  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 800E0164  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800E0168  40 81 00 08 */	ble lbl_800E0170
/* 800E016C  48 00 00 08 */	b lbl_800E0174
lbl_800E0170:
/* 800E0170  FC 20 F8 90 */	fmr f1, f31
lbl_800E0174:
/* 800E0174  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800E0178  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800E017C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E0180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E0184  7C 08 03 A6 */	mtlr r0
/* 800E0188  38 21 00 20 */	addi r1, r1, 0x20
/* 800E018C  4E 80 00 20 */	blr 
