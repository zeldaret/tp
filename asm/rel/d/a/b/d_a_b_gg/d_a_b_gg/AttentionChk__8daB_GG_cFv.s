lbl_805E5190:
/* 805E5190  3C 80 80 5F */	lis r4, data_805ED728@ha /* 0x805ED728@ha */
/* 805E5194  C0 24 D7 28 */	lfs f1, data_805ED728@l(r4)  /* 0x805ED728@l */
/* 805E5198  3C 80 80 5F */	lis r4, lit_6653@ha /* 0x805ED32C@ha */
/* 805E519C  C0 04 D3 2C */	lfs f0, lit_6653@l(r4)  /* 0x805ED32C@l */
/* 805E51A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E51A4  40 80 00 70 */	bge lbl_805E5214
/* 805E51A8  38 A0 00 04 */	li r5, 4
/* 805E51AC  90 A3 05 5C */	stw r5, 0x55c(r3)
/* 805E51B0  88 03 05 B0 */	lbz r0, 0x5b0(r3)
/* 805E51B4  28 00 00 00 */	cmplwi r0, 0
/* 805E51B8  4D 82 00 20 */	beqlr 
/* 805E51BC  88 03 05 C6 */	lbz r0, 0x5c6(r3)
/* 805E51C0  28 00 00 02 */	cmplwi r0, 2
/* 805E51C4  4C 82 00 20 */	bnelr 
/* 805E51C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E51CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E51D0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805E51D4  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 805E51D8  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 805E51DC  7C 04 00 50 */	subf r0, r4, r0
/* 805E51E0  7C 04 07 34 */	extsh r4, r0
/* 805E51E4  3C 84 00 01 */	addis r4, r4, 1
/* 805E51E8  38 04 80 00 */	addi r0, r4, -32768
/* 805E51EC  7C 00 07 34 */	extsh r0, r0
/* 805E51F0  2C 00 30 00 */	cmpwi r0, 0x3000
/* 805E51F4  40 80 00 14 */	bge lbl_805E5208
/* 805E51F8  2C 00 D0 00 */	cmpwi r0, -12288
/* 805E51FC  40 81 00 0C */	ble lbl_805E5208
/* 805E5200  90 A3 05 5C */	stw r5, 0x55c(r3)
/* 805E5204  4E 80 00 20 */	blr 
lbl_805E5208:
/* 805E5208  38 00 00 00 */	li r0, 0
/* 805E520C  90 03 05 5C */	stw r0, 0x55c(r3)
/* 805E5210  4E 80 00 20 */	blr 
lbl_805E5214:
/* 805E5214  38 00 00 00 */	li r0, 0
/* 805E5218  90 03 05 5C */	stw r0, 0x55c(r3)
/* 805E521C  4E 80 00 20 */	blr 
