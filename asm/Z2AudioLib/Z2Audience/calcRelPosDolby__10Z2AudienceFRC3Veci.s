lbl_802BDB44:
/* 802BDB44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDB48  7C 08 02 A6 */	mflr r0
/* 802BDB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDB50  C0 24 00 08 */	lfs f1, 8(r4)
/* 802BDB54  1C 05 00 74 */	mulli r0, r5, 0x74
/* 802BDB58  7C 83 02 14 */	add r4, r3, r0
/* 802BDB5C  C0 04 01 94 */	lfs f0, 0x194(r4)
/* 802BDB60  EC 21 00 2A */	fadds f1, f1, f0
/* 802BDB64  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 802BDB68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDB6C  40 81 00 0C */	ble lbl_802BDB78
/* 802BDB70  C0 22 C0 A4 */	lfs f1, lit_894(r2)
/* 802BDB74  48 00 00 58 */	b lbl_802BDBCC
lbl_802BDB78:
/* 802BDB78  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 802BDB7C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802BDB80  40 80 00 0C */	bge lbl_802BDB8C
/* 802BDB84  C0 22 C0 A0 */	lfs f1, lit_848(r2)
/* 802BDB88  48 00 00 44 */	b lbl_802BDBCC
lbl_802BDB8C:
/* 802BDB8C  C0 62 C0 A0 */	lfs f3, lit_848(r2)
/* 802BDB90  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 802BDB94  40 80 00 1C */	bge lbl_802BDBB0
/* 802BDB98  C0 82 C0 B8 */	lfs f4, lit_1000(r2)
/* 802BDB9C  FC A0 18 90 */	fmr f5, f3
/* 802BDBA0  C0 C3 00 58 */	lfs f6, 0x58(r3)
/* 802BDBA4  38 60 00 01 */	li r3, 1
/* 802BDBA8  4B FE BB 4D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BDBAC  48 00 00 20 */	b lbl_802BDBCC
lbl_802BDBB0:
/* 802BDBB0  FC 40 18 90 */	fmr f2, f3
/* 802BDBB4  FC 60 00 90 */	fmr f3, f0
/* 802BDBB8  C0 82 C0 B8 */	lfs f4, lit_1000(r2)
/* 802BDBBC  C0 A3 00 58 */	lfs f5, 0x58(r3)
/* 802BDBC0  C0 C2 C0 A4 */	lfs f6, lit_894(r2)
/* 802BDBC4  38 60 00 00 */	li r3, 0
/* 802BDBC8  4B FE BB 2D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
lbl_802BDBCC:
/* 802BDBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDBD0  7C 08 03 A6 */	mtlr r0
/* 802BDBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDBD8  4E 80 00 20 */	blr 
