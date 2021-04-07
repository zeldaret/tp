lbl_807BDB84:
/* 807BDB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BDB88  7C 08 02 A6 */	mflr r0
/* 807BDB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BDB90  3C 80 80 7C */	lis r4, lit_3908@ha /* 0x807C1FB8@ha */
/* 807BDB94  38 84 1F B8 */	addi r4, r4, lit_3908@l /* 0x807C1FB8@l */
/* 807BDB98  88 03 06 FA */	lbz r0, 0x6fa(r3)
/* 807BDB9C  28 00 00 00 */	cmplwi r0, 0
/* 807BDBA0  40 82 00 10 */	bne lbl_807BDBB0
/* 807BDBA4  C0 04 00 04 */	lfs f0, 4(r4)
/* 807BDBA8  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 807BDBAC  48 00 00 28 */	b lbl_807BDBD4
lbl_807BDBB0:
/* 807BDBB0  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807BDBB4  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 807BDBB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BDBBC  40 81 00 08 */	ble lbl_807BDBC4
/* 807BDBC0  D0 03 05 2C */	stfs f0, 0x52c(r3)
lbl_807BDBC4:
/* 807BDBC4  38 63 05 2C */	addi r3, r3, 0x52c
/* 807BDBC8  C0 24 00 04 */	lfs f1, 4(r4)
/* 807BDBCC  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 807BDBD0  4B AB 2B 71 */	bl cLib_chaseF__FPfff
lbl_807BDBD4:
/* 807BDBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BDBD8  7C 08 03 A6 */	mtlr r0
/* 807BDBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 807BDBE0  4E 80 00 20 */	blr 
