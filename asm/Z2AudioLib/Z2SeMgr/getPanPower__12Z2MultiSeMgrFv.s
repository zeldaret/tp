lbl_802AECE0:
/* 802AECE0  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 802AECE4  C0 02 BE 80 */	lfs f0, lit_4042(r2)
/* 802AECE8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802AECEC  40 81 00 08 */	ble lbl_802AECF4
/* 802AECF0  48 00 00 18 */	b lbl_802AED08
lbl_802AECF4:
/* 802AECF4  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AECF8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802AECFC  40 80 00 08 */	bge lbl_802AED04
/* 802AED00  48 00 00 08 */	b lbl_802AED08
lbl_802AED04:
/* 802AED04  FC 00 18 90 */	fmr f0, f3
lbl_802AED08:
/* 802AED08  C0 83 00 08 */	lfs f4, 8(r3)
/* 802AED0C  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802AED10  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 802AED14  40 81 00 08 */	ble lbl_802AED1C
/* 802AED18  48 00 00 18 */	b lbl_802AED30
lbl_802AED1C:
/* 802AED1C  C0 22 BE 78 */	lfs f1, lit_4040(r2)
/* 802AED20  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 802AED24  40 80 00 08 */	bge lbl_802AED2C
/* 802AED28  48 00 00 08 */	b lbl_802AED30
lbl_802AED2C:
/* 802AED2C  FC 20 20 90 */	fmr f1, f4
lbl_802AED30:
/* 802AED30  EC 21 00 2A */	fadds f1, f1, f0
/* 802AED34  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AED38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AED3C  40 81 00 7C */	ble lbl_802AEDB8
/* 802AED40  C0 42 BE 80 */	lfs f2, lit_4042(r2)
/* 802AED44  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 802AED48  40 81 00 08 */	ble lbl_802AED50
/* 802AED4C  48 00 00 18 */	b lbl_802AED64
lbl_802AED50:
/* 802AED50  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802AED54  40 80 00 0C */	bge lbl_802AED60
/* 802AED58  FC 40 00 90 */	fmr f2, f0
/* 802AED5C  48 00 00 08 */	b lbl_802AED64
lbl_802AED60:
/* 802AED60  FC 40 18 90 */	fmr f2, f3
lbl_802AED64:
/* 802AED64  C0 02 BE 80 */	lfs f0, lit_4042(r2)
/* 802AED68  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802AED6C  40 81 00 08 */	ble lbl_802AED74
/* 802AED70  48 00 00 18 */	b lbl_802AED88
lbl_802AED74:
/* 802AED74  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AED78  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802AED7C  40 80 00 08 */	bge lbl_802AED84
/* 802AED80  48 00 00 08 */	b lbl_802AED88
lbl_802AED84:
/* 802AED84  FC 00 20 90 */	fmr f0, f4
lbl_802AED88:
/* 802AED88  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802AED8C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802AED90  40 81 00 08 */	ble lbl_802AED98
/* 802AED94  48 00 00 18 */	b lbl_802AEDAC
lbl_802AED98:
/* 802AED98  C0 22 BE 78 */	lfs f1, lit_4040(r2)
/* 802AED9C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802AEDA0  40 80 00 08 */	bge lbl_802AEDA8
/* 802AEDA4  48 00 00 08 */	b lbl_802AEDAC
lbl_802AEDA8:
/* 802AEDA8  FC 20 18 90 */	fmr f1, f3
lbl_802AEDAC:
/* 802AEDAC  EC 00 10 2A */	fadds f0, f0, f2
/* 802AEDB0  EC 21 00 24 */	fdivs f1, f1, f0
/* 802AEDB4  4E 80 00 20 */	blr 
lbl_802AEDB8:
/* 802AEDB8  C0 22 BE A8 */	lfs f1, lit_4052(r2)
/* 802AEDBC  4E 80 00 20 */	blr 
