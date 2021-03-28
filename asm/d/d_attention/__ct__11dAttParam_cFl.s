lbl_80070038:
/* 80070038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007003C  7C 08 02 A6 */	mflr r0
/* 80070040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80070044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80070048  7C 7F 1B 78 */	mr r31, r3
/* 8007004C  3C 60 80 3B */	lis r3, __vt__11dAttParam_c@ha
/* 80070050  38 03 9C 60 */	addi r0, r3, __vt__11dAttParam_c@l
/* 80070054  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80070058  C0 02 8C 28 */	lfs f0, lit_4061(r2)
/* 8007005C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80070060  C0 02 8C 2C */	lfs f0, lit_4062(r2)
/* 80070064  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80070068  C0 02 8C 30 */	lfs f0, lit_4063(r2)
/* 8007006C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80070070  38 00 00 01 */	li r0, 1
/* 80070074  B0 1F 00 00 */	sth r0, 0(r31)
/* 80070078  C0 02 8C 34 */	lfs f0, lit_4064(r2)
/* 8007007C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80070080  C0 02 8C 38 */	lfs f0, lit_4065(r2)
/* 80070084  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80070088  C0 02 8C 3C */	lfs f0, lit_4066(r2)
/* 8007008C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80070090  C0 02 8C 40 */	lfs f0, lit_4067(r2)
/* 80070094  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80070098  C0 02 8C 44 */	lfs f0, lit_4068(r2)
/* 8007009C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 800700A0  C0 02 8C 48 */	lfs f0, lit_4069(r2)
/* 800700A4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 800700A8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 800700AC  C0 02 8C 4C */	lfs f0, lit_4070(r2)
/* 800700B0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 800700B4  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 800700B8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 800700BC  98 1F 00 34 */	stb r0, 0x34(r31)
/* 800700C0  98 1F 00 35 */	stb r0, 0x35(r31)
/* 800700C4  C0 02 8C 54 */	lfs f0, lit_4072(r2)
/* 800700C8  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 800700CC  C0 02 8C 58 */	lfs f0, lit_4073(r2)
/* 800700D0  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 800700D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800700D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800700DC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 800700E0  3C 80 80 38 */	lis r4, d_d_attention__stringBase0@ha
/* 800700E4  38 84 A7 70 */	addi r4, r4, d_d_attention__stringBase0@l
/* 800700E8  48 2F 88 AD */	bl strcmp
/* 800700EC  7C 60 00 34 */	cntlzw r0, r3
/* 800700F0  54 00 D9 7E */	srwi r0, r0, 5
/* 800700F4  98 0D 89 D8 */	stb r0, data_80450F58(r13)
/* 800700F8  7F E3 FB 78 */	mr r3, r31
/* 800700FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80070100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80070104  7C 08 03 A6 */	mtlr r0
/* 80070108  38 21 00 10 */	addi r1, r1, 0x10
/* 8007010C  4E 80 00 20 */	blr 
