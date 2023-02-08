lbl_8081E5B4:
/* 8081E5B4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8081E5B8  7C 08 02 A6 */	mflr r0
/* 8081E5BC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8081E5C0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8081E5C4  4B B4 3C 11 */	bl _savegpr_27
/* 8081E5C8  7C 7B 1B 78 */	mr r27, r3
/* 8081E5CC  3C 80 80 82 */	lis r4, lit_3791@ha /* 0x808218AC@ha */
/* 8081E5D0  3B C4 18 AC */	addi r30, r4, lit_3791@l /* 0x808218AC@l */
/* 8081E5D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081E5D8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081E5DC  88 1F 5D B0 */	lbz r0, 0x5db0(r31)
/* 8081E5E0  7C 00 07 74 */	extsb r0, r0
/* 8081E5E4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8081E5E8  7C 9F 02 14 */	add r4, r31, r0
/* 8081E5EC  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 8081E5F0  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 8081E5F4  80 03 06 B8 */	lwz r0, 0x6b8(r3)
/* 8081E5F8  28 00 00 0B */	cmplwi r0, 0xb
/* 8081E5FC  41 81 0A E4 */	bgt lbl_8081F0E0
/* 8081E600  3C 80 80 82 */	lis r4, lit_7505@ha /* 0x80821D10@ha */
/* 8081E604  38 84 1D 10 */	addi r4, r4, lit_7505@l /* 0x80821D10@l */
/* 8081E608  54 00 10 3A */	slwi r0, r0, 2
/* 8081E60C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8081E610  7C 09 03 A6 */	mtctr r0
/* 8081E614  4E 80 04 20 */	bctr 
lbl_8081E618:
/* 8081E618  38 00 00 01 */	li r0, 1
/* 8081E61C  98 1B 07 10 */	stb r0, 0x710(r27)
/* 8081E620  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081E624  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081E628  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8081E62C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081E630  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8081E634  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8081E638  C0 5B 06 A4 */	lfs f2, 0x6a4(r27)
/* 8081E63C  C0 1B 06 9C */	lfs f0, 0x69c(r27)
/* 8081E640  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081E644  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8081E648  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8081E64C  38 61 00 44 */	addi r3, r1, 0x44
/* 8081E650  38 81 00 50 */	addi r4, r1, 0x50
/* 8081E654  4B B2 8D 49 */	bl PSVECSquareDistance
/* 8081E658  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081E65C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081E660  40 81 00 58 */	ble lbl_8081E6B8
/* 8081E664  FC 00 08 34 */	frsqrte f0, f1
/* 8081E668  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081E66C  FC 44 00 32 */	fmul f2, f4, f0
/* 8081E670  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081E674  FC 00 00 32 */	fmul f0, f0, f0
/* 8081E678  FC 01 00 32 */	fmul f0, f1, f0
/* 8081E67C  FC 03 00 28 */	fsub f0, f3, f0
/* 8081E680  FC 02 00 32 */	fmul f0, f2, f0
/* 8081E684  FC 44 00 32 */	fmul f2, f4, f0
/* 8081E688  FC 00 00 32 */	fmul f0, f0, f0
/* 8081E68C  FC 01 00 32 */	fmul f0, f1, f0
/* 8081E690  FC 03 00 28 */	fsub f0, f3, f0
/* 8081E694  FC 02 00 32 */	fmul f0, f2, f0
/* 8081E698  FC 44 00 32 */	fmul f2, f4, f0
/* 8081E69C  FC 00 00 32 */	fmul f0, f0, f0
/* 8081E6A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8081E6A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8081E6A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8081E6AC  FC 21 00 32 */	fmul f1, f1, f0
/* 8081E6B0  FC 20 08 18 */	frsp f1, f1
/* 8081E6B4  48 00 00 88 */	b lbl_8081E73C
lbl_8081E6B8:
/* 8081E6B8  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081E6BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081E6C0  40 80 00 10 */	bge lbl_8081E6D0
/* 8081E6C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081E6C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081E6CC  48 00 00 70 */	b lbl_8081E73C
lbl_8081E6D0:
/* 8081E6D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8081E6D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8081E6D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081E6DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081E6E0  7C 03 00 00 */	cmpw r3, r0
/* 8081E6E4  41 82 00 14 */	beq lbl_8081E6F8
/* 8081E6E8  40 80 00 40 */	bge lbl_8081E728
/* 8081E6EC  2C 03 00 00 */	cmpwi r3, 0
/* 8081E6F0  41 82 00 20 */	beq lbl_8081E710
/* 8081E6F4  48 00 00 34 */	b lbl_8081E728
lbl_8081E6F8:
/* 8081E6F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081E6FC  41 82 00 0C */	beq lbl_8081E708
/* 8081E700  38 00 00 01 */	li r0, 1
/* 8081E704  48 00 00 28 */	b lbl_8081E72C
lbl_8081E708:
/* 8081E708  38 00 00 02 */	li r0, 2
/* 8081E70C  48 00 00 20 */	b lbl_8081E72C
lbl_8081E710:
/* 8081E710  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081E714  41 82 00 0C */	beq lbl_8081E720
/* 8081E718  38 00 00 05 */	li r0, 5
/* 8081E71C  48 00 00 10 */	b lbl_8081E72C
lbl_8081E720:
/* 8081E720  38 00 00 03 */	li r0, 3
/* 8081E724  48 00 00 08 */	b lbl_8081E72C
lbl_8081E728:
/* 8081E728  38 00 00 04 */	li r0, 4
lbl_8081E72C:
/* 8081E72C  2C 00 00 01 */	cmpwi r0, 1
/* 8081E730  40 82 00 0C */	bne lbl_8081E73C
/* 8081E734  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081E738  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081E73C:
/* 8081E73C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8081E740  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081E744  41 81 09 E4 */	bgt lbl_8081F128
/* 8081E748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081E74C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081E750  80 63 5F 18 */	lwz r3, 0x5f18(r3)
/* 8081E754  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 8081E758  40 82 09 D0 */	bne lbl_8081F128
/* 8081E75C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8081E760  41 82 00 08 */	beq lbl_8081E768
/* 8081E764  48 00 09 C4 */	b lbl_8081F128
lbl_8081E768:
/* 8081E768  38 00 00 01 */	li r0, 1
/* 8081E76C  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8081E770  48 00 09 70 */	b lbl_8081F0E0
lbl_8081E774:
/* 8081E774  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 8081E778  28 00 00 02 */	cmplwi r0, 2
/* 8081E77C  41 82 00 28 */	beq lbl_8081E7A4
/* 8081E780  38 80 00 02 */	li r4, 2
/* 8081E784  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8081E788  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8081E78C  38 C0 00 00 */	li r6, 0
/* 8081E790  4B 7F D1 79 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8081E794  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 8081E798  60 00 00 02 */	ori r0, r0, 2
/* 8081E79C  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 8081E7A0  48 00 09 88 */	b lbl_8081F128
lbl_8081E7A4:
/* 8081E7A4  38 7D 02 48 */	addi r3, r29, 0x248
/* 8081E7A8  4B 94 2D 29 */	bl Stop__9dCamera_cFv
/* 8081E7AC  38 7D 02 48 */	addi r3, r29, 0x248
/* 8081E7B0  38 80 00 03 */	li r4, 3
/* 8081E7B4  4B 94 48 59 */	bl SetTrimSize__9dCamera_cFl
/* 8081E7B8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8081E7BC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081E7C0  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 8081E7C4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8081E7C8  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 8081E7CC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8081E7D0  7F 83 E3 78 */	mr r3, r28
/* 8081E7D4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081E7D8  38 A0 54 00 */	li r5, 0x5400
/* 8081E7DC  38 C0 00 00 */	li r6, 0
/* 8081E7E0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8081E7E4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8081E7E8  7D 89 03 A6 */	mtctr r12
/* 8081E7EC  4E 80 04 21 */	bctrl 
/* 8081E7F0  38 00 00 04 */	li r0, 4
/* 8081E7F4  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8081E7F8  38 60 00 01 */	li r3, 1
/* 8081E7FC  90 7C 06 0C */	stw r3, 0x60c(r28)
/* 8081E800  38 00 00 00 */	li r0, 0
/* 8081E804  90 1C 06 10 */	stw r0, 0x610(r28)
/* 8081E808  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 8081E80C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8081E810  D0 5B 04 FC */	stfs f2, 0x4fc(r27)
/* 8081E814  D0 5B 05 2C */	stfs f2, 0x52c(r27)
/* 8081E818  C0 3B 06 CC */	lfs f1, 0x6cc(r27)
/* 8081E81C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8081E820  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081E824  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 8081E828  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 8081E82C  D0 3B 04 D4 */	stfs f1, 0x4d4(r27)
/* 8081E830  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 8081E834  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 8081E838  98 7B 07 15 */	stb r3, 0x715(r27)
/* 8081E83C  98 1B 07 10 */	stb r0, 0x710(r27)
/* 8081E840  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 8081E844  D0 1B 07 34 */	stfs f0, 0x734(r27)
/* 8081E848  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 8081E84C  D0 1B 07 38 */	stfs f0, 0x738(r27)
/* 8081E850  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 8081E854  D0 1B 07 3C */	stfs f0, 0x73c(r27)
/* 8081E858  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 8081E85C  D0 1B 07 28 */	stfs f0, 0x728(r27)
/* 8081E860  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 8081E864  D0 1B 07 2C */	stfs f0, 0x72c(r27)
/* 8081E868  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 8081E86C  D0 1B 07 30 */	stfs f0, 0x730(r27)
/* 8081E870  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8081E874  D0 1B 07 58 */	stfs f0, 0x758(r27)
/* 8081E878  38 00 00 02 */	li r0, 2
/* 8081E87C  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8081E880  38 00 00 3C */	li r0, 0x3c
/* 8081E884  90 1B 06 FC */	stw r0, 0x6fc(r27)
/* 8081E888  C0 3B 07 30 */	lfs f1, 0x730(r27)
/* 8081E88C  C0 1B 07 28 */	lfs f0, 0x728(r27)
/* 8081E890  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8081E894  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8081E898  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8081E89C  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 8081E8A0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8081E8A4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8081E8A8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8081E8AC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8081E8B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8081E8B4  38 81 00 38 */	addi r4, r1, 0x38
/* 8081E8B8  4B B2 8A E5 */	bl PSVECSquareDistance
/* 8081E8BC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081E8C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081E8C4  40 81 00 58 */	ble lbl_8081E91C
/* 8081E8C8  FC 00 08 34 */	frsqrte f0, f1
/* 8081E8CC  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081E8D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8081E8D4  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081E8D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081E8DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081E8E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8081E8E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8081E8E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8081E8EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8081E8F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8081E8F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8081E8F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8081E8FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8081E900  FC 00 00 32 */	fmul f0, f0, f0
/* 8081E904  FC 01 00 32 */	fmul f0, f1, f0
/* 8081E908  FC 03 00 28 */	fsub f0, f3, f0
/* 8081E90C  FC 02 00 32 */	fmul f0, f2, f0
/* 8081E910  FC 21 00 32 */	fmul f1, f1, f0
/* 8081E914  FC 20 08 18 */	frsp f1, f1
/* 8081E918  48 00 00 88 */	b lbl_8081E9A0
lbl_8081E91C:
/* 8081E91C  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081E920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081E924  40 80 00 10 */	bge lbl_8081E934
/* 8081E928  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081E92C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081E930  48 00 00 70 */	b lbl_8081E9A0
lbl_8081E934:
/* 8081E934  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081E938  80 81 00 08 */	lwz r4, 8(r1)
/* 8081E93C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081E940  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081E944  7C 03 00 00 */	cmpw r3, r0
/* 8081E948  41 82 00 14 */	beq lbl_8081E95C
/* 8081E94C  40 80 00 40 */	bge lbl_8081E98C
/* 8081E950  2C 03 00 00 */	cmpwi r3, 0
/* 8081E954  41 82 00 20 */	beq lbl_8081E974
/* 8081E958  48 00 00 34 */	b lbl_8081E98C
lbl_8081E95C:
/* 8081E95C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081E960  41 82 00 0C */	beq lbl_8081E96C
/* 8081E964  38 00 00 01 */	li r0, 1
/* 8081E968  48 00 00 28 */	b lbl_8081E990
lbl_8081E96C:
/* 8081E96C  38 00 00 02 */	li r0, 2
/* 8081E970  48 00 00 20 */	b lbl_8081E990
lbl_8081E974:
/* 8081E974  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081E978  41 82 00 0C */	beq lbl_8081E984
/* 8081E97C  38 00 00 05 */	li r0, 5
/* 8081E980  48 00 00 10 */	b lbl_8081E990
lbl_8081E984:
/* 8081E984  38 00 00 03 */	li r0, 3
/* 8081E988  48 00 00 08 */	b lbl_8081E990
lbl_8081E98C:
/* 8081E98C  38 00 00 04 */	li r0, 4
lbl_8081E990:
/* 8081E990  2C 00 00 01 */	cmpwi r0, 1
/* 8081E994  40 82 00 0C */	bne lbl_8081E9A0
/* 8081E998  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081E99C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081E9A0:
/* 8081E9A0  D0 3B 07 5C */	stfs f1, 0x75c(r27)
/* 8081E9A4  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8081E9A8  38 9B 07 28 */	addi r4, r27, 0x728
/* 8081E9AC  4B A5 22 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081E9B0  B0 7B 07 60 */	sth r3, 0x760(r27)
/* 8081E9B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081E9B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081E9BC  38 63 09 58 */	addi r3, r3, 0x958
/* 8081E9C0  38 80 00 10 */	li r4, 0x10
/* 8081E9C4  4B 81 5E 4D */	bl onSwitch__12dSv_memBit_cFi
/* 8081E9C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081E9CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081E9D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8081E9D4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081E9D8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000092@ha */
/* 8081E9DC  38 84 00 92 */	addi r4, r4, 0x0092 /* 0x01000092@l */
/* 8081E9E0  4B A9 0A BD */	bl subBgmStart__8Z2SeqMgrFUl
/* 8081E9E4  48 00 06 FC */	b lbl_8081F0E0
lbl_8081E9E8:
/* 8081E9E8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8081E9EC  7F 64 DB 78 */	mr r4, r27
/* 8081E9F0  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081E9F4  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081E9F8  38 C0 00 01 */	li r6, 1
/* 8081E9FC  4B 82 3F 19 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081EA00  7F 63 DB 78 */	mr r3, r27
/* 8081EA04  38 80 00 00 */	li r4, 0
/* 8081EA08  4B FF 8F 6D */	bl setBoilEffect__9daE_YMB_cFi
/* 8081EA0C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8081EA10  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8081EA14  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081EA18  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8081EA1C  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 8081EA20  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8081EA24  7F 83 E3 78 */	mr r3, r28
/* 8081EA28  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081EA2C  38 A0 54 00 */	li r5, 0x5400
/* 8081EA30  38 C0 00 00 */	li r6, 0
/* 8081EA34  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8081EA38  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8081EA3C  7D 89 03 A6 */	mtctr r12
/* 8081EA40  4E 80 04 21 */	bctrl 
/* 8081EA44  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 8081EA48  2C 00 00 00 */	cmpwi r0, 0
/* 8081EA4C  40 82 06 94 */	bne lbl_8081F0E0
/* 8081EA50  38 80 00 03 */	li r4, 3
/* 8081EA54  B0 9C 06 04 */	sth r4, 0x604(r28)
/* 8081EA58  38 60 00 00 */	li r3, 0
/* 8081EA5C  90 7C 06 0C */	stw r3, 0x60c(r28)
/* 8081EA60  38 00 00 17 */	li r0, 0x17
/* 8081EA64  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8081EA68  90 7C 06 0C */	stw r3, 0x60c(r28)
/* 8081EA6C  90 7C 06 10 */	stw r3, 0x610(r28)
/* 8081EA70  B0 7C 06 0A */	sth r3, 0x60a(r28)
/* 8081EA74  90 9B 06 B8 */	stw r4, 0x6b8(r27)
/* 8081EA78  38 00 01 68 */	li r0, 0x168
/* 8081EA7C  90 1B 06 FC */	stw r0, 0x6fc(r27)
/* 8081EA80  38 00 00 10 */	li r0, 0x10
/* 8081EA84  B0 1B 07 62 */	sth r0, 0x762(r27)
/* 8081EA88  80 1E 01 48 */	lwz r0, 0x148(r30)
/* 8081EA8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8081EA90  A0 1E 01 4C */	lhz r0, 0x14c(r30)
/* 8081EA94  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8081EA98  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081EA9C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8081EAA0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8081EAA4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8081EAA8  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8081EAAC  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 8081EAB0  38 81 00 24 */	addi r4, r1, 0x24
/* 8081EAB4  38 A0 00 01 */	li r5, 1
/* 8081EAB8  38 C0 00 01 */	li r6, 1
/* 8081EABC  38 E1 00 98 */	addi r7, r1, 0x98
/* 8081EAC0  4B 85 11 4D */	bl StartQuake__12dVibration_cFPCUcii4cXyz
/* 8081EAC4  48 00 06 1C */	b lbl_8081F0E0
lbl_8081EAC8:
/* 8081EAC8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8081EACC  7F 64 DB 78 */	mr r4, r27
/* 8081EAD0  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081EAD4  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081EAD8  38 C0 00 01 */	li r6, 1
/* 8081EADC  4B 82 3E 39 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081EAE0  7F 63 DB 78 */	mr r3, r27
/* 8081EAE4  38 80 00 00 */	li r4, 0
/* 8081EAE8  4B FF 8E 8D */	bl setBoilEffect__9daE_YMB_cFi
/* 8081EAEC  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 8081EAF0  C0 3B 06 CC */	lfs f1, 0x6cc(r27)
/* 8081EAF4  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 8081EAF8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081EAFC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8081EB00  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081EB04  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8081EB08  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8081EB0C  38 7B 07 34 */	addi r3, r27, 0x734
/* 8081EB10  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081EB14  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 8081EB18  4B A5 1C 95 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081EB1C  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8081EB20  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081EB24  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8081EB28  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8081EB2C  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8081EB30  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8081EB34  38 7B 07 28 */	addi r3, r27, 0x728
/* 8081EB38  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081EB3C  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 8081EB40  4B A5 1C 6D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081EB44  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 8081EB48  C0 3B 06 CC */	lfs f1, 0x6cc(r27)
/* 8081EB4C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8081EB50  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081EB54  C0 5E 01 90 */	lfs f2, 0x190(r30)
/* 8081EB58  4B A5 1B E9 */	bl cLib_chaseF__FPfff
/* 8081EB5C  7F 63 DB 78 */	mr r3, r27
/* 8081EB60  4B FF 8A 0D */	bl setElecEffect2__9daE_YMB_cFv
/* 8081EB64  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 8081EB68  2C 00 00 00 */	cmpwi r0, 0
/* 8081EB6C  40 82 05 74 */	bne lbl_8081F0E0
/* 8081EB70  38 00 00 04 */	li r0, 4
/* 8081EB74  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8081EB78  38 00 00 78 */	li r0, 0x78
/* 8081EB7C  90 1B 06 FC */	stw r0, 0x6fc(r27)
/* 8081EB80  48 00 05 60 */	b lbl_8081F0E0
lbl_8081EB84:
/* 8081EB84  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8081EB88  7F 64 DB 78 */	mr r4, r27
/* 8081EB8C  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081EB90  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081EB94  38 C0 00 01 */	li r6, 1
/* 8081EB98  4B 82 3D 7D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081EB9C  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 8081EBA0  2C 00 00 5F */	cmpwi r0, 0x5f
/* 8081EBA4  41 80 00 28 */	blt lbl_8081EBCC
/* 8081EBA8  7F 63 DB 78 */	mr r3, r27
/* 8081EBAC  38 80 00 01 */	li r4, 1
/* 8081EBB0  4B FF 8D C5 */	bl setBoilEffect__9daE_YMB_cFi
/* 8081EBB4  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 8081EBB8  2C 00 00 5F */	cmpwi r0, 0x5f
/* 8081EBBC  40 82 00 10 */	bne lbl_8081EBCC
/* 8081EBC0  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 8081EBC4  38 80 00 1F */	li r4, 0x1f
/* 8081EBC8  4B 85 11 CD */	bl StopQuake__12dVibration_cFi
lbl_8081EBCC:
/* 8081EBCC  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 8081EBD0  C0 3B 06 CC */	lfs f1, 0x6cc(r27)
/* 8081EBD4  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 8081EBD8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081EBDC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8081EBE0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081EBE4  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8081EBE8  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8081EBEC  38 7B 07 34 */	addi r3, r27, 0x734
/* 8081EBF0  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081EBF4  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 8081EBF8  4B A5 1B B5 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081EBFC  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8081EC00  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081EC04  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8081EC08  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8081EC0C  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8081EC10  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8081EC14  38 7B 07 28 */	addi r3, r27, 0x728
/* 8081EC18  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081EC1C  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 8081EC20  4B A5 1B 8D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081EC24  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 8081EC28  C0 3B 06 CC */	lfs f1, 0x6cc(r27)
/* 8081EC2C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8081EC30  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081EC34  C0 5E 01 90 */	lfs f2, 0x190(r30)
/* 8081EC38  4B A5 1B 09 */	bl cLib_chaseF__FPfff
/* 8081EC3C  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 8081EC40  2C 00 00 00 */	cmpwi r0, 0
/* 8081EC44  40 82 04 9C */	bne lbl_8081F0E0
/* 8081EC48  7F 63 DB 78 */	mr r3, r27
/* 8081EC4C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081EC50  4B 7F BA C1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081EC54  B0 7B 04 E6 */	sth r3, 0x4e6(r27)
/* 8081EC58  38 00 00 08 */	li r0, 8
/* 8081EC5C  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8081EC60  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8081EC64  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8081EC68  38 00 00 0F */	li r0, 0xf
/* 8081EC6C  90 1B 06 FC */	stw r0, 0x6fc(r27)
/* 8081EC70  7F 63 DB 78 */	mr r3, r27
/* 8081EC74  38 80 00 13 */	li r4, 0x13
/* 8081EC78  38 A0 00 02 */	li r5, 2
/* 8081EC7C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081EC80  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081EC84  4B FF 7C F9 */	bl setBck__9daE_YMB_cFiUcff
/* 8081EC88  38 00 00 00 */	li r0, 0
/* 8081EC8C  90 1B 06 F0 */	stw r0, 0x6f0(r27)
/* 8081EC90  48 00 04 50 */	b lbl_8081F0E0
lbl_8081EC94:
/* 8081EC94  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8081EC98  7F 64 DB 78 */	mr r4, r27
/* 8081EC9C  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081ECA0  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081ECA4  38 C0 00 01 */	li r6, 1
/* 8081ECA8  4B 82 3C 6D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081ECAC  80 1B 06 F0 */	lwz r0, 0x6f0(r27)
/* 8081ECB0  2C 00 00 00 */	cmpwi r0, 0
/* 8081ECB4  40 82 00 80 */	bne lbl_8081ED34
/* 8081ECB8  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8081ECBC  C0 1B 06 CC */	lfs f0, 0x6cc(r27)
/* 8081ECC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081ECC4  4C 41 13 82 */	cror 2, 1, 2
/* 8081ECC8  40 82 00 98 */	bne lbl_8081ED60
/* 8081ECCC  7F 63 DB 78 */	mr r3, r27
/* 8081ECD0  4B FF 8A 75 */	bl setWaterEffect1__9daE_YMB_cFv
/* 8081ECD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029D@ha */
/* 8081ECD8  38 03 02 9D */	addi r0, r3, 0x029D /* 0x0007029D@l */
/* 8081ECDC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8081ECE0  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8081ECE4  38 81 00 20 */	addi r4, r1, 0x20
/* 8081ECE8  38 A0 00 00 */	li r5, 0
/* 8081ECEC  38 C0 FF FF */	li r6, -1
/* 8081ECF0  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8081ECF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081ECF8  7D 89 03 A6 */	mtctr r12
/* 8081ECFC  4E 80 04 21 */	bctrl 
/* 8081ED00  38 00 00 01 */	li r0, 1
/* 8081ED04  90 1B 06 F0 */	stw r0, 0x6f0(r27)
/* 8081ED08  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081ED0C  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8081ED10  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8081ED14  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8081ED18  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8081ED1C  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 8081ED20  38 80 00 06 */	li r4, 6
/* 8081ED24  38 A0 00 1F */	li r5, 0x1f
/* 8081ED28  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8081ED2C  4B 85 0C F9 */	bl StartShock__12dVibration_cFii4cXyz
/* 8081ED30  48 00 00 30 */	b lbl_8081ED60
lbl_8081ED34:
/* 8081ED34  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081ED38  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081ED3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8081ED40  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8081ED44  38 81 00 1C */	addi r4, r1, 0x1c
/* 8081ED48  38 A0 00 00 */	li r5, 0
/* 8081ED4C  38 C0 FF FF */	li r6, -1
/* 8081ED50  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8081ED54  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081ED58  7D 89 03 A6 */	mtctr r12
/* 8081ED5C  4E 80 04 21 */	bctrl 
lbl_8081ED60:
/* 8081ED60  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 8081ED64  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8081ED68  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8081ED6C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081ED70  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8081ED74  D0 1B 07 34 */	stfs f0, 0x734(r27)
/* 8081ED78  D0 3B 07 38 */	stfs f1, 0x738(r27)
/* 8081ED7C  D0 5B 07 3C */	stfs f2, 0x73c(r27)
/* 8081ED80  C0 5B 07 38 */	lfs f2, 0x738(r27)
/* 8081ED84  C0 3B 06 CC */	lfs f1, 0x6cc(r27)
/* 8081ED88  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 8081ED8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081ED90  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081ED94  40 80 00 08 */	bge lbl_8081ED9C
/* 8081ED98  D0 1B 07 38 */	stfs f0, 0x738(r27)
lbl_8081ED9C:
/* 8081ED9C  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 8081EDA0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081EDA4  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 8081EDA8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8081EDAC  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 8081EDB0  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8081EDB4  38 7B 07 28 */	addi r3, r27, 0x728
/* 8081EDB8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081EDBC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8081EDC0  4B A5 19 ED */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081EDC4  7F 63 DB 78 */	mr r3, r27
/* 8081EDC8  4B FF 87 A5 */	bl setElecEffect2__9daE_YMB_cFv
/* 8081EDCC  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 8081EDD0  2C 00 00 00 */	cmpwi r0, 0
/* 8081EDD4  40 82 03 0C */	bne lbl_8081F0E0
/* 8081EDD8  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 8081EDDC  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8081EDE0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081EDE4  4B A5 19 5D */	bl cLib_chaseF__FPfff
/* 8081EDE8  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 8081EDEC  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 8081EDF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081EDF4  4C 40 13 82 */	cror 2, 0, 2
/* 8081EDF8  40 82 02 E8 */	bne lbl_8081F0E0
/* 8081EDFC  7F 63 DB 78 */	mr r3, r27
/* 8081EE00  38 80 00 16 */	li r4, 0x16
/* 8081EE04  38 A0 00 00 */	li r5, 0
/* 8081EE08  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8081EE0C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081EE10  4B FF 7B 6D */	bl setBck__9daE_YMB_cFiUcff
/* 8081EE14  38 00 00 09 */	li r0, 9
/* 8081EE18  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8081EE1C  48 00 02 C4 */	b lbl_8081F0E0
lbl_8081EE20:
/* 8081EE20  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8081EE24  7F 64 DB 78 */	mr r4, r27
/* 8081EE28  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081EE2C  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081EE30  38 C0 00 01 */	li r6, 1
/* 8081EE34  4B 82 3A E1 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081EE38  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081EE3C  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081EE40  90 01 00 18 */	stw r0, 0x18(r1)
/* 8081EE44  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8081EE48  38 81 00 18 */	addi r4, r1, 0x18
/* 8081EE4C  38 A0 00 00 */	li r5, 0
/* 8081EE50  38 C0 FF FF */	li r6, -1
/* 8081EE54  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8081EE58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081EE5C  7D 89 03 A6 */	mtctr r12
/* 8081EE60  4E 80 04 21 */	bctrl 
/* 8081EE64  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 8081EE68  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081EE6C  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 8081EE70  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8081EE74  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 8081EE78  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8081EE7C  38 7B 07 28 */	addi r3, r27, 0x728
/* 8081EE80  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081EE84  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8081EE88  4B A5 19 25 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081EE8C  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 8081EE90  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8081EE94  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8081EE98  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081EE9C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8081EEA0  D0 1B 07 34 */	stfs f0, 0x734(r27)
/* 8081EEA4  D0 3B 07 38 */	stfs f1, 0x738(r27)
/* 8081EEA8  D0 5B 07 3C */	stfs f2, 0x73c(r27)
/* 8081EEAC  7F 63 DB 78 */	mr r3, r27
/* 8081EEB0  4B FF 86 BD */	bl setElecEffect2__9daE_YMB_cFv
/* 8081EEB4  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 8081EEB8  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8081EEBC  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081EEC0  4B A5 18 81 */	bl cLib_chaseF__FPfff
/* 8081EEC4  2C 03 00 00 */	cmpwi r3, 0
/* 8081EEC8  41 82 02 18 */	beq lbl_8081F0E0
/* 8081EECC  38 00 00 0A */	li r0, 0xa
/* 8081EED0  90 1B 06 FC */	stw r0, 0x6fc(r27)
/* 8081EED4  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8081EED8  48 00 02 08 */	b lbl_8081F0E0
lbl_8081EEDC:
/* 8081EEDC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8081EEE0  7F 64 DB 78 */	mr r4, r27
/* 8081EEE4  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081EEE8  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081EEEC  38 C0 00 01 */	li r6, 1
/* 8081EEF0  4B 82 3A 25 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081EEF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081EEF8  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081EEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8081EF00  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8081EF04  38 81 00 14 */	addi r4, r1, 0x14
/* 8081EF08  38 A0 00 00 */	li r5, 0
/* 8081EF0C  38 C0 FF FF */	li r6, -1
/* 8081EF10  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8081EF14  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081EF18  7D 89 03 A6 */	mtctr r12
/* 8081EF1C  4E 80 04 21 */	bctrl 
/* 8081EF20  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8081EF24  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081EF28  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 8081EF2C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8081EF30  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 8081EF34  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8081EF38  38 7B 07 28 */	addi r3, r27, 0x728
/* 8081EF3C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8081EF40  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8081EF44  4B A5 18 69 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081EF48  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 8081EF4C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8081EF50  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8081EF54  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081EF58  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8081EF5C  D0 1B 07 34 */	stfs f0, 0x734(r27)
/* 8081EF60  D0 3B 07 38 */	stfs f1, 0x738(r27)
/* 8081EF64  D0 5B 07 3C */	stfs f2, 0x73c(r27)
/* 8081EF68  7F 63 DB 78 */	mr r3, r27
/* 8081EF6C  4B FF 86 01 */	bl setElecEffect2__9daE_YMB_cFv
/* 8081EF70  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 8081EF74  2C 00 00 00 */	cmpwi r0, 0
/* 8081EF78  40 82 01 68 */	bne lbl_8081F0E0
/* 8081EF7C  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 8081EF80  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081EF84  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081EF88  4B A5 17 B9 */	bl cLib_chaseF__FPfff
/* 8081EF8C  2C 03 00 00 */	cmpwi r3, 0
/* 8081EF90  41 82 01 50 */	beq lbl_8081F0E0
/* 8081EF94  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 8081EF98  38 80 00 01 */	li r4, 1
/* 8081EF9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081EFA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081EFA4  40 82 00 18 */	bne lbl_8081EFBC
/* 8081EFA8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081EFAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081EFB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081EFB4  41 82 00 08 */	beq lbl_8081EFBC
/* 8081EFB8  38 80 00 00 */	li r4, 0
lbl_8081EFBC:
/* 8081EFBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8081EFC0  41 82 01 20 */	beq lbl_8081F0E0
/* 8081EFC4  38 00 00 0B */	li r0, 0xb
/* 8081EFC8  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8081EFCC  38 00 00 1E */	li r0, 0x1e
/* 8081EFD0  90 1B 06 FC */	stw r0, 0x6fc(r27)
/* 8081EFD4  48 00 01 0C */	b lbl_8081F0E0
lbl_8081EFD8:
/* 8081EFD8  3B 9F 4E C8 */	addi r28, r31, 0x4ec8
/* 8081EFDC  7F 83 E3 78 */	mr r3, r28
/* 8081EFE0  7F 64 DB 78 */	mr r4, r27
/* 8081EFE4  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081EFE8  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081EFEC  38 C0 00 01 */	li r6, 1
/* 8081EFF0  4B 82 39 25 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081EFF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081EFF8  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081EFFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8081F000  38 7B 05 C4 */	addi r3, r27, 0x5c4
/* 8081F004  38 81 00 10 */	addi r4, r1, 0x10
/* 8081F008  38 A0 00 00 */	li r5, 0
/* 8081F00C  38 C0 FF FF */	li r6, -1
/* 8081F010  81 9B 05 C4 */	lwz r12, 0x5c4(r27)
/* 8081F014  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081F018  7D 89 03 A6 */	mtctr r12
/* 8081F01C  4E 80 04 21 */	bctrl 
/* 8081F020  7F 63 DB 78 */	mr r3, r27
/* 8081F024  4B FF 85 49 */	bl setElecEffect2__9daE_YMB_cFv
/* 8081F028  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 8081F02C  2C 00 00 00 */	cmpwi r0, 0
/* 8081F030  40 82 00 B0 */	bne lbl_8081F0E0
/* 8081F034  C0 1B 07 34 */	lfs f0, 0x734(r27)
/* 8081F038  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8081F03C  C0 1B 07 38 */	lfs f0, 0x738(r27)
/* 8081F040  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8081F044  C0 1B 07 3C */	lfs f0, 0x73c(r27)
/* 8081F048  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8081F04C  C0 1B 07 28 */	lfs f0, 0x728(r27)
/* 8081F050  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8081F054  C0 1B 07 2C */	lfs f0, 0x72c(r27)
/* 8081F058  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8081F05C  C0 1B 07 30 */	lfs f0, 0x730(r27)
/* 8081F060  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8081F064  38 7D 02 48 */	addi r3, r29, 0x248
/* 8081F068  38 81 00 80 */	addi r4, r1, 0x80
/* 8081F06C  38 A1 00 74 */	addi r5, r1, 0x74
/* 8081F070  4B 96 1B A9 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8081F074  38 7D 02 48 */	addi r3, r29, 0x248
/* 8081F078  4B 94 24 35 */	bl Start__9dCamera_cFv
/* 8081F07C  38 7D 02 48 */	addi r3, r29, 0x248
/* 8081F080  38 80 00 00 */	li r4, 0
/* 8081F084  4B 94 3F 89 */	bl SetTrimSize__9dCamera_cFl
/* 8081F088  7F 83 E3 78 */	mr r3, r28
/* 8081F08C  4B 82 33 DD */	bl reset__14dEvt_control_cFv
/* 8081F090  7F 63 DB 78 */	mr r3, r27
/* 8081F094  38 80 00 01 */	li r4, 1
/* 8081F098  38 A0 00 01 */	li r5, 1
/* 8081F09C  4B FF 79 E1 */	bl setActionMode__9daE_YMB_cFii
/* 8081F0A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081F0A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081F0A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8081F0AC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081F0B0  38 80 00 00 */	li r4, 0
/* 8081F0B4  4B A9 50 B1 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 8081F0B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081F0BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081F0C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8081F0C4  38 63 04 F4 */	addi r3, r3, 0x4f4
/* 8081F0C8  38 80 00 01 */	li r4, 1
/* 8081F0CC  38 A0 0B B8 */	li r5, 0xbb8
/* 8081F0D0  38 C0 0F A0 */	li r6, 0xfa0
/* 8081F0D4  38 E0 17 70 */	li r7, 0x1770
/* 8081F0D8  4B AA 08 A9 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 8081F0DC  48 00 00 4C */	b lbl_8081F128
lbl_8081F0E0:
/* 8081F0E0  C0 1B 07 34 */	lfs f0, 0x734(r27)
/* 8081F0E4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8081F0E8  C0 1B 07 38 */	lfs f0, 0x738(r27)
/* 8081F0EC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8081F0F0  C0 1B 07 3C */	lfs f0, 0x73c(r27)
/* 8081F0F4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8081F0F8  C0 1B 07 28 */	lfs f0, 0x728(r27)
/* 8081F0FC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8081F100  C0 1B 07 2C */	lfs f0, 0x72c(r27)
/* 8081F104  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8081F108  C0 1B 07 30 */	lfs f0, 0x730(r27)
/* 8081F10C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8081F110  38 7D 02 48 */	addi r3, r29, 0x248
/* 8081F114  38 81 00 68 */	addi r4, r1, 0x68
/* 8081F118  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8081F11C  C0 3B 07 58 */	lfs f1, 0x758(r27)
/* 8081F120  38 C0 00 00 */	li r6, 0
/* 8081F124  4B 96 19 BD */	bl Set__9dCamera_cF4cXyz4cXyzfs
lbl_8081F128:
/* 8081F128  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8081F12C  4B B4 30 F5 */	bl _restgpr_27
/* 8081F130  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8081F134  7C 08 03 A6 */	mtlr r0
/* 8081F138  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8081F13C  4E 80 00 20 */	blr 
