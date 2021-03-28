lbl_800EEC98:
/* 800EEC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EEC9C  7C 08 02 A6 */	mflr r0
/* 800EECA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EECA4  39 61 00 20 */	addi r11, r1, 0x20
/* 800EECA8  48 27 35 35 */	bl _savegpr_29
/* 800EECAC  7C 7D 1B 78 */	mr r29, r3
/* 800EECB0  83 C3 28 18 */	lwz r30, 0x2818(r3)
/* 800EECB4  48 02 6F 6D */	bl checkEventRun__9daAlink_cCFv
/* 800EECB8  2C 03 00 00 */	cmpwi r3, 0
/* 800EECBC  41 82 00 20 */	beq lbl_800EECDC
/* 800EECC0  83 ED 8A 98 */	lwz r31, m_midnaActor__9daPy_py_c(r13)
/* 800EECC4  7F A3 EB 78 */	mr r3, r29
/* 800EECC8  4B F2 CE 4D */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 800EECCC  7C 03 F8 40 */	cmplw r3, r31
/* 800EECD0  40 82 00 0C */	bne lbl_800EECDC
/* 800EECD4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EECD8  48 00 00 10 */	b lbl_800EECE8
lbl_800EECDC:
/* 800EECDC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 800EECE0  C0 1E 17 E8 */	lfs f0, 0x17e8(r30)
/* 800EECE4  EC 21 00 24 */	fdivs f1, f1, f0
lbl_800EECE8:
/* 800EECE8  C0 62 93 F8 */	lfs f3, lit_13700(r2)
/* 800EECEC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 800EECF0  40 80 00 28 */	bge lbl_800EED18
/* 800EECF4  7F A3 EB 78 */	mr r3, r29
/* 800EECF8  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800EECFC  FC 60 10 90 */	fmr f3, f2
/* 800EED00  38 80 00 48 */	li r4, 0x48
/* 800EED04  38 A0 00 49 */	li r5, 0x49
/* 800EED08  38 C0 00 0A */	li r6, 0xa
/* 800EED0C  C0 82 92 BC */	lfs f4, lit_6041(r2)
/* 800EED10  4B FB DD 05 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800EED14  48 00 00 6C */	b lbl_800EED80
lbl_800EED18:
/* 800EED18  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800EED1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EED20  40 80 00 34 */	bge lbl_800EED54
/* 800EED24  7F A3 EB 78 */	mr r3, r29
/* 800EED28  C0 42 94 CC */	lfs f2, lit_18830(r2)
/* 800EED2C  EC 01 18 28 */	fsubs f0, f1, f3
/* 800EED30  EC 22 00 32 */	fmuls f1, f2, f0
/* 800EED34  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800EED38  FC 60 10 90 */	fmr f3, f2
/* 800EED3C  38 80 00 49 */	li r4, 0x49
/* 800EED40  38 A0 00 4A */	li r5, 0x4a
/* 800EED44  38 C0 00 0A */	li r6, 0xa
/* 800EED48  C0 82 92 BC */	lfs f4, lit_6041(r2)
/* 800EED4C  4B FB DC C9 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800EED50  48 00 00 30 */	b lbl_800EED80
lbl_800EED54:
/* 800EED54  7F A3 EB 78 */	mr r3, r29
/* 800EED58  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 800EED5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EED60  EC 22 00 32 */	fmuls f1, f2, f0
/* 800EED64  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800EED68  FC 60 10 90 */	fmr f3, f2
/* 800EED6C  38 80 00 4A */	li r4, 0x4a
/* 800EED70  38 A0 00 4B */	li r5, 0x4b
/* 800EED74  38 C0 00 0A */	li r6, 0xa
/* 800EED78  C0 82 92 BC */	lfs f4, lit_6041(r2)
/* 800EED7C  4B FB DC 99 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
lbl_800EED80:
/* 800EED80  39 61 00 20 */	addi r11, r1, 0x20
/* 800EED84  48 27 34 A5 */	bl _restgpr_29
/* 800EED88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EED8C  7C 08 03 A6 */	mtlr r0
/* 800EED90  38 21 00 20 */	addi r1, r1, 0x20
/* 800EED94  4E 80 00 20 */	blr 
