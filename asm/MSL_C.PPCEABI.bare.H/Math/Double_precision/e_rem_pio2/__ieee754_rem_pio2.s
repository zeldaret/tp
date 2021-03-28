lbl_8036A708:
/* 8036A708  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8036A70C  7C 08 02 A6 */	mflr r0
/* 8036A710  3C 80 3F E9 */	lis r4, 0x3FE9 /* 0x3FE921FB@ha */
/* 8036A714  90 01 00 64 */	stw r0, 0x64(r1)
/* 8036A718  38 04 21 FB */	addi r0, r4, 0x21FB /* 0x3FE921FB@l */
/* 8036A71C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8036A720  D8 21 00 08 */	stfd f1, 8(r1)
/* 8036A724  83 E1 00 08 */	lwz r31, 8(r1)
/* 8036A728  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8036A72C  7C 7E 1B 78 */	mr r30, r3
/* 8036A730  57 E6 00 7E */	clrlwi r6, r31, 1
/* 8036A734  7C 06 00 00 */	cmpw r6, r0
/* 8036A738  41 81 00 18 */	bgt lbl_8036A750
/* 8036A73C  D8 3E 00 00 */	stfd f1, 0(r30)
/* 8036A740  38 60 00 00 */	li r3, 0
/* 8036A744  C8 02 CF 68 */	lfd f0, lit_145(r2)
/* 8036A748  D8 1E 00 08 */	stfd f0, 8(r30)
/* 8036A74C  48 00 03 44 */	b lbl_8036AA90
lbl_8036A750:
/* 8036A750  3C 60 40 03 */	lis r3, 0x4003 /* 0x4002D97C@ha */
/* 8036A754  38 03 D9 7C */	addi r0, r3, 0xD97C /* 0x4002D97C@l */
/* 8036A758  7C 06 00 00 */	cmpw r6, r0
/* 8036A75C  40 80 00 DC */	bge lbl_8036A838
/* 8036A760  2C 1F 00 00 */	cmpwi r31, 0
/* 8036A764  40 81 00 6C */	ble lbl_8036A7D0
/* 8036A768  C8 02 CF 70 */	lfd f0, lit_146(r2)
/* 8036A76C  3C 06 C0 07 */	addis r0, r6, 0xc007
/* 8036A770  28 00 21 FB */	cmplwi r0, 0x21fb
/* 8036A774  FC 41 00 28 */	fsub f2, f1, f0
/* 8036A778  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8036A77C  41 82 00 24 */	beq lbl_8036A7A0
/* 8036A780  C8 22 CF 78 */	lfd f1, lit_147(r2)
/* 8036A784  FC 02 08 28 */	fsub f0, f2, f1
/* 8036A788  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A78C  C8 1E 00 00 */	lfd f0, 0(r30)
/* 8036A790  FC 02 00 28 */	fsub f0, f2, f0
/* 8036A794  FC 00 08 28 */	fsub f0, f0, f1
/* 8036A798  D8 1E 00 08 */	stfd f0, 8(r30)
/* 8036A79C  48 00 00 2C */	b lbl_8036A7C8
lbl_8036A7A0:
/* 8036A7A0  C8 02 CF 80 */	lfd f0, lit_148(r2)
/* 8036A7A4  C8 22 CF 88 */	lfd f1, lit_149(r2)
/* 8036A7A8  FC 42 00 28 */	fsub f2, f2, f0
/* 8036A7AC  FC 02 08 28 */	fsub f0, f2, f1
/* 8036A7B0  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8036A7B4  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A7B8  C8 1E 00 00 */	lfd f0, 0(r30)
/* 8036A7BC  FC 02 00 28 */	fsub f0, f2, f0
/* 8036A7C0  FC 00 08 28 */	fsub f0, f0, f1
/* 8036A7C4  D8 1E 00 08 */	stfd f0, 8(r30)
lbl_8036A7C8:
/* 8036A7C8  38 60 00 01 */	li r3, 1
/* 8036A7CC  48 00 02 C4 */	b lbl_8036AA90
lbl_8036A7D0:
/* 8036A7D0  C8 02 CF 70 */	lfd f0, lit_146(r2)
/* 8036A7D4  3C 06 C0 07 */	addis r0, r6, 0xc007
/* 8036A7D8  28 00 21 FB */	cmplwi r0, 0x21fb
/* 8036A7DC  FC 40 08 2A */	fadd f2, f0, f1
/* 8036A7E0  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8036A7E4  41 82 00 24 */	beq lbl_8036A808
/* 8036A7E8  C8 22 CF 78 */	lfd f1, lit_147(r2)
/* 8036A7EC  FC 01 10 2A */	fadd f0, f1, f2
/* 8036A7F0  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A7F4  C8 1E 00 00 */	lfd f0, 0(r30)
/* 8036A7F8  FC 02 00 28 */	fsub f0, f2, f0
/* 8036A7FC  FC 01 00 2A */	fadd f0, f1, f0
/* 8036A800  D8 1E 00 08 */	stfd f0, 8(r30)
/* 8036A804  48 00 00 2C */	b lbl_8036A830
lbl_8036A808:
/* 8036A808  C8 02 CF 80 */	lfd f0, lit_148(r2)
/* 8036A80C  C8 22 CF 88 */	lfd f1, lit_149(r2)
/* 8036A810  FC 42 00 2A */	fadd f2, f2, f0
/* 8036A814  FC 01 10 2A */	fadd f0, f1, f2
/* 8036A818  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8036A81C  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A820  C8 1E 00 00 */	lfd f0, 0(r30)
/* 8036A824  FC 02 00 28 */	fsub f0, f2, f0
/* 8036A828  FC 01 00 2A */	fadd f0, f1, f0
/* 8036A82C  D8 1E 00 08 */	stfd f0, 8(r30)
lbl_8036A830:
/* 8036A830  38 60 FF FF */	li r3, -1
/* 8036A834  48 00 02 5C */	b lbl_8036AA90
lbl_8036A838:
/* 8036A838  3C 60 41 39 */	lis r3, 0x4139 /* 0x413921FB@ha */
/* 8036A83C  38 03 21 FB */	addi r0, r3, 0x21FB /* 0x413921FB@l */
/* 8036A840  7C 06 00 00 */	cmpw r6, r0
/* 8036A844  41 81 01 3C */	bgt lbl_8036A980
/* 8036A848  FC 80 0A 10 */	fabs f4, f1
/* 8036A84C  3C 00 43 30 */	lis r0, 0x4330
/* 8036A850  C8 22 CF 98 */	lfd f1, lit_151(r2)
/* 8036A854  C8 02 CF 90 */	lfd f0, lit_150(r2)
/* 8036A858  90 01 00 38 */	stw r0, 0x38(r1)
/* 8036A85C  FC 41 01 3A */	fmadd f2, f1, f4, f0
/* 8036A860  C8 62 CF B8 */	lfd f3, lit_157(r2)
/* 8036A864  C8 22 CF 70 */	lfd f1, lit_146(r2)
/* 8036A868  C8 02 CF 78 */	lfd f0, lit_147(r2)
/* 8036A86C  FC 40 10 1E */	fctiwz f2, f2
/* 8036A870  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8036A874  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8036A878  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8036A87C  2C 03 00 20 */	cmpwi r3, 0x20
/* 8036A880  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8036A884  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 8036A888  FC A2 18 28 */	fsub f5, f2, f3
/* 8036A88C  FC 81 21 7C */	fnmsub f4, f1, f5, f4
/* 8036A890  FC 20 01 72 */	fmul f1, f0, f5
/* 8036A894  40 80 00 2C */	bge lbl_8036A8C0
/* 8036A898  3C 80 80 3A */	lis r4, npio2_hw@ha
/* 8036A89C  54 60 10 3A */	slwi r0, r3, 2
/* 8036A8A0  38 84 24 B8 */	addi r4, r4, npio2_hw@l
/* 8036A8A4  7C 84 02 14 */	add r4, r4, r0
/* 8036A8A8  80 04 FF FC */	lwz r0, -4(r4)
/* 8036A8AC  7C 06 00 00 */	cmpw r6, r0
/* 8036A8B0  41 82 00 10 */	beq lbl_8036A8C0
/* 8036A8B4  FC 04 08 28 */	fsub f0, f4, f1
/* 8036A8B8  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A8BC  48 00 00 88 */	b lbl_8036A944
lbl_8036A8C0:
/* 8036A8C0  FC 04 08 28 */	fsub f0, f4, f1
/* 8036A8C4  7C C4 A6 70 */	srawi r4, r6, 0x14
/* 8036A8C8  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A8CC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8036A8D0  54 00 65 7E */	rlwinm r0, r0, 0xc, 0x15, 0x1f
/* 8036A8D4  7C 00 20 50 */	subf r0, r0, r4
/* 8036A8D8  2C 00 00 10 */	cmpwi r0, 0x10
/* 8036A8DC  40 81 00 68 */	ble lbl_8036A944
/* 8036A8E0  C8 02 CF 80 */	lfd f0, lit_148(r2)
/* 8036A8E4  FC 60 20 90 */	fmr f3, f4
/* 8036A8E8  C8 22 CF 88 */	lfd f1, lit_149(r2)
/* 8036A8EC  FC 40 01 72 */	fmul f2, f0, f5
/* 8036A8F0  FC 84 10 28 */	fsub f4, f4, f2
/* 8036A8F4  FC 03 20 28 */	fsub f0, f3, f4
/* 8036A8F8  FC 00 10 28 */	fsub f0, f0, f2
/* 8036A8FC  FC 21 01 78 */	fmsub f1, f1, f5, f0
/* 8036A900  FC 04 08 28 */	fsub f0, f4, f1
/* 8036A904  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A908  80 1E 00 00 */	lwz r0, 0(r30)
/* 8036A90C  54 00 65 7E */	rlwinm r0, r0, 0xc, 0x15, 0x1f
/* 8036A910  7C 00 20 50 */	subf r0, r0, r4
/* 8036A914  2C 00 00 31 */	cmpwi r0, 0x31
/* 8036A918  40 81 00 2C */	ble lbl_8036A944
/* 8036A91C  C8 02 CF A0 */	lfd f0, lit_152(r2)
/* 8036A920  FC 40 20 90 */	fmr f2, f4
/* 8036A924  C8 22 CF A8 */	lfd f1, lit_153(r2)
/* 8036A928  FC 60 01 72 */	fmul f3, f0, f5
/* 8036A92C  FC 84 18 28 */	fsub f4, f4, f3
/* 8036A930  FC 02 20 28 */	fsub f0, f2, f4
/* 8036A934  FC 00 18 28 */	fsub f0, f0, f3
/* 8036A938  FC 21 01 78 */	fmsub f1, f1, f5, f0
/* 8036A93C  FC 04 08 28 */	fsub f0, f4, f1
/* 8036A940  D8 1E 00 00 */	stfd f0, 0(r30)
lbl_8036A944:
/* 8036A944  C8 1E 00 00 */	lfd f0, 0(r30)
/* 8036A948  2C 1F 00 00 */	cmpwi r31, 0
/* 8036A94C  FC 04 00 28 */	fsub f0, f4, f0
/* 8036A950  FC 00 08 28 */	fsub f0, f0, f1
/* 8036A954  D8 1E 00 08 */	stfd f0, 8(r30)
/* 8036A958  40 80 01 38 */	bge lbl_8036AA90
/* 8036A95C  C8 1E 00 00 */	lfd f0, 0(r30)
/* 8036A960  7C 63 00 D0 */	neg r3, r3
/* 8036A964  FC 00 00 50 */	fneg f0, f0
/* 8036A968  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A96C  C8 1E 00 08 */	lfd f0, 8(r30)
/* 8036A970  FC 00 00 50 */	fneg f0, f0
/* 8036A974  D8 1E 00 08 */	stfd f0, 8(r30)
/* 8036A978  48 00 01 18 */	b lbl_8036AA90
/* 8036A97C  48 00 01 14 */	b lbl_8036AA90
lbl_8036A980:
/* 8036A980  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8036A984  7C 06 00 00 */	cmpw r6, r0
/* 8036A988  41 80 00 18 */	blt lbl_8036A9A0
/* 8036A98C  FC 01 08 28 */	fsub f0, f1, f1
/* 8036A990  38 60 00 00 */	li r3, 0
/* 8036A994  D8 1E 00 08 */	stfd f0, 8(r30)
/* 8036A998  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036A99C  48 00 00 F4 */	b lbl_8036AA90
lbl_8036A9A0:
/* 8036A9A0  7C C3 A6 70 */	srawi r3, r6, 0x14
/* 8036A9A4  3C 00 43 30 */	lis r0, 0x4330
/* 8036A9A8  38 A3 FB EA */	addi r5, r3, -1046
/* 8036A9AC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8036A9B0  54 A3 A0 16 */	slwi r3, r5, 0x14
/* 8036A9B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8036A9B8  7C 63 30 50 */	subf r3, r3, r6
/* 8036A9BC  C8 A2 CF B8 */	lfd f5, lit_157(r2)
/* 8036A9C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8036A9C4  38 81 00 30 */	addi r4, r1, 0x30
/* 8036A9C8  C8 82 CF B0 */	lfd f4, lit_154(r2)
/* 8036A9CC  38 C0 00 03 */	li r6, 3
/* 8036A9D0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8036A9D4  C8 22 CF 68 */	lfd f1, lit_145(r2)
/* 8036A9D8  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 8036A9DC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8036A9E0  FC 00 18 1E */	fctiwz f0, f3
/* 8036A9E4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8036A9E8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8036A9EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8036A9F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8036A9F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8036A9F8  FC 40 28 28 */	fsub f2, f0, f5
/* 8036A9FC  FC 03 10 28 */	fsub f0, f3, f2
/* 8036AA00  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 8036AA04  FC 64 00 32 */	fmul f3, f4, f0
/* 8036AA08  FC 00 18 1E */	fctiwz f0, f3
/* 8036AA0C  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 8036AA10  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8036AA14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8036AA18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8036AA1C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8036AA20  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8036AA24  FC 40 28 28 */	fsub f2, f0, f5
/* 8036AA28  FC 03 10 28 */	fsub f0, f3, f2
/* 8036AA2C  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 8036AA30  FC 04 00 32 */	fmul f0, f4, f0
/* 8036AA34  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8036AA38  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8036AA3C  48 00 00 0C */	b lbl_8036AA48
lbl_8036AA40:
/* 8036AA40  38 84 FF F8 */	addi r4, r4, -8
/* 8036AA44  38 C6 FF FF */	addi r6, r6, -1
lbl_8036AA48:
/* 8036AA48  C8 04 FF F8 */	lfd f0, -8(r4)
/* 8036AA4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8036AA50  41 82 FF F0 */	beq lbl_8036AA40
/* 8036AA54  3C 60 80 3A */	lis r3, two_over_pi@ha
/* 8036AA58  7F C4 F3 78 */	mr r4, r30
/* 8036AA5C  39 03 23 B0 */	addi r8, r3, two_over_pi@l
/* 8036AA60  38 E0 00 02 */	li r7, 2
/* 8036AA64  38 61 00 18 */	addi r3, r1, 0x18
/* 8036AA68  48 00 01 35 */	bl __kernel_rem_pio2
/* 8036AA6C  2C 1F 00 00 */	cmpwi r31, 0
/* 8036AA70  40 80 00 20 */	bge lbl_8036AA90
/* 8036AA74  C8 1E 00 00 */	lfd f0, 0(r30)
/* 8036AA78  7C 63 00 D0 */	neg r3, r3
/* 8036AA7C  FC 00 00 50 */	fneg f0, f0
/* 8036AA80  D8 1E 00 00 */	stfd f0, 0(r30)
/* 8036AA84  C8 1E 00 08 */	lfd f0, 8(r30)
/* 8036AA88  FC 00 00 50 */	fneg f0, f0
/* 8036AA8C  D8 1E 00 08 */	stfd f0, 8(r30)
lbl_8036AA90:
/* 8036AA90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8036AA94  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8036AA98  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8036AA9C  7C 08 03 A6 */	mtlr r0
/* 8036AAA0  38 21 00 60 */	addi r1, r1, 0x60
/* 8036AAA4  4E 80 00 20 */	blr 
