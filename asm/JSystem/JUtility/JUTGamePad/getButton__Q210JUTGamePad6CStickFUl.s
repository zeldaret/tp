lbl_802E1500:
/* 802E1500  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 802E1504  C0 2D 83 64 */	lfs f1, sReleasePoint__Q210JUTGamePad6CStick(r13)
/* 802E1508  FC 80 08 50 */	fneg f4, f1
/* 802E150C  C0 43 00 00 */	lfs f2, 0(r3)
/* 802E1510  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 802E1514  40 80 00 14 */	bge lbl_802E1528
/* 802E1518  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 802E151C  40 80 00 0C */	bge lbl_802E1528
/* 802E1520  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 802E1524  48 00 00 38 */	b lbl_802E155C
lbl_802E1528:
/* 802E1528  C0 6D 83 60 */	lfs f3, sPressPoint__Q210JUTGamePad6CStick(r13)
/* 802E152C  FC 00 18 50 */	fneg f0, f3
/* 802E1530  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802E1534  4C 40 13 82 */	cror 2, 0, 2
/* 802E1538  40 82 00 10 */	bne lbl_802E1548
/* 802E153C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802E1540  60 00 00 01 */	ori r0, r0, 1
/* 802E1544  48 00 00 18 */	b lbl_802E155C
lbl_802E1548:
/* 802E1548  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 802E154C  4C 41 13 82 */	cror 2, 1, 2
/* 802E1550  40 82 00 0C */	bne lbl_802E155C
/* 802E1554  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802E1558  60 00 00 02 */	ori r0, r0, 2
lbl_802E155C:
/* 802E155C  C0 43 00 04 */	lfs f2, 4(r3)
/* 802E1560  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 802E1564  40 80 00 14 */	bge lbl_802E1578
/* 802E1568  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 802E156C  40 80 00 0C */	bge lbl_802E1578
/* 802E1570  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 802E1574  48 00 00 38 */	b lbl_802E15AC
lbl_802E1578:
/* 802E1578  C0 2D 83 60 */	lfs f1, sPressPoint__Q210JUTGamePad6CStick(r13)
/* 802E157C  FC 00 08 50 */	fneg f0, f1
/* 802E1580  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802E1584  4C 40 13 82 */	cror 2, 0, 2
/* 802E1588  40 82 00 10 */	bne lbl_802E1598
/* 802E158C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 802E1590  60 00 00 04 */	ori r0, r0, 4
/* 802E1594  48 00 00 18 */	b lbl_802E15AC
lbl_802E1598:
/* 802E1598  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 802E159C  4C 41 13 82 */	cror 2, 1, 2
/* 802E15A0  40 82 00 0C */	bne lbl_802E15AC
/* 802E15A4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 802E15A8  60 00 00 08 */	ori r0, r0, 8
lbl_802E15AC:
/* 802E15AC  7C 03 03 78 */	mr r3, r0
/* 802E15B0  4E 80 00 20 */	blr 
