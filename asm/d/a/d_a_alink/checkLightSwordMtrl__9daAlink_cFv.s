lbl_800D0E08:
/* 800D0E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0E0C  7C 08 02 A6 */	mflr r0
/* 800D0E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D0E18  7C 7F 1B 78 */	mr r31, r3
/* 800D0E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D0E20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D0E24  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800D0E28  28 00 00 49 */	cmplwi r0, 0x49
/* 800D0E2C  40 82 00 4C */	bne lbl_800D0E78
/* 800D0E30  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 800D0E34  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800D0E38  7D 89 03 A6 */	mtctr r12
/* 800D0E3C  4E 80 04 21 */	bctrl 
/* 800D0E40  88 03 00 09 */	lbz r0, 9(r3)
/* 800D0E44  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 800D0E48  2C 00 00 17 */	cmpwi r0, 0x17
/* 800D0E4C  41 82 00 1C */	beq lbl_800D0E68
/* 800D0E50  3C 60 80 0D */	lis r3, daAlink_searchNightStalker__FP10fopAc_ac_cPv@ha
/* 800D0E54  38 63 0D 38 */	addi r3, r3, daAlink_searchNightStalker__FP10fopAc_ac_cPv@l
/* 800D0E58  38 80 00 00 */	li r4, 0
/* 800D0E5C  4B F4 89 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800D0E60  28 03 00 00 */	cmplwi r3, 0
/* 800D0E64  41 82 00 14 */	beq lbl_800D0E78
lbl_800D0E68:
/* 800D0E68  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800D0E6C  64 00 00 10 */	oris r0, r0, 0x10
/* 800D0E70  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800D0E74  48 00 00 10 */	b lbl_800D0E84
lbl_800D0E78:
/* 800D0E78  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800D0E7C  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 800D0E80  90 1F 05 7C */	stw r0, 0x57c(r31)
lbl_800D0E84:
/* 800D0E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D0E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0E8C  7C 08 03 A6 */	mtlr r0
/* 800D0E90  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0E94  4E 80 00 20 */	blr 
