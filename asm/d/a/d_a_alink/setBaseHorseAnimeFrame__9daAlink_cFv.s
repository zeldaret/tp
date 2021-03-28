lbl_800EEAE8:
/* 800EEAE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800EEAEC  7C 08 02 A6 */	mflr r0
/* 800EEAF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800EEAF4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800EEAF8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800EEAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 800EEB00  48 27 36 D9 */	bl _savegpr_28
/* 800EEB04  7C 7D 1B 78 */	mr r29, r3
/* 800EEB08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800EEB0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800EEB10  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800EEB14  3B C0 00 00 */	li r30, 0
/* 800EEB18  A0 03 1F 5C */	lhz r0, 0x1f5c(r3)
/* 800EEB1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800EEB20  40 82 00 E0 */	bne lbl_800EEC00
/* 800EEB24  A3 9D 1F 58 */	lhz r28, 0x1f58(r29)
/* 800EEB28  38 80 00 48 */	li r4, 0x48
/* 800EEB2C  4B FB D9 25 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EEB30  A0 63 00 00 */	lhz r3, 0(r3)
/* 800EEB34  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 800EEB38  7C 00 18 40 */	cmplw r0, r3
/* 800EEB3C  40 82 00 0C */	bne lbl_800EEB48
/* 800EEB40  C3 FD 1F E0 */	lfs f31, 0x1fe0(r29)
/* 800EEB44  48 00 00 C0 */	b lbl_800EEC04
lbl_800EEB48:
/* 800EEB48  7F A3 EB 78 */	mr r3, r29
/* 800EEB4C  38 80 00 54 */	li r4, 0x54
/* 800EEB50  4B FB D9 01 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EEB54  A0 63 00 00 */	lhz r3, 0(r3)
/* 800EEB58  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 800EEB5C  7C 00 18 40 */	cmplw r0, r3
/* 800EEB60  40 82 00 10 */	bne lbl_800EEB70
/* 800EEB64  A0 1F 16 C6 */	lhz r0, 0x16c6(r31)
/* 800EEB68  28 00 00 06 */	cmplwi r0, 6
/* 800EEB6C  41 82 00 54 */	beq lbl_800EEBC0
lbl_800EEB70:
/* 800EEB70  7F A3 EB 78 */	mr r3, r29
/* 800EEB74  38 80 00 5A */	li r4, 0x5a
/* 800EEB78  4B FB D8 D9 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EEB7C  A0 63 00 00 */	lhz r3, 0(r3)
/* 800EEB80  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 800EEB84  7C 00 18 40 */	cmplw r0, r3
/* 800EEB88  41 82 00 20 */	beq lbl_800EEBA8
/* 800EEB8C  7F A3 EB 78 */	mr r3, r29
/* 800EEB90  38 80 00 5B */	li r4, 0x5b
/* 800EEB94  4B FB D8 BD */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EEB98  A0 63 00 00 */	lhz r3, 0(r3)
/* 800EEB9C  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 800EEBA0  7C 00 18 40 */	cmplw r0, r3
/* 800EEBA4  40 82 00 4C */	bne lbl_800EEBF0
lbl_800EEBA8:
/* 800EEBA8  A0 1F 16 C4 */	lhz r0, 0x16c4(r31)
/* 800EEBAC  28 00 00 17 */	cmplwi r0, 0x17
/* 800EEBB0  41 82 00 10 */	beq lbl_800EEBC0
/* 800EEBB4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800EEBB8  28 00 00 19 */	cmplwi r0, 0x19
/* 800EEBBC  40 82 00 34 */	bne lbl_800EEBF0
lbl_800EEBC0:
/* 800EEBC0  A8 1D 1F D8 */	lha r0, 0x1fd8(r29)
/* 800EEBC4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800EEBC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800EEBCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800EEBD0  3C 00 43 30 */	lis r0, 0x4330
/* 800EEBD4  90 01 00 08 */	stw r0, 8(r1)
/* 800EEBD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 800EEBDC  EF E0 08 28 */	fsubs f31, f0, f1
/* 800EEBE0  38 00 00 01 */	li r0, 1
/* 800EEBE4  B0 1D 1F E4 */	sth r0, 0x1fe4(r29)
/* 800EEBE8  3B C0 00 01 */	li r30, 1
/* 800EEBEC  48 00 00 18 */	b lbl_800EEC04
lbl_800EEBF0:
/* 800EEBF0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EEBF4  D0 1D 34 60 */	stfs f0, 0x3460(r29)
/* 800EEBF8  C3 FF 05 C0 */	lfs f31, 0x5c0(r31)
/* 800EEBFC  48 00 00 08 */	b lbl_800EEC04
lbl_800EEC00:
/* 800EEC00  C3 FF 05 C0 */	lfs f31, 0x5c0(r31)
lbl_800EEC04:
/* 800EEC04  80 7D 1F 2C */	lwz r3, 0x1f2c(r29)
/* 800EEC08  D3 E3 00 08 */	stfs f31, 8(r3)
/* 800EEC0C  D3 FD 1F E0 */	stfs f31, 0x1fe0(r29)
/* 800EEC10  2C 1E 00 00 */	cmpwi r30, 0
/* 800EEC14  41 82 00 28 */	beq lbl_800EEC3C
/* 800EEC18  80 7D 1F 34 */	lwz r3, 0x1f34(r29)
/* 800EEC1C  C0 1D 34 60 */	lfs f0, 0x3460(r29)
/* 800EEC20  D0 03 00 08 */	stfs f0, 8(r3)
/* 800EEC24  80 7D 1F 34 */	lwz r3, 0x1f34(r29)
/* 800EEC28  4B FB A6 21 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800EEC2C  80 7D 1F 34 */	lwz r3, 0x1f34(r29)
/* 800EEC30  C0 03 00 08 */	lfs f0, 8(r3)
/* 800EEC34  D0 1D 34 60 */	stfs f0, 0x3460(r29)
/* 800EEC38  48 00 00 28 */	b lbl_800EEC60
lbl_800EEC3C:
/* 800EEC3C  A0 1F 16 C6 */	lhz r0, 0x16c6(r31)
/* 800EEC40  28 00 FF FF */	cmplwi r0, 0xffff
/* 800EEC44  40 82 00 10 */	bne lbl_800EEC54
/* 800EEC48  80 7D 1F 34 */	lwz r3, 0x1f34(r29)
/* 800EEC4C  D3 E3 00 08 */	stfs f31, 8(r3)
/* 800EEC50  48 00 00 10 */	b lbl_800EEC60
lbl_800EEC54:
/* 800EEC54  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 800EEC58  80 7D 1F 34 */	lwz r3, 0x1f34(r29)
/* 800EEC5C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_800EEC60:
/* 800EEC60  80 7D 1F 44 */	lwz r3, 0x1f44(r29)
/* 800EEC64  D3 E3 00 08 */	stfs f31, 8(r3)
/* 800EEC68  80 7D 1F 34 */	lwz r3, 0x1f34(r29)
/* 800EEC6C  C0 03 00 08 */	lfs f0, 8(r3)
/* 800EEC70  80 7D 1F 4C */	lwz r3, 0x1f4c(r29)
/* 800EEC74  D0 03 00 08 */	stfs f0, 8(r3)
/* 800EEC78  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800EEC7C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800EEC80  39 61 00 20 */	addi r11, r1, 0x20
/* 800EEC84  48 27 35 A1 */	bl _restgpr_28
/* 800EEC88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800EEC8C  7C 08 03 A6 */	mtlr r0
/* 800EEC90  38 21 00 30 */	addi r1, r1, 0x30
/* 800EEC94  4E 80 00 20 */	blr 
