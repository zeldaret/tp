lbl_80213E3C:
/* 80213E3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80213E40  7C 08 02 A6 */	mflr r0
/* 80213E44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80213E48  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80213E4C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80213E50  7C 7F 1B 78 */	mr r31, r3
/* 80213E54  FF E0 08 90 */	fmr f31, f1
/* 80213E58  80 83 05 38 */	lwz r4, 0x538(r3)
/* 80213E5C  4B FF FF 11 */	bl setPikariBpkAnimation__13dMeter2Draw_cFP11J2DAnmColor
/* 80213E60  80 7F 05 38 */	lwz r3, 0x538(r31)
/* 80213E64  D3 E3 00 08 */	stfs f31, 8(r3)
/* 80213E68  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 80213E6C  48 0E 58 25 */	bl animation__9J2DScreenFv
/* 80213E70  7F E3 FB 78 */	mr r3, r31
/* 80213E74  38 80 00 00 */	li r4, 0
/* 80213E78  4B FF FE F5 */	bl setPikariBpkAnimation__13dMeter2Draw_cFP11J2DAnmColor
/* 80213E7C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80213E80  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80213E84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80213E88  7C 08 03 A6 */	mtlr r0
/* 80213E8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80213E90  4E 80 00 20 */	blr 
