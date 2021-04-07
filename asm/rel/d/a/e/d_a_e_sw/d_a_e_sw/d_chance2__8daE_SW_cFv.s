lbl_807AE7F4:
/* 807AE7F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807AE7F8  7C 08 02 A6 */	mflr r0
/* 807AE7FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807AE800  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807AE804  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807AE808  7C 7F 1B 78 */	mr r31, r3
/* 807AE80C  3C 80 80 7B */	lis r4, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AE810  3B C4 FD 2C */	addi r30, r4, lit_3909@l /* 0x807AFD2C@l */
/* 807AE814  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807AE818  2C 00 00 01 */	cmpwi r0, 1
/* 807AE81C  41 82 00 74 */	beq lbl_807AE890
/* 807AE820  40 80 01 30 */	bge lbl_807AE950
/* 807AE824  2C 00 00 00 */	cmpwi r0, 0
/* 807AE828  40 80 00 08 */	bge lbl_807AE830
/* 807AE82C  48 00 01 24 */	b lbl_807AE950
lbl_807AE830:
/* 807AE830  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807AE834  38 04 FD FF */	addi r0, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 807AE838  90 1F 09 B4 */	stw r0, 0x9b4(r31)
/* 807AE83C  38 80 00 09 */	li r4, 9
/* 807AE840  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 807AE844  38 A0 00 02 */	li r5, 2
/* 807AE848  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AE84C  4B FF 8C 15 */	bl bckSet__8daE_SW_cFifUcf
/* 807AE850  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807AE854  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807AE858  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 807AE85C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807AE860  7F E3 FB 78 */	mr r3, r31
/* 807AE864  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AE868  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AE86C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807AE870  4B 86 BE A1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807AE874  3C 63 00 01 */	addis r3, r3, 1
/* 807AE878  38 03 80 00 */	addi r0, r3, -32768
/* 807AE87C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807AE880  A8 7F 06 80 */	lha r3, 0x680(r31)
/* 807AE884  38 03 00 01 */	addi r0, r3, 1
/* 807AE888  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807AE88C  48 00 00 C4 */	b lbl_807AE950
lbl_807AE890:
/* 807AE890  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AE894  38 63 00 0C */	addi r3, r3, 0xc
/* 807AE898  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807AE89C  4B B7 9B 91 */	bl checkPass__12J3DFrameCtrlFf
/* 807AE8A0  2C 03 00 00 */	cmpwi r3, 0
/* 807AE8A4  40 82 00 1C */	bne lbl_807AE8C0
/* 807AE8A8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AE8AC  38 63 00 0C */	addi r3, r3, 0xc
/* 807AE8B0  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 807AE8B4  4B B7 9B 79 */	bl checkPass__12J3DFrameCtrlFf
/* 807AE8B8  2C 03 00 00 */	cmpwi r3, 0
/* 807AE8BC  41 82 00 30 */	beq lbl_807AE8EC
lbl_807AE8C0:
/* 807AE8C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035C@ha */
/* 807AE8C4  38 03 03 5C */	addi r0, r3, 0x035C /* 0x0007035C@l */
/* 807AE8C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807AE8CC  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807AE8D0  38 81 00 0C */	addi r4, r1, 0xc
/* 807AE8D4  88 BF 06 E9 */	lbz r5, 0x6e9(r31)
/* 807AE8D8  38 C0 FF FF */	li r6, -1
/* 807AE8DC  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807AE8E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AE8E4  7D 89 03 A6 */	mtctr r12
/* 807AE8E8  4E 80 04 21 */	bctrl 
lbl_807AE8EC:
/* 807AE8EC  80 1F 07 A4 */	lwz r0, 0x7a4(r31)
/* 807AE8F0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AE8F4  41 82 00 5C */	beq lbl_807AE950
/* 807AE8F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035C@ha */
/* 807AE8FC  38 03 03 5C */	addi r0, r3, 0x035C /* 0x0007035C@l */
/* 807AE900  90 01 00 08 */	stw r0, 8(r1)
/* 807AE904  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807AE908  38 81 00 08 */	addi r4, r1, 8
/* 807AE90C  88 BF 06 E9 */	lbz r5, 0x6e9(r31)
/* 807AE910  38 C0 FF FF */	li r6, -1
/* 807AE914  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807AE918  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AE91C  7D 89 03 A6 */	mtctr r12
/* 807AE920  4E 80 04 21 */	bctrl 
/* 807AE924  3C 60 80 7B */	lis r3, lit_6929@ha /* 0x807B00FC@ha */
/* 807AE928  38 83 00 FC */	addi r4, r3, lit_6929@l /* 0x807B00FC@l */
/* 807AE92C  80 64 00 00 */	lwz r3, 0(r4)
/* 807AE930  80 04 00 04 */	lwz r0, 4(r4)
/* 807AE934  90 61 00 10 */	stw r3, 0x10(r1)
/* 807AE938  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AE93C  80 04 00 08 */	lwz r0, 8(r4)
/* 807AE940  90 01 00 18 */	stw r0, 0x18(r1)
/* 807AE944  7F E3 FB 78 */	mr r3, r31
/* 807AE948  38 81 00 10 */	addi r4, r1, 0x10
/* 807AE94C  4B FF E0 F5 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
lbl_807AE950:
/* 807AE950  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807AE954  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807AE958  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807AE95C  7C 08 03 A6 */	mtlr r0
/* 807AE960  38 21 00 30 */	addi r1, r1, 0x30
/* 807AE964  4E 80 00 20 */	blr 
