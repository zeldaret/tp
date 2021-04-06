lbl_80293DC4:
/* 80293DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80293DC8  7C 08 02 A6 */	mflr r0
/* 80293DCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80293DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80293DD4  48 0C E4 09 */	bl _savegpr_29
/* 80293DD8  7C 9D 23 78 */	mr r29, r4
/* 80293DDC  7C BE 2B 78 */	mr r30, r5
/* 80293DE0  7C DF 33 78 */	mr r31, r6
/* 80293DE4  38 7D 00 80 */	addi r3, r29, 0x80
/* 80293DE8  38 80 00 03 */	li r4, 3
/* 80293DEC  7F E5 FB 78 */	mr r5, r31
/* 80293DF0  4B FF F8 95 */	bl write__16JASRegisterParamFQ216JASRegisterParam5RegIDUl
/* 80293DF4  28 1E 00 40 */	cmplwi r30, 0x40
/* 80293DF8  40 80 00 18 */	bge lbl_80293E10
/* 80293DFC  38 7D 00 80 */	addi r3, r29, 0x80
/* 80293E00  7F C4 F3 78 */	mr r4, r30
/* 80293E04  7F E5 FB 78 */	mr r5, r31
/* 80293E08  4B FF F8 7D */	bl write__16JASRegisterParamFQ216JASRegisterParam5RegIDUl
/* 80293E0C  48 00 01 A4 */	b lbl_80293FB0
lbl_80293E10:
/* 80293E10  38 1E FF C0 */	addi r0, r30, -64
/* 80293E14  28 00 00 34 */	cmplwi r0, 0x34
/* 80293E18  41 81 01 98 */	bgt lbl_80293FB0
/* 80293E1C  3C 60 80 3C */	lis r3, lit_632@ha /* 0x803C747C@ha */
/* 80293E20  38 63 74 7C */	addi r3, r3, lit_632@l /* 0x803C747C@l */
/* 80293E24  54 00 10 3A */	slwi r0, r0, 2
/* 80293E28  7C 03 00 2E */	lwzx r0, r3, r0
/* 80293E2C  7C 09 03 A6 */	mtctr r0
/* 80293E30  4E 80 04 20 */	bctr 
/* 80293E34  57 C0 08 3C */	slwi r0, r30, 1
/* 80293E38  7C 7D 02 14 */	add r3, r29, r0
/* 80293E3C  B3 E3 FF E0 */	sth r31, -0x20(r3)
/* 80293E40  48 00 01 70 */	b lbl_80293FB0
/* 80293E44  7F A3 EB 78 */	mr r3, r29
/* 80293E48  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80293E4C  4B FF ED 75 */	bl setTimebase__8JASTrackFUs
/* 80293E50  48 00 01 60 */	b lbl_80293FB0
/* 80293E54  9B FD 02 2A */	stb r31, 0x22a(r29)
/* 80293E58  48 00 01 58 */	b lbl_80293FB0
/* 80293E5C  9B FD 02 30 */	stb r31, 0x230(r29)
/* 80293E60  48 00 01 50 */	b lbl_80293FB0
/* 80293E64  9B FD 02 33 */	stb r31, 0x233(r29)
/* 80293E68  48 00 01 48 */	b lbl_80293FB0
/* 80293E6C  93 FD 02 20 */	stw r31, 0x220(r29)
/* 80293E70  48 00 01 40 */	b lbl_80293FB0
/* 80293E74  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80293E78  B0 1D 02 2C */	sth r0, 0x22c(r29)
/* 80293E7C  48 00 01 34 */	b lbl_80293FB0
/* 80293E80  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80293E84  B0 1D 02 2E */	sth r0, 0x22e(r29)
/* 80293E88  48 00 01 28 */	b lbl_80293FB0
/* 80293E8C  C8 22 BB F0 */	lfd f1, lit_634(r2)
/* 80293E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293E94  3C 00 43 30 */	lis r0, 0x4330
/* 80293E98  90 01 00 08 */	stw r0, 8(r1)
/* 80293E9C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80293EA0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80293EA4  C0 02 BB D8 */	lfs f0, lit_627(r2)
/* 80293EA8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80293EAC  D0 1D 02 18 */	stfs f0, 0x218(r29)
/* 80293EB0  48 00 01 00 */	b lbl_80293FB0
/* 80293EB4  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80293EB8  98 1D 02 32 */	stb r0, 0x232(r29)
/* 80293EBC  9B FD 02 31 */	stb r31, 0x231(r29)
/* 80293EC0  48 00 00 F0 */	b lbl_80293FB0
/* 80293EC4  9B FD 02 31 */	stb r31, 0x231(r29)
/* 80293EC8  48 00 00 E8 */	b lbl_80293FB0
/* 80293ECC  9B FD 02 32 */	stb r31, 0x232(r29)
/* 80293ED0  48 00 00 E0 */	b lbl_80293FB0
/* 80293ED4  B3 FD 02 24 */	sth r31, 0x224(r29)
/* 80293ED8  48 00 00 D8 */	b lbl_80293FB0
/* 80293EDC  C8 22 BB F0 */	lfd f1, lit_634(r2)
/* 80293EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293EE4  3C 00 43 30 */	lis r0, 0x4330
/* 80293EE8  90 01 00 08 */	stw r0, 8(r1)
/* 80293EEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80293EF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80293EF4  C0 02 BB DC */	lfs f0, lit_628(r2)
/* 80293EF8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80293EFC  D0 1D 01 E0 */	stfs f0, 0x1e0(r29)
/* 80293F00  48 00 00 B0 */	b lbl_80293FB0
/* 80293F04  C8 22 BB F0 */	lfd f1, lit_634(r2)
/* 80293F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293F0C  3C 00 43 30 */	lis r0, 0x4330
/* 80293F10  90 01 00 08 */	stw r0, 8(r1)
/* 80293F14  C8 01 00 08 */	lfd f0, 8(r1)
/* 80293F18  EC 20 08 28 */	fsubs f1, f0, f1
/* 80293F1C  C0 02 BB E0 */	lfs f0, lit_629(r2)
/* 80293F20  EC 01 00 24 */	fdivs f0, f1, f0
/* 80293F24  D0 1D 01 E0 */	stfs f0, 0x1e0(r29)
/* 80293F28  48 00 00 88 */	b lbl_80293FB0
/* 80293F2C  C8 22 BB F0 */	lfd f1, lit_634(r2)
/* 80293F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293F34  3C 00 43 30 */	lis r0, 0x4330
/* 80293F38  90 01 00 08 */	stw r0, 8(r1)
/* 80293F3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80293F40  EC 20 08 28 */	fsubs f1, f0, f1
/* 80293F44  C0 02 BB E4 */	lfs f0, lit_630(r2)
/* 80293F48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80293F4C  D0 1D 01 E8 */	stfs f0, 0x1e8(r29)
/* 80293F50  48 00 00 60 */	b lbl_80293FB0
/* 80293F54  C8 22 BB F0 */	lfd f1, lit_634(r2)
/* 80293F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293F5C  3C 00 43 30 */	lis r0, 0x4330
/* 80293F60  90 01 00 08 */	stw r0, 8(r1)
/* 80293F64  C8 01 00 08 */	lfd f0, 8(r1)
/* 80293F68  EC 20 08 28 */	fsubs f1, f0, f1
/* 80293F6C  C0 02 BB E8 */	lfs f0, lit_631(r2)
/* 80293F70  EC 01 00 32 */	fmuls f0, f1, f0
/* 80293F74  D0 1D 01 E4 */	stfs f0, 0x1e4(r29)
/* 80293F78  48 00 00 38 */	b lbl_80293FB0
/* 80293F7C  C8 22 BB F0 */	lfd f1, lit_634(r2)
/* 80293F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293F84  3C 00 43 30 */	lis r0, 0x4330
/* 80293F88  90 01 00 08 */	stw r0, 8(r1)
/* 80293F8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80293F90  EC 20 08 28 */	fsubs f1, f0, f1
/* 80293F94  C0 02 BB E8 */	lfs f0, lit_631(r2)
/* 80293F98  EC 01 00 32 */	fmuls f0, f1, f0
/* 80293F9C  D0 1D 01 EC */	stfs f0, 0x1ec(r29)
/* 80293FA0  48 00 00 10 */	b lbl_80293FB0
/* 80293FA4  B3 FD 01 F0 */	sth r31, 0x1f0(r29)
/* 80293FA8  48 00 00 08 */	b lbl_80293FB0
/* 80293FAC  B3 FD 01 F2 */	sth r31, 0x1f2(r29)
lbl_80293FB0:
/* 80293FB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80293FB4  48 0C E2 75 */	bl _restgpr_29
/* 80293FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80293FBC  7C 08 03 A6 */	mtlr r0
/* 80293FC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80293FC4  4E 80 00 20 */	blr 
