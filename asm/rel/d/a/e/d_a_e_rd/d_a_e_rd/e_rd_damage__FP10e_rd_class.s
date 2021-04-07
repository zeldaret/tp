lbl_8050B5B4:
/* 8050B5B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8050B5B8  7C 08 02 A6 */	mflr r0
/* 8050B5BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8050B5C0  39 61 00 70 */	addi r11, r1, 0x70
/* 8050B5C4  4B E5 6C 0D */	bl _savegpr_26
/* 8050B5C8  7C 7D 1B 78 */	mr r29, r3
/* 8050B5CC  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050B5D0  3B C3 85 84 */	addi r30, r3, lit_4208@l /* 0x80518584@l */
/* 8050B5D4  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8050B5D8  2C 00 00 00 */	cmpwi r0, 0
/* 8050B5DC  41 81 00 18 */	bgt lbl_8050B5F4
/* 8050B5E0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8050B5E4  54 00 00 3E */	slwi r0, r0, 0
/* 8050B5E8  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8050B5EC  38 00 00 00 */	li r0, 0
/* 8050B5F0  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8050B5F4:
/* 8050B5F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050B5F8  D0 1D 06 D0 */	stfs f0, 0x6d0(r29)
/* 8050B5FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050B600  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050B604  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8050B608  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8050B60C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8050B610  41 82 00 6C */	beq lbl_8050B67C
/* 8050B614  88 1D 0A FA */	lbz r0, 0xafa(r29)
/* 8050B618  7C 00 07 75 */	extsb. r0, r0
/* 8050B61C  40 82 00 F8 */	bne lbl_8050B714
/* 8050B620  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8050B624  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8050B628  41 82 00 EC */	beq lbl_8050B714
/* 8050B62C  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050B630  2C 00 00 28 */	cmpwi r0, 0x28
/* 8050B634  40 81 00 10 */	ble lbl_8050B644
/* 8050B638  38 00 00 5A */	li r0, 0x5a
/* 8050B63C  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050B640  48 00 00 20 */	b lbl_8050B660
lbl_8050B644:
/* 8050B644  2C 00 00 14 */	cmpwi r0, 0x14
/* 8050B648  40 81 00 10 */	ble lbl_8050B658
/* 8050B64C  38 00 00 46 */	li r0, 0x46
/* 8050B650  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050B654  48 00 00 0C */	b lbl_8050B660
lbl_8050B658:
/* 8050B658  38 00 00 32 */	li r0, 0x32
/* 8050B65C  B0 1D 09 90 */	sth r0, 0x990(r29)
lbl_8050B660:
/* 8050B660  38 00 00 1E */	li r0, 0x1e
/* 8050B664  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050B668  38 00 00 10 */	li r0, 0x10
/* 8050B66C  B0 1D 09 92 */	sth r0, 0x992(r29)
/* 8050B670  38 00 00 01 */	li r0, 1
/* 8050B674  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 8050B678  48 00 00 9C */	b lbl_8050B714
lbl_8050B67C:
/* 8050B67C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8050B680  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8050B684  41 82 00 90 */	beq lbl_8050B714
/* 8050B688  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8050B68C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8050B690  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8050B694  38 00 00 03 */	li r0, 3
/* 8050B698  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050B69C  38 00 00 64 */	li r0, 0x64
/* 8050B6A0  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050B6A4  38 00 00 2D */	li r0, 0x2d
/* 8050B6A8  B0 1D 09 92 */	sth r0, 0x992(r29)
/* 8050B6AC  38 00 00 00 */	li r0, 0
/* 8050B6B0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8050B6B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070014@ha */
/* 8050B6B8  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00070014@l */
/* 8050B6BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8050B6C0  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050B6C4  38 81 00 18 */	addi r4, r1, 0x18
/* 8050B6C8  38 A0 FF FF */	li r5, -1
/* 8050B6CC  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050B6D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050B6D4  7D 89 03 A6 */	mtctr r12
/* 8050B6D8  4E 80 04 21 */	bctrl 
/* 8050B6DC  38 00 00 01 */	li r0, 1
/* 8050B6E0  98 1D 09 68 */	stb r0, 0x968(r29)
/* 8050B6E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050B6E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050B6EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8050B6F0  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8050B6F4  64 00 01 00 */	oris r0, r0, 0x100
/* 8050B6F8  90 03 05 88 */	stw r0, 0x588(r3)
/* 8050B6FC  38 00 00 0F */	li r0, 0xf
/* 8050B700  B0 1D 0A DC */	sth r0, 0xadc(r29)
/* 8050B704  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8050B708  38 00 FF E8 */	li r0, -24
/* 8050B70C  7C 60 00 38 */	and r0, r3, r0
/* 8050B710  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_8050B714:
/* 8050B714  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8050B718  28 00 00 1F */	cmplwi r0, 0x1f
/* 8050B71C  41 81 09 28 */	bgt lbl_8050C044
/* 8050B720  3C 60 80 52 */	lis r3, lit_7346@ha /* 0x80518BB8@ha */
/* 8050B724  38 63 8B B8 */	addi r3, r3, lit_7346@l /* 0x80518BB8@l */
/* 8050B728  54 00 10 3A */	slwi r0, r0, 2
/* 8050B72C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8050B730  7C 09 03 A6 */	mtctr r0
/* 8050B734  4E 80 04 20 */	bctr 
lbl_8050B738:
/* 8050B738  7F A3 EB 78 */	mr r3, r29
/* 8050B73C  38 80 00 12 */	li r4, 0x12
/* 8050B740  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050B744  38 A0 00 00 */	li r5, 0
/* 8050B748  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050B74C  4B FF 94 89 */	bl anm_init__FP10e_rd_classifUcf
/* 8050B750  38 00 00 01 */	li r0, 1
/* 8050B754  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050B758  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050B75C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8050B760  7F A3 EB 78 */	mr r3, r29
/* 8050B764  4B FF A7 ED */	bl ride_off__FP10e_rd_class
/* 8050B768  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8050B76C  D0 1D 0A B8 */	stfs f0, 0xab8(r29)
/* 8050B770  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8050B774  2C 00 00 00 */	cmpwi r0, 0
/* 8050B778  41 81 00 68 */	bgt lbl_8050B7E0
/* 8050B77C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070014@ha */
/* 8050B780  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00070014@l */
/* 8050B784  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B788  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050B78C  38 81 00 14 */	addi r4, r1, 0x14
/* 8050B790  38 A0 FF FF */	li r5, -1
/* 8050B794  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050B798  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050B79C  7D 89 03 A6 */	mtctr r12
/* 8050B7A0  4E 80 04 21 */	bctrl 
/* 8050B7A4  38 00 00 01 */	li r0, 1
/* 8050B7A8  98 1D 09 68 */	stb r0, 0x968(r29)
/* 8050B7AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050B7B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050B7B4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8050B7B8  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8050B7BC  64 00 01 00 */	oris r0, r0, 0x100
/* 8050B7C0  90 03 05 88 */	stw r0, 0x588(r3)
/* 8050B7C4  3C 60 80 52 */	lis r3, data_80519200@ha /* 0x80519200@ha */
/* 8050B7C8  88 03 92 00 */	lbz r0, data_80519200@l(r3)  /* 0x80519200@l */
/* 8050B7CC  28 00 00 00 */	cmplwi r0, 0
/* 8050B7D0  41 82 00 38 */	beq lbl_8050B808
/* 8050B7D4  38 00 00 00 */	li r0, 0
/* 8050B7D8  98 1D 05 BA */	stb r0, 0x5ba(r29)
/* 8050B7DC  48 00 00 2C */	b lbl_8050B808
lbl_8050B7E0:
/* 8050B7E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070013@ha */
/* 8050B7E4  38 03 00 13 */	addi r0, r3, 0x0013 /* 0x00070013@l */
/* 8050B7E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050B7EC  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050B7F0  38 81 00 10 */	addi r4, r1, 0x10
/* 8050B7F4  38 A0 FF FF */	li r5, -1
/* 8050B7F8  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050B7FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050B800  7D 89 03 A6 */	mtctr r12
/* 8050B804  4E 80 04 21 */	bctrl 
lbl_8050B808:
/* 8050B808  38 00 00 00 */	li r0, 0
/* 8050B80C  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050B810  48 00 08 34 */	b lbl_8050C044
lbl_8050B814:
/* 8050B814  80 1D 0B 70 */	lwz r0, 0xb70(r29)
/* 8050B818  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8050B81C  41 82 00 C4 */	beq lbl_8050B8E0
/* 8050B820  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050B824  2C 00 00 00 */	cmpwi r0, 0
/* 8050B828  40 82 00 B8 */	bne lbl_8050B8E0
/* 8050B82C  7F A3 EB 78 */	mr r3, r29
/* 8050B830  4B FF F8 C5 */	bl kado_check__FP10e_rd_class
/* 8050B834  2C 03 00 00 */	cmpwi r3, 0
/* 8050B838  41 82 00 58 */	beq lbl_8050B890
/* 8050B83C  2C 03 00 02 */	cmpwi r3, 2
/* 8050B840  40 82 00 1C */	bne lbl_8050B85C
/* 8050B844  38 00 10 00 */	li r0, 0x1000
/* 8050B848  B0 1D 09 F6 */	sth r0, 0x9f6(r29)
/* 8050B84C  A8 7D 0A 0E */	lha r3, 0xa0e(r29)
/* 8050B850  38 03 E4 A8 */	addi r0, r3, -7000
/* 8050B854  B0 1D 0A 0E */	sth r0, 0xa0e(r29)
/* 8050B858  48 00 00 18 */	b lbl_8050B870
lbl_8050B85C:
/* 8050B85C  38 00 F0 00 */	li r0, -4096
/* 8050B860  B0 1D 09 F6 */	sth r0, 0x9f6(r29)
/* 8050B864  A8 7D 0A 0E */	lha r3, 0xa0e(r29)
/* 8050B868  38 03 1B 58 */	addi r0, r3, 0x1b58
/* 8050B86C  B0 1D 0A 0E */	sth r0, 0xa0e(r29)
lbl_8050B870:
/* 8050B870  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8050B874  D0 1D 0A B8 */	stfs f0, 0xab8(r29)
/* 8050B878  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8050B87C  D0 1D 0A 24 */	stfs f0, 0xa24(r29)
/* 8050B880  D0 1D 0A 2C */	stfs f0, 0xa2c(r29)
/* 8050B884  38 00 00 3C */	li r0, 0x3c
/* 8050B888  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050B88C  48 00 07 B8 */	b lbl_8050C044
lbl_8050B890:
/* 8050B890  38 00 00 0A */	li r0, 0xa
/* 8050B894  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050B898  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050B89C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8050B8A0  C0 3D 09 EC */	lfs f1, 0x9ec(r29)
/* 8050B8A4  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 8050B8A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8050B8AC  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 8050B8B0  A8 7D 0A 0E */	lha r3, 0xa0e(r29)
/* 8050B8B4  3C 63 00 01 */	addis r3, r3, 1
/* 8050B8B8  38 03 80 00 */	addi r0, r3, -32768
/* 8050B8BC  B0 1D 0A 0E */	sth r0, 0xa0e(r29)
/* 8050B8C0  38 00 00 05 */	li r0, 5
/* 8050B8C4  B0 1D 0A F0 */	sth r0, 0xaf0(r29)
/* 8050B8C8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8050B8CC  D0 1D 0A 24 */	stfs f0, 0xa24(r29)
/* 8050B8D0  D0 1D 0A 2C */	stfs f0, 0xa2c(r29)
/* 8050B8D4  38 00 00 00 */	li r0, 0
/* 8050B8D8  B0 1D 09 F6 */	sth r0, 0x9f6(r29)
/* 8050B8DC  48 00 07 68 */	b lbl_8050C044
lbl_8050B8E0:
/* 8050B8E0  38 7D 0A 0C */	addi r3, r29, 0xa0c
/* 8050B8E4  38 80 C0 00 */	li r4, -16384
/* 8050B8E8  38 A0 00 01 */	li r5, 1
/* 8050B8EC  38 C0 03 00 */	li r6, 0x300
/* 8050B8F0  4B D6 4D 19 */	bl cLib_addCalcAngleS2__FPssss
/* 8050B8F4  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8050B8F8  A8 1D 09 F6 */	lha r0, 0x9f6(r29)
/* 8050B8FC  7C 03 02 14 */	add r0, r3, r0
/* 8050B900  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8050B904  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8050B908  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8050B90C  A8 1D 0A 0C */	lha r0, 0xa0c(r29)
/* 8050B910  2C 00 D0 00 */	cmpwi r0, -12288
/* 8050B914  41 81 07 30 */	bgt lbl_8050C044
/* 8050B918  80 1D 0B 70 */	lwz r0, 0xb70(r29)
/* 8050B91C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8050B920  41 82 07 24 */	beq lbl_8050C044
/* 8050B924  38 00 00 0A */	li r0, 0xa
/* 8050B928  98 1D 0A 1E */	stb r0, 0xa1e(r29)
/* 8050B92C  88 1D 12 94 */	lbz r0, 0x1294(r29)
/* 8050B930  7C 00 07 75 */	extsb. r0, r0
/* 8050B934  41 82 00 34 */	beq lbl_8050B968
/* 8050B938  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002F@ha */
/* 8050B93C  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0006002F@l */
/* 8050B940  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050B944  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050B948  38 81 00 0C */	addi r4, r1, 0xc
/* 8050B94C  38 A0 00 00 */	li r5, 0
/* 8050B950  38 C0 FF FF */	li r6, -1
/* 8050B954  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050B958  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8050B95C  7D 89 03 A6 */	mtctr r12
/* 8050B960  4E 80 04 21 */	bctrl 
/* 8050B964  48 00 00 30 */	b lbl_8050B994
lbl_8050B968:
/* 8050B968  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 8050B96C  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 8050B970  90 01 00 08 */	stw r0, 8(r1)
/* 8050B974  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050B978  38 81 00 08 */	addi r4, r1, 8
/* 8050B97C  38 A0 00 00 */	li r5, 0
/* 8050B980  38 C0 FF FF */	li r6, -1
/* 8050B984  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050B988  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8050B98C  7D 89 03 A6 */	mtctr r12
/* 8050B990  4E 80 04 21 */	bctrl 
lbl_8050B994:
/* 8050B994  38 00 00 02 */	li r0, 2
/* 8050B998  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050B99C  88 1D 0A 1F */	lbz r0, 0xa1f(r29)
/* 8050B9A0  7C 00 07 75 */	extsb. r0, r0
/* 8050B9A4  40 82 00 24 */	bne lbl_8050B9C8
/* 8050B9A8  7F A3 EB 78 */	mr r3, r29
/* 8050B9AC  38 80 00 10 */	li r4, 0x10
/* 8050B9B0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050B9B4  38 A0 00 00 */	li r5, 0
/* 8050B9B8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050B9BC  4B FF 92 19 */	bl anm_init__FP10e_rd_classifUcf
/* 8050B9C0  A8 1D 0A 0E */	lha r0, 0xa0e(r29)
/* 8050B9C4  48 00 00 14 */	b lbl_8050B9D8
lbl_8050B9C8:
/* 8050B9C8  A8 7D 0A 0E */	lha r3, 0xa0e(r29)
/* 8050B9CC  3C 63 00 01 */	addis r3, r3, 1
/* 8050B9D0  38 03 80 00 */	addi r0, r3, -32768
/* 8050B9D4  7C 00 07 34 */	extsh r0, r0
lbl_8050B9D8:
/* 8050B9D8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8050B9DC  88 1D 09 F8 */	lbz r0, 0x9f8(r29)
/* 8050B9E0  7C 00 07 75 */	extsb. r0, r0
/* 8050B9E4  41 82 00 18 */	beq lbl_8050B9FC
/* 8050B9E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050B9EC  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 8050B9F0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8050B9F4  D0 1D 0A B8 */	stfs f0, 0xab8(r29)
/* 8050B9F8  48 00 06 4C */	b lbl_8050C044
lbl_8050B9FC:
/* 8050B9FC  88 1D 0A 1F */	lbz r0, 0xa1f(r29)
/* 8050BA00  7C 00 07 75 */	extsb. r0, r0
/* 8050BA04  40 82 00 14 */	bne lbl_8050BA18
/* 8050BA08  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8050BA0C  D0 1D 0A 24 */	stfs f0, 0xa24(r29)
/* 8050BA10  D0 1D 0A 2C */	stfs f0, 0xa2c(r29)
/* 8050BA14  48 00 00 10 */	b lbl_8050BA24
lbl_8050BA18:
/* 8050BA18  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8050BA1C  D0 1D 0A 24 */	stfs f0, 0xa24(r29)
/* 8050BA20  D0 1D 0A 2C */	stfs f0, 0xa2c(r29)
lbl_8050BA24:
/* 8050BA24  38 00 B0 00 */	li r0, -20480
/* 8050BA28  B0 1D 0A 28 */	sth r0, 0xa28(r29)
/* 8050BA2C  38 00 C0 00 */	li r0, -16384
/* 8050BA30  B0 1D 0A 30 */	sth r0, 0xa30(r29)
/* 8050BA34  C0 3D 09 EC */	lfs f1, 0x9ec(r29)
/* 8050BA38  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8050BA3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8050BA40  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 8050BA44  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8050BA48  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8050BA4C  A8 1D 09 F6 */	lha r0, 0x9f6(r29)
/* 8050BA50  7C 00 0E 70 */	srawi r0, r0, 1
/* 8050BA54  7C 00 01 94 */	addze r0, r0
/* 8050BA58  B0 1D 09 F6 */	sth r0, 0x9f6(r29)
/* 8050BA5C  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8050BA60  D0 1D 0A B8 */	stfs f0, 0xab8(r29)
/* 8050BA64  38 00 00 01 */	li r0, 1
/* 8050BA68  98 1D 12 5D */	stb r0, 0x125d(r29)
/* 8050BA6C  48 00 05 D8 */	b lbl_8050C044
lbl_8050BA70:
/* 8050BA70  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8050BA74  A8 1D 09 F6 */	lha r0, 0x9f6(r29)
/* 8050BA78  7C 03 02 14 */	add r0, r3, r0
/* 8050BA7C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8050BA80  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8050BA84  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8050BA88  38 7D 0A 0C */	addi r3, r29, 0xa0c
/* 8050BA8C  38 80 C0 00 */	li r4, -16384
/* 8050BA90  38 A0 00 01 */	li r5, 1
/* 8050BA94  38 C0 03 00 */	li r6, 0x300
/* 8050BA98  4B D6 4B 71 */	bl cLib_addCalcAngleS2__FPssss
/* 8050BA9C  80 1D 0B 70 */	lwz r0, 0xb70(r29)
/* 8050BAA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8050BAA4  41 82 05 A0 */	beq lbl_8050C044
/* 8050BAA8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8050BAAC  2C 00 00 00 */	cmpwi r0, 0
/* 8050BAB0  40 81 00 20 */	ble lbl_8050BAD0
/* 8050BAB4  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8050BAB8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8050BABC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8050BAC0  40 82 00 10 */	bne lbl_8050BAD0
/* 8050BAC4  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8050BAC8  60 00 00 01 */	ori r0, r0, 1
/* 8050BACC  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_8050BAD0:
/* 8050BAD0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8050BAD4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050BAD8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8050BADC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050BAE0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8050BAE4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8050BAE8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8050BAEC  38 80 00 64 */	li r4, 0x64
/* 8050BAF0  28 1D 00 00 */	cmplwi r29, 0
/* 8050BAF4  41 82 00 0C */	beq lbl_8050BB00
/* 8050BAF8  80 BD 00 04 */	lwz r5, 4(r29)
/* 8050BAFC  48 00 00 08 */	b lbl_8050BB04
lbl_8050BB00:
/* 8050BB00  38 A0 FF FF */	li r5, -1
lbl_8050BB04:
/* 8050BB04  38 C0 00 05 */	li r6, 5
/* 8050BB08  4B C9 C6 B9 */	bl dKy_Sound_set__F4cXyziUii
/* 8050BB0C  38 00 00 0A */	li r0, 0xa
/* 8050BB10  98 1D 0A 1E */	stb r0, 0xa1e(r29)
/* 8050BB14  88 1D 0A 1F */	lbz r0, 0xa1f(r29)
/* 8050BB18  7C 00 07 75 */	extsb. r0, r0
/* 8050BB1C  40 82 00 20 */	bne lbl_8050BB3C
/* 8050BB20  7F A3 EB 78 */	mr r3, r29
/* 8050BB24  38 80 00 10 */	li r4, 0x10
/* 8050BB28  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050BB2C  38 A0 00 00 */	li r5, 0
/* 8050BB30  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BB34  4B FF 90 A1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050BB38  48 00 00 1C */	b lbl_8050BB54
lbl_8050BB3C:
/* 8050BB3C  7F A3 EB 78 */	mr r3, r29
/* 8050BB40  38 80 00 12 */	li r4, 0x12
/* 8050BB44  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050BB48  38 A0 00 00 */	li r5, 0
/* 8050BB4C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BB50  4B FF 90 85 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050BB54:
/* 8050BB54  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050BB58  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 8050BB5C  38 00 C0 00 */	li r0, -16384
/* 8050BB60  B0 1D 0A 0C */	sth r0, 0xa0c(r29)
/* 8050BB64  88 1D 0A 1F */	lbz r0, 0xa1f(r29)
/* 8050BB68  7C 00 07 75 */	extsb. r0, r0
/* 8050BB6C  40 82 00 40 */	bne lbl_8050BBAC
/* 8050BB70  AB 7D 0A 0E */	lha r27, 0xa0e(r29)
/* 8050BB74  3B 40 00 00 */	li r26, 0
/* 8050BB78  3B 80 00 00 */	li r28, 0
lbl_8050BB7C:
/* 8050BB7C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050BB80  4B D5 BD D5 */	bl cM_rndF__Ff
/* 8050BB84  FC 00 08 1E */	fctiwz f0, f1
/* 8050BB88  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8050BB8C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 8050BB90  38 1C 0A D2 */	addi r0, r28, 0xad2
/* 8050BB94  7C 7D 03 2E */	sthx r3, r29, r0
/* 8050BB98  3B 5A 00 01 */	addi r26, r26, 1
/* 8050BB9C  2C 1A 00 04 */	cmpwi r26, 4
/* 8050BBA0  3B 9C 00 02 */	addi r28, r28, 2
/* 8050BBA4  41 80 FF D8 */	blt lbl_8050BB7C
/* 8050BBA8  48 00 00 14 */	b lbl_8050BBBC
lbl_8050BBAC:
/* 8050BBAC  A8 7D 0A 0E */	lha r3, 0xa0e(r29)
/* 8050BBB0  3C 63 00 01 */	addis r3, r3, 1
/* 8050BBB4  38 03 80 00 */	addi r0, r3, -32768
/* 8050BBB8  7C 1B 07 34 */	extsh r27, r0
lbl_8050BBBC:
/* 8050BBBC  B3 7D 04 DE */	sth r27, 0x4de(r29)
/* 8050BBC0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8050BBC4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8050BBC8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8050BBCC  41 82 00 18 */	beq lbl_8050BBE4
/* 8050BBD0  38 00 00 50 */	li r0, 0x50
/* 8050BBD4  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050BBD8  38 00 00 37 */	li r0, 0x37
/* 8050BBDC  B0 1D 09 92 */	sth r0, 0x992(r29)
/* 8050BBE0  48 00 00 2C */	b lbl_8050BC0C
lbl_8050BBE4:
/* 8050BBE4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050BBE8  4B D5 BD 6D */	bl cM_rndF__Ff
/* 8050BBEC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8050BBF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050BBF4  FC 00 00 1E */	fctiwz f0, f0
/* 8050BBF8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8050BBFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050BC00  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050BC04  38 00 00 23 */	li r0, 0x23
/* 8050BC08  B0 1D 09 92 */	sth r0, 0x992(r29)
lbl_8050BC0C:
/* 8050BC0C  38 00 00 03 */	li r0, 3
/* 8050BC10  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050BC14  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8050BC18  D0 1D 0A B8 */	stfs f0, 0xab8(r29)
/* 8050BC1C  38 00 00 01 */	li r0, 1
/* 8050BC20  98 1D 12 5D */	stb r0, 0x125d(r29)
/* 8050BC24  48 00 04 20 */	b lbl_8050C044
lbl_8050BC28:
/* 8050BC28  7F A3 EB 78 */	mr r3, r29
/* 8050BC2C  4B FF F7 BD */	bl body_gake__FP10e_rd_class
/* 8050BC30  2C 03 00 00 */	cmpwi r3, 0
/* 8050BC34  41 82 00 1C */	beq lbl_8050BC50
/* 8050BC38  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8050BC3C  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 8050BC40  A8 7D 0A 0C */	lha r3, 0xa0c(r29)
/* 8050BC44  38 03 FD 00 */	addi r0, r3, -768
/* 8050BC48  B0 1D 0A 0C */	sth r0, 0xa0c(r29)
/* 8050BC4C  48 00 00 0C */	b lbl_8050BC58
lbl_8050BC50:
/* 8050BC50  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050BC54  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
lbl_8050BC58:
/* 8050BC58  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8050BC5C  2C 00 00 00 */	cmpwi r0, 0
/* 8050BC60  41 81 00 1C */	bgt lbl_8050BC7C
/* 8050BC64  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 8050BC68  2C 00 00 00 */	cmpwi r0, 0
/* 8050BC6C  40 82 00 10 */	bne lbl_8050BC7C
/* 8050BC70  7F A3 EB 78 */	mr r3, r29
/* 8050BC74  4B FF F6 35 */	bl rd_disappear__FP10e_rd_class
/* 8050BC78  48 00 04 9C */	b lbl_8050C114
lbl_8050BC7C:
/* 8050BC7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050BC80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050BC84  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8050BC88  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8050BC8C  28 00 00 27 */	cmplwi r0, 0x27
/* 8050BC90  41 82 03 B4 */	beq lbl_8050C044
/* 8050BC94  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050BC98  2C 00 00 00 */	cmpwi r0, 0
/* 8050BC9C  40 82 03 A8 */	bne lbl_8050C044
/* 8050BCA0  38 00 C0 00 */	li r0, -16384
/* 8050BCA4  B0 1D 0A 0C */	sth r0, 0xa0c(r29)
/* 8050BCA8  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8050BCAC  38 00 FF E8 */	li r0, -24
/* 8050BCB0  7C 60 00 38 */	and r0, r3, r0
/* 8050BCB4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8050BCB8  38 00 00 14 */	li r0, 0x14
/* 8050BCBC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050BCC0  88 1D 0A 1F */	lbz r0, 0xa1f(r29)
/* 8050BCC4  7C 00 07 75 */	extsb. r0, r0
/* 8050BCC8  40 82 00 20 */	bne lbl_8050BCE8
/* 8050BCCC  7F A3 EB 78 */	mr r3, r29
/* 8050BCD0  38 80 00 11 */	li r4, 0x11
/* 8050BCD4  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050BCD8  38 A0 00 00 */	li r5, 0
/* 8050BCDC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BCE0  4B FF 8E F5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050BCE4  48 00 03 60 */	b lbl_8050C044
lbl_8050BCE8:
/* 8050BCE8  7F A3 EB 78 */	mr r3, r29
/* 8050BCEC  38 80 00 13 */	li r4, 0x13
/* 8050BCF0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050BCF4  38 A0 00 00 */	li r5, 0
/* 8050BCF8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BCFC  4B FF 8E D9 */	bl anm_init__FP10e_rd_classifUcf
/* 8050BD00  48 00 03 44 */	b lbl_8050C044
lbl_8050BD04:
/* 8050BD04  A8 1D 0A F0 */	lha r0, 0xaf0(r29)
/* 8050BD08  2C 00 00 00 */	cmpwi r0, 0
/* 8050BD0C  41 82 00 1C */	beq lbl_8050BD28
/* 8050BD10  38 7D 0A 0C */	addi r3, r29, 0xa0c
/* 8050BD14  38 80 00 00 */	li r4, 0
/* 8050BD18  38 A0 00 01 */	li r5, 1
/* 8050BD1C  38 C0 03 00 */	li r6, 0x300
/* 8050BD20  4B D6 48 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 8050BD24  48 00 03 20 */	b lbl_8050C044
lbl_8050BD28:
/* 8050BD28  38 7D 0A 0C */	addi r3, r29, 0xa0c
/* 8050BD2C  38 80 C0 00 */	li r4, -16384
/* 8050BD30  38 A0 00 01 */	li r5, 1
/* 8050BD34  38 C0 08 00 */	li r6, 0x800
/* 8050BD38  4B D6 48 D1 */	bl cLib_addCalcAngleS2__FPssss
/* 8050BD3C  80 1D 0B 70 */	lwz r0, 0xb70(r29)
/* 8050BD40  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8050BD44  41 82 03 00 */	beq lbl_8050C044
/* 8050BD48  38 00 00 02 */	li r0, 2
/* 8050BD4C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050BD50  88 1D 0A 1F */	lbz r0, 0xa1f(r29)
/* 8050BD54  7C 00 07 75 */	extsb. r0, r0
/* 8050BD58  40 82 00 2C */	bne lbl_8050BD84
/* 8050BD5C  7F A3 EB 78 */	mr r3, r29
/* 8050BD60  38 80 00 10 */	li r4, 0x10
/* 8050BD64  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050BD68  38 A0 00 00 */	li r5, 0
/* 8050BD6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BD70  4B FF 8E 65 */	bl anm_init__FP10e_rd_classifUcf
/* 8050BD74  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8050BD78  D0 1D 0A 24 */	stfs f0, 0xa24(r29)
/* 8050BD7C  D0 1D 0A 2C */	stfs f0, 0xa2c(r29)
/* 8050BD80  48 00 00 10 */	b lbl_8050BD90
lbl_8050BD84:
/* 8050BD84  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8050BD88  D0 1D 0A 24 */	stfs f0, 0xa24(r29)
/* 8050BD8C  D0 1D 0A 2C */	stfs f0, 0xa2c(r29)
lbl_8050BD90:
/* 8050BD90  38 00 B0 00 */	li r0, -20480
/* 8050BD94  B0 1D 0A 28 */	sth r0, 0xa28(r29)
/* 8050BD98  38 00 C0 00 */	li r0, -16384
/* 8050BD9C  B0 1D 0A 30 */	sth r0, 0xa30(r29)
/* 8050BDA0  C0 3D 09 EC */	lfs f1, 0x9ec(r29)
/* 8050BDA4  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8050BDA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8050BDAC  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 8050BDB0  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8050BDB4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8050BDB8  88 1D 0A 1F */	lbz r0, 0xa1f(r29)
/* 8050BDBC  7C 00 07 75 */	extsb. r0, r0
/* 8050BDC0  40 82 00 0C */	bne lbl_8050BDCC
/* 8050BDC4  A8 1D 0A 0E */	lha r0, 0xa0e(r29)
/* 8050BDC8  48 00 00 14 */	b lbl_8050BDDC
lbl_8050BDCC:
/* 8050BDCC  A8 7D 0A 0E */	lha r3, 0xa0e(r29)
/* 8050BDD0  3C 63 00 01 */	addis r3, r3, 1
/* 8050BDD4  38 03 80 00 */	addi r0, r3, -32768
/* 8050BDD8  7C 00 07 34 */	extsh r0, r0
lbl_8050BDDC:
/* 8050BDDC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8050BDE0  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8050BDE4  D0 1D 0A B8 */	stfs f0, 0xab8(r29)
/* 8050BDE8  48 00 02 5C */	b lbl_8050C044
lbl_8050BDEC:
/* 8050BDEC  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050BDF0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8050BDF4  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 8050BDF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050BDFC  4C 41 13 82 */	cror 2, 1, 2
/* 8050BE00  40 82 00 10 */	bne lbl_8050BE10
/* 8050BE04  38 00 00 00 */	li r0, 0
/* 8050BE08  B0 1D 0A 1C */	sth r0, 0xa1c(r29)
/* 8050BE0C  B0 1D 0A 18 */	sth r0, 0xa18(r29)
lbl_8050BE10:
/* 8050BE10  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050BE14  38 80 00 01 */	li r4, 1
/* 8050BE18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050BE1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050BE20  40 82 00 18 */	bne lbl_8050BE38
/* 8050BE24  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050BE28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050BE2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050BE30  41 82 00 08 */	beq lbl_8050BE38
/* 8050BE34  38 80 00 00 */	li r4, 0
lbl_8050BE38:
/* 8050BE38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050BE3C  41 82 02 08 */	beq lbl_8050C044
/* 8050BE40  38 00 00 00 */	li r0, 0
/* 8050BE44  B0 1D 0A 0E */	sth r0, 0xa0e(r29)
/* 8050BE48  B0 1D 0A 0C */	sth r0, 0xa0c(r29)
/* 8050BE4C  7F A3 EB 78 */	mr r3, r29
/* 8050BE50  38 80 00 40 */	li r4, 0x40
/* 8050BE54  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050BE58  38 A0 00 02 */	li r5, 2
/* 8050BE5C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BE60  4B FF 8D 75 */	bl anm_init__FP10e_rd_classifUcf
/* 8050BE64  38 00 00 05 */	li r0, 5
/* 8050BE68  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050BE6C  38 00 00 15 */	li r0, 0x15
/* 8050BE70  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050BE74  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8050BE78  38 00 FF E8 */	li r0, -24
/* 8050BE7C  7C 60 00 38 */	and r0, r3, r0
/* 8050BE80  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8050BE84  48 00 01 C0 */	b lbl_8050C044
lbl_8050BE88:
/* 8050BE88  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050BE8C  2C 00 00 00 */	cmpwi r0, 0
/* 8050BE90  40 82 01 B4 */	bne lbl_8050C044
/* 8050BE94  38 00 00 00 */	li r0, 0
/* 8050BE98  B0 1D 09 98 */	sth r0, 0x998(r29)
/* 8050BE9C  7F A3 EB 78 */	mr r3, r29
/* 8050BEA0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8050BEA4  38 80 60 00 */	li r4, 0x6000
/* 8050BEA8  4B FF A7 2D */	bl pl_check__FP10e_rd_classfs
/* 8050BEAC  2C 03 00 00 */	cmpwi r3, 0
/* 8050BEB0  41 82 00 14 */	beq lbl_8050BEC4
/* 8050BEB4  38 00 00 00 */	li r0, 0
/* 8050BEB8  B0 1D 09 72 */	sth r0, 0x972(r29)
/* 8050BEBC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050BEC0  48 00 01 84 */	b lbl_8050C044
lbl_8050BEC4:
/* 8050BEC4  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8050BEC8  4B D5 BA 8D */	bl cM_rndF__Ff
/* 8050BECC  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8050BED0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050BED4  FC 00 00 1E */	fctiwz f0, f0
/* 8050BED8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8050BEDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050BEE0  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050BEE4  7F A3 EB 78 */	mr r3, r29
/* 8050BEE8  38 80 00 1D */	li r4, 0x1d
/* 8050BEEC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050BEF0  38 A0 00 02 */	li r5, 2
/* 8050BEF4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BEF8  4B FF 8C DD */	bl anm_init__FP10e_rd_classifUcf
/* 8050BEFC  38 00 00 16 */	li r0, 0x16
/* 8050BF00  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050BF04  48 00 01 40 */	b lbl_8050C044
lbl_8050BF08:
/* 8050BF08  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050BF0C  2C 00 00 00 */	cmpwi r0, 0
/* 8050BF10  40 82 01 34 */	bne lbl_8050C044
/* 8050BF14  38 00 00 00 */	li r0, 0
/* 8050BF18  B0 1D 09 72 */	sth r0, 0x972(r29)
/* 8050BF1C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050BF20  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8050BF24  4B D5 BA 31 */	bl cM_rndF__Ff
/* 8050BF28  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8050BF2C  EC 00 08 2A */	fadds f0, f0, f1
/* 8050BF30  FC 00 00 1E */	fctiwz f0, f0
/* 8050BF34  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8050BF38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050BF3C  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050BF40  7F A3 EB 78 */	mr r3, r29
/* 8050BF44  38 80 00 1D */	li r4, 0x1d
/* 8050BF48  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050BF4C  38 A0 00 02 */	li r5, 2
/* 8050BF50  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BF54  4B FF 8C 81 */	bl anm_init__FP10e_rd_classifUcf
/* 8050BF58  48 00 00 EC */	b lbl_8050C044
lbl_8050BF5C:
/* 8050BF5C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8050BF60  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8050BF64  40 82 00 0C */	bne lbl_8050BF70
/* 8050BF68  38 00 00 00 */	li r0, 0
/* 8050BF6C  B0 1D 09 92 */	sth r0, 0x992(r29)
lbl_8050BF70:
/* 8050BF70  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050BF74  2C 00 00 00 */	cmpwi r0, 0
/* 8050BF78  40 82 00 58 */	bne lbl_8050BFD0
/* 8050BF7C  38 00 00 1F */	li r0, 0x1f
/* 8050BF80  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050BF84  88 1D 0A 1F */	lbz r0, 0xa1f(r29)
/* 8050BF88  7C 00 07 75 */	extsb. r0, r0
/* 8050BF8C  40 82 00 20 */	bne lbl_8050BFAC
/* 8050BF90  7F A3 EB 78 */	mr r3, r29
/* 8050BF94  38 80 00 11 */	li r4, 0x11
/* 8050BF98  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050BF9C  38 A0 00 00 */	li r5, 0
/* 8050BFA0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BFA4  4B FF 8C 31 */	bl anm_init__FP10e_rd_classifUcf
/* 8050BFA8  48 00 00 1C */	b lbl_8050BFC4
lbl_8050BFAC:
/* 8050BFAC  7F A3 EB 78 */	mr r3, r29
/* 8050BFB0  38 80 00 13 */	li r4, 0x13
/* 8050BFB4  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050BFB8  38 A0 00 00 */	li r5, 0
/* 8050BFBC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050BFC0  4B FF 8C 15 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050BFC4:
/* 8050BFC4  38 00 00 0A */	li r0, 0xa
/* 8050BFC8  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050BFCC  48 00 00 78 */	b lbl_8050C044
lbl_8050BFD0:
/* 8050BFD0  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 8050BFD4  2C 00 00 01 */	cmpwi r0, 1
/* 8050BFD8  40 82 00 6C */	bne lbl_8050C044
/* 8050BFDC  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8050BFE0  60 00 00 20 */	ori r0, r0, 0x20
/* 8050BFE4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8050BFE8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8050BFEC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8050BFF0  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8050BFF4  38 00 00 00 */	li r0, 0
/* 8050BFF8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8050BFFC  38 00 03 E8 */	li r0, 0x3e8
/* 8050C000  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050C004  38 00 00 23 */	li r0, 0x23
/* 8050C008  B0 1D 09 92 */	sth r0, 0x992(r29)
/* 8050C00C  38 00 00 03 */	li r0, 3
/* 8050C010  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050C014  48 00 00 30 */	b lbl_8050C044
lbl_8050C018:
/* 8050C018  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050C01C  2C 00 00 00 */	cmpwi r0, 0
/* 8050C020  40 82 00 24 */	bne lbl_8050C044
/* 8050C024  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8050C028  38 00 FF E8 */	li r0, -24
/* 8050C02C  7C 60 00 38 */	and r0, r3, r0
/* 8050C030  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8050C034  38 00 00 14 */	li r0, 0x14
/* 8050C038  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050C03C  38 00 00 00 */	li r0, 0
/* 8050C040  98 1D 0A FA */	stb r0, 0xafa(r29)
lbl_8050C044:
/* 8050C044  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8050C048  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050C04C  41 82 00 64 */	beq lbl_8050C0B0
/* 8050C050  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050C054  80 63 00 04 */	lwz r3, 4(r3)
/* 8050C058  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8050C05C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8050C060  38 63 02 10 */	addi r3, r3, 0x210
/* 8050C064  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8050C068  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8050C06C  80 84 00 00 */	lwz r4, 0(r4)
/* 8050C070  4B E3 A4 41 */	bl PSMTXCopy
/* 8050C074  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050C078  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8050C07C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8050C080  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8050C084  38 61 00 34 */	addi r3, r1, 0x34
/* 8050C088  38 81 00 28 */	addi r4, r1, 0x28
/* 8050C08C  4B D6 4E 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050C090  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8050C094  D0 1D 05 68 */	stfs f0, 0x568(r29)
/* 8050C098  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8050C09C  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 8050C0A0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8050C0A4  D0 1D 05 70 */	stfs f0, 0x570(r29)
/* 8050C0A8  38 00 00 00 */	li r0, 0
/* 8050C0AC  98 1D 09 AD */	stb r0, 0x9ad(r29)
lbl_8050C0B0:
/* 8050C0B0  A8 7D 0A DC */	lha r3, 0xadc(r29)
/* 8050C0B4  2C 03 00 00 */	cmpwi r3, 0
/* 8050C0B8  41 82 00 5C */	beq lbl_8050C114
/* 8050C0BC  38 03 FF FF */	addi r0, r3, -1
/* 8050C0C0  B0 1D 0A DC */	sth r0, 0xadc(r29)
/* 8050C0C4  A8 9D 0A DC */	lha r4, 0xadc(r29)
/* 8050C0C8  1C 04 38 00 */	mulli r0, r4, 0x3800
/* 8050C0CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8050C0D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8050C0D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8050C0D8  7C 63 04 2E */	lfsx f3, r3, r0
/* 8050C0DC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8050C0E0  C8 3E 00 68 */	lfd f1, 0x68(r30)
/* 8050C0E4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8050C0E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050C0EC  3C 00 43 30 */	lis r0, 0x4330
/* 8050C0F0  90 01 00 40 */	stw r0, 0x40(r1)
/* 8050C0F4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8050C0F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8050C0FC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8050C100  EC 02 00 32 */	fmuls f0, f2, f0
/* 8050C104  FC 00 00 1E */	fctiwz f0, f0
/* 8050C108  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8050C10C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8050C110  B0 1D 0A DA */	sth r0, 0xada(r29)
lbl_8050C114:
/* 8050C114  39 61 00 70 */	addi r11, r1, 0x70
/* 8050C118  4B E5 61 05 */	bl _restgpr_26
/* 8050C11C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8050C120  7C 08 03 A6 */	mtlr r0
/* 8050C124  38 21 00 70 */	addi r1, r1, 0x70
/* 8050C128  4E 80 00 20 */	blr 
