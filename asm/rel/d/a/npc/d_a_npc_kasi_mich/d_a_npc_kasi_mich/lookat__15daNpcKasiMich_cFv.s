lbl_80A27B50:
/* 80A27B50  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A27B54  7C 08 02 A6 */	mflr r0
/* 80A27B58  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A27B5C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A27B60  4B 93 A6 79 */	bl _savegpr_28
/* 80A27B64  7C 7C 1B 78 */	mr r28, r3
/* 80A27B68  3C 60 80 A3 */	lis r3, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A27B6C  38 83 A0 4C */	addi r4, r3, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A27B70  38 A0 00 00 */	li r5, 0
/* 80A27B74  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A27B78  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A27B7C  3B C0 00 00 */	li r30, 0
/* 80A27B80  38 64 00 00 */	addi r3, r4, 0
/* 80A27B84  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80A27B88  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80A27B8C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80A27B90  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80A27B94  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80A27B98  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80A27B9C  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80A27BA0  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80A27BA4  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80A27BA8  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80A27BAC  7C 03 00 50 */	subf r0, r3, r0
/* 80A27BB0  7C 1D 07 34 */	extsh r29, r0
/* 80A27BB4  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80A27BB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A27BBC  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80A27BC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A27BC4  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80A27BC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A27BCC  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80A27BD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A27BD4  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80A27BD8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A27BDC  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80A27BE0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A27BE4  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80A27BE8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A27BEC  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80A27BF0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A27BF4  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80A27BF8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A27BFC  80 64 02 0C */	lwz r3, 0x20c(r4)
/* 80A27C00  80 04 02 10 */	lwz r0, 0x210(r4)
/* 80A27C04  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A27C08  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A27C0C  80 04 02 14 */	lwz r0, 0x214(r4)
/* 80A27C10  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A27C14  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80A27C18  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A27C1C  38 1C 09 20 */	addi r0, r28, 0x920
/* 80A27C20  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A27C24  38 1C 09 26 */	addi r0, r28, 0x926
/* 80A27C28  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A27C2C  A8 1C 14 3C */	lha r0, 0x143c(r28)
/* 80A27C30  2C 00 00 01 */	cmpwi r0, 1
/* 80A27C34  41 82 00 18 */	beq lbl_80A27C4C
/* 80A27C38  40 80 00 08 */	bge lbl_80A27C40
/* 80A27C3C  48 00 00 34 */	b lbl_80A27C70
lbl_80A27C40:
/* 80A27C40  2C 00 00 04 */	cmpwi r0, 4
/* 80A27C44  40 80 00 2C */	bge lbl_80A27C70
/* 80A27C48  48 00 00 0C */	b lbl_80A27C54
lbl_80A27C4C:
/* 80A27C4C  3B C0 00 01 */	li r30, 1
/* 80A27C50  48 00 00 20 */	b lbl_80A27C70
lbl_80A27C54:
/* 80A27C54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A27C58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A27C5C  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80A27C60  2C 00 00 03 */	cmpwi r0, 3
/* 80A27C64  40 82 00 0C */	bne lbl_80A27C70
/* 80A27C68  C1 04 02 18 */	lfs f8, 0x218(r4)
/* 80A27C6C  C1 24 02 1C */	lfs f9, 0x21c(r4)
lbl_80A27C70:
/* 80A27C70  28 05 00 00 */	cmplwi r5, 0
/* 80A27C74  41 82 00 4C */	beq lbl_80A27CC0
/* 80A27C78  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80A27C7C  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80A27C80  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80A27C84  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80A27C88  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80A27C8C  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80A27C90  A8 1C 14 3C */	lha r0, 0x143c(r28)
/* 80A27C94  2C 00 00 02 */	cmpwi r0, 2
/* 80A27C98  41 82 00 1C */	beq lbl_80A27CB4
/* 80A27C9C  2C 00 00 03 */	cmpwi r0, 3
/* 80A27CA0  41 82 00 14 */	beq lbl_80A27CB4
/* 80A27CA4  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80A27CA8  C0 04 02 20 */	lfs f0, 0x220(r4)
/* 80A27CAC  EC 05 00 28 */	fsubs f0, f5, f0
/* 80A27CB0  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80A27CB4:
/* 80A27CB4  38 1C 08 78 */	addi r0, r28, 0x878
/* 80A27CB8  90 1C 0C 20 */	stw r0, 0xc20(r28)
/* 80A27CBC  48 00 00 0C */	b lbl_80A27CC8
lbl_80A27CC0:
/* 80A27CC0  38 00 00 00 */	li r0, 0
/* 80A27CC4  90 1C 0C 20 */	stw r0, 0xc20(r28)
lbl_80A27CC8:
/* 80A27CC8  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80A27CCC  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80A27CD0  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80A27CD4  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80A27CD8  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 80A27CDC  C0 A4 00 A4 */	lfs f5, 0xa4(r4)
/* 80A27CE0  FC C0 28 90 */	fmr f6, f5
/* 80A27CE4  FC E0 28 90 */	fmr f7, f5
/* 80A27CE8  FD 00 28 90 */	fmr f8, f5
/* 80A27CEC  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80A27CF0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A27CF4  4B 72 93 C5 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80A27CF8  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 80A27CFC  7F 84 E3 78 */	mr r4, r28
/* 80A27D00  38 BF 00 24 */	addi r5, r31, 0x24
/* 80A27D04  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A27D08  7F C7 F3 78 */	mr r7, r30
/* 80A27D0C  7F A8 EB 78 */	mr r8, r29
/* 80A27D10  39 20 00 00 */	li r9, 0
/* 80A27D14  4B 72 96 3D */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80A27D18  39 61 00 60 */	addi r11, r1, 0x60
/* 80A27D1C  4B 93 A5 09 */	bl _restgpr_28
/* 80A27D20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A27D24  7C 08 03 A6 */	mtlr r0
/* 80A27D28  38 21 00 60 */	addi r1, r1, 0x60
/* 80A27D2C  4E 80 00 20 */	blr 
