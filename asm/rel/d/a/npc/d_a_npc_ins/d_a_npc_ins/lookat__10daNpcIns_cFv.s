lbl_80A131AC:
/* 80A131AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A131B0  7C 08 02 A6 */	mflr r0
/* 80A131B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A131B8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A131BC  4B 94 F0 1D */	bl _savegpr_28
/* 80A131C0  7C 7C 1B 78 */	mr r28, r3
/* 80A131C4  3C 60 80 A1 */	lis r3, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A131C8  38 83 3D AC */	addi r4, r3, l_insectParams@l /* 0x80A13DAC@l */
/* 80A131CC  38 A0 00 00 */	li r5, 0
/* 80A131D0  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A131D4  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A131D8  3B C0 00 00 */	li r30, 0
/* 80A131DC  38 64 00 C0 */	addi r3, r4, 0xc0
/* 80A131E0  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80A131E4  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80A131E8  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80A131EC  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80A131F0  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80A131F4  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80A131F8  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80A131FC  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80A13200  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80A13204  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80A13208  7C 03 00 50 */	subf r0, r3, r0
/* 80A1320C  7C 1D 07 34 */	extsh r29, r0
/* 80A13210  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80A13214  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A13218  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80A1321C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A13220  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80A13224  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A13228  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80A1322C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A13230  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80A13234  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A13238  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80A1323C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A13240  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80A13244  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A13248  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80A1324C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A13250  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80A13254  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A13258  80 64 03 60 */	lwz r3, 0x360(r4)
/* 80A1325C  80 04 03 64 */	lwz r0, 0x364(r4)
/* 80A13260  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A13264  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A13268  80 04 03 68 */	lwz r0, 0x368(r4)
/* 80A1326C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A13270  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80A13274  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A13278  38 1C 09 20 */	addi r0, r28, 0x920
/* 80A1327C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A13280  38 1C 09 26 */	addi r0, r28, 0x926
/* 80A13284  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A13288  A8 1C 0E 1A */	lha r0, 0xe1a(r28)
/* 80A1328C  2C 00 00 01 */	cmpwi r0, 1
/* 80A13290  41 82 00 18 */	beq lbl_80A132A8
/* 80A13294  40 80 00 08 */	bge lbl_80A1329C
/* 80A13298  48 00 00 34 */	b lbl_80A132CC
lbl_80A1329C:
/* 80A1329C  2C 00 00 04 */	cmpwi r0, 4
/* 80A132A0  40 80 00 2C */	bge lbl_80A132CC
/* 80A132A4  48 00 00 0C */	b lbl_80A132B0
lbl_80A132A8:
/* 80A132A8  3B C0 00 01 */	li r30, 1
/* 80A132AC  48 00 00 20 */	b lbl_80A132CC
lbl_80A132B0:
/* 80A132B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A132B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A132B8  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80A132BC  2C 00 00 03 */	cmpwi r0, 3
/* 80A132C0  40 82 00 0C */	bne lbl_80A132CC
/* 80A132C4  C1 04 03 AC */	lfs f8, 0x3ac(r4)
/* 80A132C8  C1 24 03 B0 */	lfs f9, 0x3b0(r4)
lbl_80A132CC:
/* 80A132CC  88 1C 0E 21 */	lbz r0, 0xe21(r28)
/* 80A132D0  28 00 00 00 */	cmplwi r0, 0
/* 80A132D4  40 82 00 08 */	bne lbl_80A132DC
/* 80A132D8  C0 E4 03 B4 */	lfs f7, 0x3b4(r4)
lbl_80A132DC:
/* 80A132DC  28 05 00 00 */	cmplwi r5, 0
/* 80A132E0  41 82 00 4C */	beq lbl_80A1332C
/* 80A132E4  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80A132E8  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80A132EC  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80A132F0  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80A132F4  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80A132F8  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80A132FC  A8 1C 0E 1A */	lha r0, 0xe1a(r28)
/* 80A13300  2C 00 00 02 */	cmpwi r0, 2
/* 80A13304  41 82 00 1C */	beq lbl_80A13320
/* 80A13308  2C 00 00 03 */	cmpwi r0, 3
/* 80A1330C  41 82 00 14 */	beq lbl_80A13320
/* 80A13310  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80A13314  C0 04 03 B8 */	lfs f0, 0x3b8(r4)
/* 80A13318  EC 05 00 28 */	fsubs f0, f5, f0
/* 80A1331C  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80A13320:
/* 80A13320  38 1C 08 78 */	addi r0, r28, 0x878
/* 80A13324  90 1C 0C 14 */	stw r0, 0xc14(r28)
/* 80A13328  48 00 00 0C */	b lbl_80A13334
lbl_80A1332C:
/* 80A1332C  38 00 00 00 */	li r0, 0
/* 80A13330  90 1C 0C 14 */	stw r0, 0xc14(r28)
lbl_80A13334:
/* 80A13334  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80A13338  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80A1333C  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80A13340  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80A13344  38 7C 0B E4 */	addi r3, r28, 0xbe4
/* 80A13348  C0 A4 01 44 */	lfs f5, 0x144(r4)
/* 80A1334C  FC C0 28 90 */	fmr f6, f5
/* 80A13350  FC E0 28 90 */	fmr f7, f5
/* 80A13354  FD 00 28 90 */	fmr f8, f5
/* 80A13358  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80A1335C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A13360  4B 73 DD 59 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80A13364  38 7C 0B E4 */	addi r3, r28, 0xbe4
/* 80A13368  7F 84 E3 78 */	mr r4, r28
/* 80A1336C  38 BF 00 24 */	addi r5, r31, 0x24
/* 80A13370  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A13374  7F C7 F3 78 */	mr r7, r30
/* 80A13378  7F A8 EB 78 */	mr r8, r29
/* 80A1337C  39 20 00 00 */	li r9, 0
/* 80A13380  4B 73 DF D1 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80A13384  39 61 00 60 */	addi r11, r1, 0x60
/* 80A13388  4B 94 EE 9D */	bl _restgpr_28
/* 80A1338C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A13390  7C 08 03 A6 */	mtlr r0
/* 80A13394  38 21 00 60 */	addi r1, r1, 0x60
/* 80A13398  4E 80 00 20 */	blr 
