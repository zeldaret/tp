lbl_80222364:
/* 80222364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80222368  7C 08 02 A6 */	mflr r0
/* 8022236C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80222370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80222374  93 C1 00 08 */	stw r30, 8(r1)
/* 80222378  7C 7E 1B 78 */	mr r30, r3
/* 8022237C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80222380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80222384  88 A3 5E 3F */	lbz r5, 0x5e3f(r3)
/* 80222388  28 05 00 00 */	cmplwi r5, 0
/* 8022238C  41 82 00 28 */	beq lbl_802223B4
/* 80222390  88 03 5E 59 */	lbz r0, 0x5e59(r3)
/* 80222394  88 83 5E 31 */	lbz r4, 0x5e31(r3)
/* 80222398  98 A3 5E 2F */	stb r5, 0x5e2f(r3)
/* 8022239C  98 83 5E 30 */	stb r4, 0x5e30(r3)
/* 802223A0  98 03 5E 4C */	stb r0, 0x5e4c(r3)
/* 802223A4  38 00 00 00 */	li r0, 0
/* 802223A8  98 03 5E 3F */	stb r0, 0x5e3f(r3)
/* 802223AC  98 03 5E 31 */	stb r0, 0x5e31(r3)
/* 802223B0  98 03 5E 59 */	stb r0, 0x5e59(r3)
lbl_802223B4:
/* 802223B4  88 9E 01 CB */	lbz r4, 0x1cb(r30)
/* 802223B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802223BC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802223C0  88 1F 5E 2F */	lbz r0, 0x5e2f(r31)
/* 802223C4  7C 04 00 40 */	cmplw r4, r0
/* 802223C8  40 82 00 74 */	bne lbl_8022243C
/* 802223CC  80 9E 01 AC */	lwz r4, 0x1ac(r30)
/* 802223D0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 802223D4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 802223D8  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 802223DC  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 802223E0  7C 04 00 00 */	cmpw r4, r0
/* 802223E4  40 82 00 58 */	bne lbl_8022243C
/* 802223E8  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802223EC  88 83 07 66 */	lbz r4, 0x766(r3)
/* 802223F0  20 04 00 07 */	subfic r0, r4, 7
/* 802223F4  7C 00 00 34 */	cntlzw r0, r0
/* 802223F8  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802223FC  41 82 00 10 */	beq lbl_8022240C
/* 80222400  88 1F 5E 4C */	lbz r0, 0x5e4c(r31)
/* 80222404  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80222408  41 82 00 34 */	beq lbl_8022243C
lbl_8022240C:
/* 8022240C  28 04 00 07 */	cmplwi r4, 7
/* 80222410  41 82 00 18 */	beq lbl_80222428
/* 80222414  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80222418  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022241C  88 04 5E 4C */	lbz r0, 0x5e4c(r4)
/* 80222420  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80222424  40 82 00 18 */	bne lbl_8022243C
lbl_80222428:
/* 80222428  4B FF 99 A9 */	bl getButtonTimer__13dMeter2Draw_cFv
/* 8022242C  7C 63 07 34 */	extsh r3, r3
/* 80222430  A8 1E 01 9A */	lha r0, 0x19a(r30)
/* 80222434  7C 00 18 00 */	cmpw r0, r3
/* 80222438  41 82 00 44 */	beq lbl_8022247C
lbl_8022243C:
/* 8022243C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80222440  4B FF 99 91 */	bl getButtonTimer__13dMeter2Draw_cFv
/* 80222444  B0 7E 01 9A */	sth r3, 0x19a(r30)
/* 80222448  88 1F 5E 2F */	lbz r0, 0x5e2f(r31)
/* 8022244C  98 1E 01 CB */	stb r0, 0x1cb(r30)
/* 80222450  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80222454  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80222458  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 8022245C  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80222460  90 1E 01 AC */	stw r0, 0x1ac(r30)
/* 80222464  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80222468  88 9E 01 CB */	lbz r4, 0x1cb(r30)
/* 8022246C  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 80222470  7C 00 00 34 */	cntlzw r0, r0
/* 80222474  54 05 D9 7E */	srwi r5, r0, 5
/* 80222478  4B FF 54 DD */	bl drawButtonC__13dMeter2Draw_cFUcb
lbl_8022247C:
/* 8022247C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80222480  83 C1 00 08 */	lwz r30, 8(r1)
/* 80222484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80222488  7C 08 03 A6 */	mtlr r0
/* 8022248C  38 21 00 10 */	addi r1, r1, 0x10
/* 80222490  4E 80 00 20 */	blr 
