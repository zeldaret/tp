lbl_80148E4C:
/* 80148E4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80148E50  7C 08 02 A6 */	mflr r0
/* 80148E54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80148E58  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80148E5C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80148E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80148E64  7C 7F 1B 78 */	mr r31, r3
/* 80148E68  80 63 0D 98 */	lwz r3, 0xd98(r3)
/* 80148E6C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80148E70  40 82 00 F0 */	bne lbl_80148F60
/* 80148E74  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 80148E78  41 82 00 48 */	beq lbl_80148EC0
/* 80148E7C  C3 FF 06 1C */	lfs f31, 0x61c(r31)
/* 80148E80  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80148E84  41 82 00 0C */	beq lbl_80148E90
/* 80148E88  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80148E8C  D0 1F 06 1C */	stfs f0, 0x61c(r31)
lbl_80148E90:
/* 80148E90  38 7F 06 10 */	addi r3, r31, 0x610
/* 80148E94  4B EC 45 95 */	bl play__14mDoExt_baseAnmFv
/* 80148E98  7F E3 FB 78 */	mr r3, r31
/* 80148E9C  38 9F 06 10 */	addi r4, r31, 0x610
/* 80148EA0  FC 20 F8 90 */	fmr f1, f31
/* 80148EA4  4B FF FF 2D */	bl checkEndAnm__8daNpcT_cFP12J3DFrameCtrlf
/* 80148EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80148EAC  41 82 00 10 */	beq lbl_80148EBC
/* 80148EB0  A0 7F 0E 20 */	lhz r3, 0xe20(r31)
/* 80148EB4  38 03 00 01 */	addi r0, r3, 1
/* 80148EB8  B0 1F 0E 20 */	sth r0, 0xe20(r31)
lbl_80148EBC:
/* 80148EBC  D3 FF 06 1C */	stfs f31, 0x61c(r31)
lbl_80148EC0:
/* 80148EC0  80 7F 0D 98 */	lwz r3, 0xd98(r31)
/* 80148EC4  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 80148EC8  41 82 00 98 */	beq lbl_80148F60
/* 80148ECC  C3 FF 06 38 */	lfs f31, 0x638(r31)
/* 80148ED0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80148ED4  41 82 00 28 */	beq lbl_80148EFC
/* 80148ED8  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80148EDC  D0 1F 06 38 */	stfs f0, 0x638(r31)
/* 80148EE0  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 80148EE4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80148EE8  41 82 00 14 */	beq lbl_80148EFC
/* 80148EEC  38 60 00 5A */	li r3, 0x5a
/* 80148EF0  38 80 00 5A */	li r4, 0x5a
/* 80148EF4  48 00 44 71 */	bl func_8014D364
/* 80148EF8  90 7F 0D C0 */	stw r3, 0xdc0(r31)
lbl_80148EFC:
/* 80148EFC  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80148F00  48 00 44 49 */	bl func_8014D348
/* 80148F04  2C 03 00 00 */	cmpwi r3, 0
/* 80148F08  41 82 00 0C */	beq lbl_80148F14
/* 80148F0C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80148F10  D0 1F 06 38 */	stfs f0, 0x638(r31)
lbl_80148F14:
/* 80148F14  38 7F 06 2C */	addi r3, r31, 0x62c
/* 80148F18  4B EC 45 11 */	bl play__14mDoExt_baseAnmFv
/* 80148F1C  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 80148F20  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80148F24  41 82 00 30 */	beq lbl_80148F54
/* 80148F28  7F E3 FB 78 */	mr r3, r31
/* 80148F2C  38 9F 06 2C */	addi r4, r31, 0x62c
/* 80148F30  C0 3F 06 38 */	lfs f1, 0x638(r31)
/* 80148F34  4B FF FE 9D */	bl checkEndAnm__8daNpcT_cFP12J3DFrameCtrlf
/* 80148F38  2C 03 00 00 */	cmpwi r3, 0
/* 80148F3C  41 82 00 20 */	beq lbl_80148F5C
/* 80148F40  38 60 00 5A */	li r3, 0x5a
/* 80148F44  38 80 00 5A */	li r4, 0x5a
/* 80148F48  48 00 44 1D */	bl func_8014D364
/* 80148F4C  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80148F50  48 00 00 0C */	b lbl_80148F5C
lbl_80148F54:
/* 80148F54  38 00 00 00 */	li r0, 0
/* 80148F58  90 1F 0D C0 */	stw r0, 0xdc0(r31)
lbl_80148F5C:
/* 80148F5C  D3 FF 06 38 */	stfs f31, 0x638(r31)
lbl_80148F60:
/* 80148F60  80 9F 0D 98 */	lwz r4, 0xd98(r31)
/* 80148F64  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 80148F68  41 82 00 A8 */	beq lbl_80149010
/* 80148F6C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80148F70  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80148F74  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80148F78  41 82 00 54 */	beq lbl_80148FCC
/* 80148F7C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80148F80  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80148F84  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80148F88  80 9F 0D A8 */	lwz r4, 0xda8(r31)
/* 80148F8C  88 BF 0E 24 */	lbz r5, 0xe24(r31)
/* 80148F90  4B EC 81 21 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80148F94  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80148F98  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 80148F9C  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80148FA0  28 03 00 00 */	cmplwi r3, 0
/* 80148FA4  41 82 00 6C */	beq lbl_80149010
/* 80148FA8  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80148FAC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80148FB0  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80148FB4  38 80 00 00 */	li r4, 0
/* 80148FB8  38 A0 00 00 */	li r5, 0
/* 80148FBC  4B EC 80 F5 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80148FC0  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80148FC4  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 80148FC8  48 00 00 48 */	b lbl_80149010
lbl_80148FCC:
/* 80148FCC  80 9F 0D A8 */	lwz r4, 0xda8(r31)
/* 80148FD0  88 BF 0E 24 */	lbz r5, 0xe24(r31)
/* 80148FD4  4B EC 80 DD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80148FD8  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80148FDC  28 03 00 00 */	cmplwi r3, 0
/* 80148FE0  41 82 00 10 */	beq lbl_80148FF0
/* 80148FE4  38 80 00 00 */	li r4, 0
/* 80148FE8  38 A0 00 00 */	li r5, 0
/* 80148FEC  4B EC 80 C5 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_80148FF0:
/* 80148FF0  7F E3 FB 78 */	mr r3, r31
/* 80148FF4  FC 20 F8 90 */	fmr f1, f31
/* 80148FF8  4B FF FD 19 */	bl checkEndAnm__8daNpcT_cFf
/* 80148FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80149000  41 82 00 10 */	beq lbl_80149010
/* 80149004  A0 7F 0E 1E */	lhz r3, 0xe1e(r31)
/* 80149008  38 03 00 01 */	addi r0, r3, 1
/* 8014900C  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
lbl_80149010:
/* 80149010  80 7F 0D 98 */	lwz r3, 0xd98(r31)
/* 80149014  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80149018  41 82 00 38 */	beq lbl_80149050
/* 8014901C  C3 FF 06 50 */	lfs f31, 0x650(r31)
/* 80149020  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80149024  41 82 00 0C */	beq lbl_80149030
/* 80149028  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014902C  D0 1F 06 50 */	stfs f0, 0x650(r31)
lbl_80149030:
/* 80149030  7F E3 FB 78 */	mr r3, r31
/* 80149034  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80149038  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8014903C  7D 89 03 A6 */	mtctr r12
/* 80149040  4E 80 04 21 */	bctrl 
/* 80149044  38 7F 06 44 */	addi r3, r31, 0x644
/* 80149048  4B EC 43 E1 */	bl play__14mDoExt_baseAnmFv
/* 8014904C  D3 FF 06 50 */	stfs f31, 0x650(r31)
lbl_80149050:
/* 80149050  80 7F 0D 98 */	lwz r3, 0xd98(r31)
/* 80149054  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80149058  41 82 00 24 */	beq lbl_8014907C
/* 8014905C  C3 FF 06 68 */	lfs f31, 0x668(r31)
/* 80149060  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80149064  41 82 00 0C */	beq lbl_80149070
/* 80149068  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014906C  D0 1F 06 68 */	stfs f0, 0x668(r31)
lbl_80149070:
/* 80149070  38 7F 06 5C */	addi r3, r31, 0x65c
/* 80149074  4B EC 43 B5 */	bl play__14mDoExt_baseAnmFv
/* 80149078  D3 FF 06 68 */	stfs f31, 0x668(r31)
lbl_8014907C:
/* 8014907C  80 7F 0D 98 */	lwz r3, 0xd98(r31)
/* 80149080  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80149084  41 82 00 24 */	beq lbl_801490A8
/* 80149088  C3 FF 06 80 */	lfs f31, 0x680(r31)
/* 8014908C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80149090  41 82 00 0C */	beq lbl_8014909C
/* 80149094  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80149098  D0 1F 06 80 */	stfs f0, 0x680(r31)
lbl_8014909C:
/* 8014909C  38 7F 06 74 */	addi r3, r31, 0x674
/* 801490A0  4B EC 43 89 */	bl play__14mDoExt_baseAnmFv
/* 801490A4  D3 FF 06 80 */	stfs f31, 0x680(r31)
lbl_801490A8:
/* 801490A8  80 7F 0D 98 */	lwz r3, 0xd98(r31)
/* 801490AC  38 00 BF C0 */	li r0, -16448
/* 801490B0  7C 60 00 38 */	and r0, r3, r0
/* 801490B4  90 1F 0D 98 */	stw r0, 0xd98(r31)
/* 801490B8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801490BC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801490C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801490C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801490C8  7C 08 03 A6 */	mtlr r0
/* 801490CC  38 21 00 20 */	addi r1, r1, 0x20
/* 801490D0  4E 80 00 20 */	blr 
