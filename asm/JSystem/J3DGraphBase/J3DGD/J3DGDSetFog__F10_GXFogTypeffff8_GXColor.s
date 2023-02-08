lbl_8030F630:
/* 8030F630  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8030F634  7C 08 02 A6 */	mflr r0
/* 8030F638  90 01 00 34 */	stw r0, 0x34(r1)
/* 8030F63C  39 61 00 30 */	addi r11, r1, 0x30
/* 8030F640  48 05 2B 9D */	bl _savegpr_29
/* 8030F644  7C 7D 1B 78 */	mr r29, r3
/* 8030F648  7C 9E 23 78 */	mr r30, r4
/* 8030F64C  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 8030F650  41 82 00 0C */	beq lbl_8030F65C
/* 8030F654  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8030F658  40 82 00 14 */	bne lbl_8030F66C
lbl_8030F65C:
/* 8030F65C  C0 A2 C9 34 */	lfs f5, lit_1460(r2)
/* 8030F660  C0 62 C9 38 */	lfs f3, lit_1461(r2)
/* 8030F664  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 8030F668  48 00 00 24 */	b lbl_8030F68C
lbl_8030F66C:
/* 8030F66C  EC A4 00 F2 */	fmuls f5, f4, f3
/* 8030F670  EC 64 18 28 */	fsubs f3, f4, f3
/* 8030F674  EC 42 08 28 */	fsubs f2, f2, f1
/* 8030F678  EC 03 00 B2 */	fmuls f0, f3, f2
/* 8030F67C  EC A5 00 24 */	fdivs f5, f5, f0
/* 8030F680  EC 64 18 24 */	fdivs f3, f4, f3
/* 8030F684  EC 01 10 24 */	fdivs f0, f1, f2
/* 8030F688  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_8030F68C:
/* 8030F68C  3B E0 00 01 */	li r31, 1
/* 8030F690  C0 22 C9 38 */	lfs f1, lit_1461(r2)
/* 8030F694  C8 02 C9 40 */	lfd f0, lit_1462(r2)
/* 8030F698  48 00 00 0C */	b lbl_8030F6A4
lbl_8030F69C:
/* 8030F69C  EC 63 00 72 */	fmuls f3, f3, f1
/* 8030F6A0  3B FF 00 01 */	addi r31, r31, 1
lbl_8030F6A4:
/* 8030F6A4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8030F6A8  41 81 FF F4 */	bgt lbl_8030F69C
/* 8030F6AC  C8 02 C9 50 */	lfd f0, lit_1464(r2)
/* 8030F6B0  C0 42 C9 48 */	lfs f2, lit_1463(r2)
/* 8030F6B4  C0 22 C9 34 */	lfs f1, lit_1460(r2)
/* 8030F6B8  48 00 00 0C */	b lbl_8030F6C4
lbl_8030F6BC:
/* 8030F6BC  EC 63 00 B2 */	fmuls f3, f3, f2
/* 8030F6C0  3B FF FF FF */	addi r31, r31, -1
lbl_8030F6C4:
/* 8030F6C4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8030F6C8  40 81 00 0C */	ble lbl_8030F6D4
/* 8030F6CC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8030F6D0  41 80 FF EC */	blt lbl_8030F6BC
lbl_8030F6D4:
/* 8030F6D4  38 00 00 01 */	li r0, 1
/* 8030F6D8  7C 00 F8 30 */	slw r0, r0, r31
/* 8030F6DC  C8 22 C9 60 */	lfd f1, lit_1468(r2)
/* 8030F6E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030F6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030F6E8  3C 00 43 30 */	lis r0, 0x4330
/* 8030F6EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8030F6F0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8030F6F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8030F6F8  EC 05 00 24 */	fdivs f0, f5, f0
/* 8030F6FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8030F700  C0 02 C9 58 */	lfs f0, lit_1465(r2)
/* 8030F704  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8030F708  48 05 29 A5 */	bl __cvt_fp2unsigned
/* 8030F70C  81 01 00 08 */	lwz r8, 8(r1)
/* 8030F710  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8030F714  38 00 00 61 */	li r0, 0x61
/* 8030F718  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030F71C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030F720  38 A6 00 01 */	addi r5, r6, 1
/* 8030F724  90 A7 00 08 */	stw r5, 8(r7)
/* 8030F728  98 06 00 00 */	stb r0, 0(r6)
/* 8030F72C  55 05 A3 3E */	srwi r5, r8, 0xc
/* 8030F730  64 A9 EE 00 */	oris r9, r5, 0xee00
/* 8030F734  55 28 46 3E */	srwi r8, r9, 0x18
/* 8030F738  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030F73C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030F740  38 A6 00 01 */	addi r5, r6, 1
/* 8030F744  90 A7 00 08 */	stw r5, 8(r7)
/* 8030F748  99 06 00 00 */	stb r8, 0(r6)
/* 8030F74C  55 28 86 3E */	rlwinm r8, r9, 0x10, 0x18, 0x1f
/* 8030F750  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030F754  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030F758  38 A6 00 01 */	addi r5, r6, 1
/* 8030F75C  90 A7 00 08 */	stw r5, 8(r7)
/* 8030F760  99 06 00 00 */	stb r8, 0(r6)
/* 8030F764  55 28 C6 3E */	rlwinm r8, r9, 0x18, 0x18, 0x1f
/* 8030F768  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030F76C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030F770  38 A6 00 01 */	addi r5, r6, 1
/* 8030F774  90 A7 00 08 */	stw r5, 8(r7)
/* 8030F778  99 06 00 00 */	stb r8, 0(r6)
/* 8030F77C  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030F780  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030F784  38 A6 00 01 */	addi r5, r6, 1
/* 8030F788  90 A7 00 08 */	stw r5, 8(r7)
/* 8030F78C  99 26 00 00 */	stb r9, 0(r6)
/* 8030F790  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030F794  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030F798  38 A6 00 01 */	addi r5, r6, 1
/* 8030F79C  90 A7 00 08 */	stw r5, 8(r7)
/* 8030F7A0  98 06 00 00 */	stb r0, 0(r6)
/* 8030F7A4  64 68 EF 00 */	oris r8, r3, 0xef00
/* 8030F7A8  55 07 46 3E */	srwi r7, r8, 0x18
/* 8030F7AC  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F7B0  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F7B4  38 65 00 01 */	addi r3, r5, 1
/* 8030F7B8  90 66 00 08 */	stw r3, 8(r6)
/* 8030F7BC  98 E5 00 00 */	stb r7, 0(r5)
/* 8030F7C0  55 07 86 3E */	rlwinm r7, r8, 0x10, 0x18, 0x1f
/* 8030F7C4  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F7C8  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F7CC  38 65 00 01 */	addi r3, r5, 1
/* 8030F7D0  90 66 00 08 */	stw r3, 8(r6)
/* 8030F7D4  98 E5 00 00 */	stb r7, 0(r5)
/* 8030F7D8  55 07 C6 3E */	rlwinm r7, r8, 0x18, 0x18, 0x1f
/* 8030F7DC  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F7E0  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F7E4  38 65 00 01 */	addi r3, r5, 1
/* 8030F7E8  90 66 00 08 */	stw r3, 8(r6)
/* 8030F7EC  98 E5 00 00 */	stb r7, 0(r5)
/* 8030F7F0  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F7F4  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F7F8  38 65 00 01 */	addi r3, r5, 1
/* 8030F7FC  90 66 00 08 */	stw r3, 8(r6)
/* 8030F800  99 05 00 00 */	stb r8, 0(r5)
/* 8030F804  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F808  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F80C  38 65 00 01 */	addi r3, r5, 1
/* 8030F810  90 66 00 08 */	stw r3, 8(r6)
/* 8030F814  98 05 00 00 */	stb r0, 0(r5)
/* 8030F818  67 E8 F0 00 */	oris r8, r31, 0xf000
/* 8030F81C  55 07 46 3E */	srwi r7, r8, 0x18
/* 8030F820  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F824  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F828  38 65 00 01 */	addi r3, r5, 1
/* 8030F82C  90 66 00 08 */	stw r3, 8(r6)
/* 8030F830  98 E5 00 00 */	stb r7, 0(r5)
/* 8030F834  55 07 86 3E */	rlwinm r7, r8, 0x10, 0x18, 0x1f
/* 8030F838  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F83C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F840  38 65 00 01 */	addi r3, r5, 1
/* 8030F844  90 66 00 08 */	stw r3, 8(r6)
/* 8030F848  98 E5 00 00 */	stb r7, 0(r5)
/* 8030F84C  55 07 C6 3E */	rlwinm r7, r8, 0x18, 0x18, 0x1f
/* 8030F850  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F854  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F858  38 65 00 01 */	addi r3, r5, 1
/* 8030F85C  90 66 00 08 */	stw r3, 8(r6)
/* 8030F860  98 E5 00 00 */	stb r7, 0(r5)
/* 8030F864  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F868  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F86C  38 65 00 01 */	addi r3, r5, 1
/* 8030F870  90 66 00 08 */	stw r3, 8(r6)
/* 8030F874  99 05 00 00 */	stb r8, 0(r5)
/* 8030F878  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030F87C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030F880  38 65 00 01 */	addi r3, r5, 1
/* 8030F884  90 66 00 08 */	stw r3, 8(r6)
/* 8030F888  98 05 00 00 */	stb r0, 0(r5)
/* 8030F88C  57 A3 A8 14 */	slwi r3, r29, 0x15
/* 8030F890  50 83 A3 3E */	rlwimi r3, r4, 0x14, 0xc, 0x1f
/* 8030F894  64 67 F1 00 */	oris r7, r3, 0xf100
/* 8030F898  54 E6 46 3E */	srwi r6, r7, 0x18
/* 8030F89C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030F8A0  80 85 00 08 */	lwz r4, 8(r5)
/* 8030F8A4  38 64 00 01 */	addi r3, r4, 1
/* 8030F8A8  90 65 00 08 */	stw r3, 8(r5)
/* 8030F8AC  98 C4 00 00 */	stb r6, 0(r4)
/* 8030F8B0  54 E6 86 3E */	rlwinm r6, r7, 0x10, 0x18, 0x1f
/* 8030F8B4  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030F8B8  80 85 00 08 */	lwz r4, 8(r5)
/* 8030F8BC  38 64 00 01 */	addi r3, r4, 1
/* 8030F8C0  90 65 00 08 */	stw r3, 8(r5)
/* 8030F8C4  98 C4 00 00 */	stb r6, 0(r4)
/* 8030F8C8  54 E6 C6 3E */	rlwinm r6, r7, 0x18, 0x18, 0x1f
/* 8030F8CC  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030F8D0  80 85 00 08 */	lwz r4, 8(r5)
/* 8030F8D4  38 64 00 01 */	addi r3, r4, 1
/* 8030F8D8  90 65 00 08 */	stw r3, 8(r5)
/* 8030F8DC  98 C4 00 00 */	stb r6, 0(r4)
/* 8030F8E0  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030F8E4  80 85 00 08 */	lwz r4, 8(r5)
/* 8030F8E8  38 64 00 01 */	addi r3, r4, 1
/* 8030F8EC  90 65 00 08 */	stw r3, 8(r5)
/* 8030F8F0  98 E4 00 00 */	stb r7, 0(r4)
/* 8030F8F4  88 BE 00 00 */	lbz r5, 0(r30)
/* 8030F8F8  88 9E 00 02 */	lbz r4, 2(r30)
/* 8030F8FC  88 7E 00 01 */	lbz r3, 1(r30)
/* 8030F900  50 64 44 2E */	rlwimi r4, r3, 8, 0x10, 0x17
/* 8030F904  50 A4 82 1E */	rlwimi r4, r5, 0x10, 8, 0xf
/* 8030F908  64 86 F2 00 */	oris r6, r4, 0xf200
/* 8030F90C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030F910  80 85 00 08 */	lwz r4, 8(r5)
/* 8030F914  38 64 00 01 */	addi r3, r4, 1
/* 8030F918  90 65 00 08 */	stw r3, 8(r5)
/* 8030F91C  98 04 00 00 */	stb r0, 0(r4)
/* 8030F920  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030F924  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F928  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F92C  38 03 00 01 */	addi r0, r3, 1
/* 8030F930  90 04 00 08 */	stw r0, 8(r4)
/* 8030F934  98 A3 00 00 */	stb r5, 0(r3)
/* 8030F938  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030F93C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F940  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F944  38 03 00 01 */	addi r0, r3, 1
/* 8030F948  90 04 00 08 */	stw r0, 8(r4)
/* 8030F94C  98 A3 00 00 */	stb r5, 0(r3)
/* 8030F950  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030F954  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F958  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F95C  38 03 00 01 */	addi r0, r3, 1
/* 8030F960  90 04 00 08 */	stw r0, 8(r4)
/* 8030F964  98 A3 00 00 */	stb r5, 0(r3)
/* 8030F968  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030F96C  80 64 00 08 */	lwz r3, 8(r4)
/* 8030F970  38 03 00 01 */	addi r0, r3, 1
/* 8030F974  90 04 00 08 */	stw r0, 8(r4)
/* 8030F978  98 C3 00 00 */	stb r6, 0(r3)
/* 8030F97C  39 61 00 30 */	addi r11, r1, 0x30
/* 8030F980  48 05 28 A9 */	bl _restgpr_29
/* 8030F984  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030F988  7C 08 03 A6 */	mtlr r0
/* 8030F98C  38 21 00 30 */	addi r1, r1, 0x30
/* 8030F990  4E 80 00 20 */	blr 
