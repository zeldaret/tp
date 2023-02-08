lbl_80028CF4:
/* 80028CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028CF8  7C 08 02 A6 */	mflr r0
/* 80028CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80028D04  3B E0 00 00 */	li r31, 0
/* 80028D08  2C 04 00 04 */	cmpwi r4, 4
/* 80028D0C  40 82 00 3C */	bne lbl_80028D48
/* 80028D10  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80028D14  2C 00 00 01 */	cmpwi r0, 1
/* 80028D18  41 82 00 20 */	beq lbl_80028D38
/* 80028D1C  40 80 00 24 */	bge lbl_80028D40
/* 80028D20  2C 00 00 00 */	cmpwi r0, 0
/* 80028D24  40 80 00 08 */	bge lbl_80028D2C
/* 80028D28  48 00 00 18 */	b lbl_80028D40
lbl_80028D2C:
/* 80028D2C  80 6D 88 00 */	lwz r3, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80028D30  8B E3 01 A8 */	lbz r31, 0x1a8(r3)
/* 80028D34  48 00 00 0C */	b lbl_80028D40
lbl_80028D38:
/* 80028D38  80 6D 88 00 */	lwz r3, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80028D3C  8B E3 01 A9 */	lbz r31, 0x1a9(r3)
lbl_80028D40:
/* 80028D40  7F E3 FB 78 */	mr r3, r31
/* 80028D44  48 00 00 7C */	b lbl_80028DC0
lbl_80028D48:
/* 80028D48  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80028D4C  2C 00 00 02 */	cmpwi r0, 2
/* 80028D50  41 82 00 3C */	beq lbl_80028D8C
/* 80028D54  40 80 00 14 */	bge lbl_80028D68
/* 80028D58  2C 00 00 00 */	cmpwi r0, 0
/* 80028D5C  41 82 00 18 */	beq lbl_80028D74
/* 80028D60  40 80 00 20 */	bge lbl_80028D80
/* 80028D64  48 00 00 3C */	b lbl_80028DA0
lbl_80028D68:
/* 80028D68  2C 00 00 04 */	cmpwi r0, 4
/* 80028D6C  40 80 00 34 */	bge lbl_80028DA0
/* 80028D70  48 00 00 28 */	b lbl_80028D98
lbl_80028D74:
/* 80028D74  80 AD 88 00 */	lwz r5, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80028D78  AB E5 01 B0 */	lha r31, 0x1b0(r5)
/* 80028D7C  48 00 00 24 */	b lbl_80028DA0
lbl_80028D80:
/* 80028D80  80 AD 88 00 */	lwz r5, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80028D84  AB E5 01 B2 */	lha r31, 0x1b2(r5)
/* 80028D88  48 00 00 18 */	b lbl_80028DA0
lbl_80028D8C:
/* 80028D8C  80 AD 88 00 */	lwz r5, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80028D90  AB E5 01 B4 */	lha r31, 0x1b4(r5)
/* 80028D94  48 00 00 0C */	b lbl_80028DA0
lbl_80028D98:
/* 80028D98  80 AD 88 00 */	lwz r5, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80028D9C  AB E5 01 B6 */	lha r31, 0x1b6(r5)
lbl_80028DA0:
/* 80028DA0  2C 1F 00 00 */	cmpwi r31, 0
/* 80028DA4  40 81 00 18 */	ble lbl_80028DBC
/* 80028DA8  4B FF FE E9 */	bl getLineWidthSub__15renderingAmap_cFi
/* 80028DAC  7F FF 1A 14 */	add r31, r31, r3
/* 80028DB0  2C 1F 00 FF */	cmpwi r31, 0xff
/* 80028DB4  40 81 00 08 */	ble lbl_80028DBC
/* 80028DB8  3B E0 00 FF */	li r31, 0xff
lbl_80028DBC:
/* 80028DBC  7F E3 FB 78 */	mr r3, r31
lbl_80028DC0:
/* 80028DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80028DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80028DC8  7C 08 03 A6 */	mtlr r0
/* 80028DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80028DD0  4E 80 00 20 */	blr 
