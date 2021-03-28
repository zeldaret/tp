lbl_802084D8:
/* 802084D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802084DC  7C 08 02 A6 */	mflr r0
/* 802084E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802084E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802084E8  7C 7F 1B 78 */	mr r31, r3
/* 802084EC  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802084F0  28 03 00 00 */	cmplwi r3, 0
/* 802084F4  41 82 00 68 */	beq lbl_8020855C
/* 802084F8  48 04 D3 31 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802084FC  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208500  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208504  41 82 00 58 */	beq lbl_8020855C
/* 80208508  A8 1F 04 9E */	lha r0, 0x49e(r31)
/* 8020850C  2C 00 00 00 */	cmpwi r0, 0
/* 80208510  40 82 00 0C */	bne lbl_8020851C
/* 80208514  38 00 00 1E */	li r0, 0x1e
/* 80208518  B0 1F 04 9E */	sth r0, 0x49e(r31)
lbl_8020851C:
/* 8020851C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80208520  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80208524  48 04 D2 AD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208528  38 00 00 00 */	li r0, 0
/* 8020852C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80208530  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208534  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80208538  48 04 D2 F1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020853C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208540  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208544  40 82 00 18 */	bne lbl_8020855C
/* 80208548  7F E3 FB 78 */	mr r3, r31
/* 8020854C  38 80 00 0D */	li r4, 0xd
/* 80208550  48 00 23 FD */	bl hide_button__14dMeterButton_cFUc
/* 80208554  38 00 00 00 */	li r0, 0
/* 80208558  98 1F 04 CD */	stb r0, 0x4cd(r31)
lbl_8020855C:
/* 8020855C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80208560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208564  7C 08 03 A6 */	mtlr r0
/* 80208568  38 21 00 10 */	addi r1, r1, 0x10
/* 8020856C  4E 80 00 20 */	blr 
