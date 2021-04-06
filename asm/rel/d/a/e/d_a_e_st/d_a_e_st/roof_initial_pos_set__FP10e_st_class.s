lbl_807A578C:
/* 807A578C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807A5790  7C 08 02 A6 */	mflr r0
/* 807A5794  90 01 00 94 */	stw r0, 0x94(r1)
/* 807A5798  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 807A579C  7C 7F 1B 78 */	mr r31, r3
/* 807A57A0  38 61 00 14 */	addi r3, r1, 0x14
/* 807A57A4  4B 8D 24 C5 */	bl __ct__11dBgS_LinChkFv
/* 807A57A8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807A57AC  3C 60 80 7A */	lis r3, lit_5037@ha /* 0x807A68D8@ha */
/* 807A57B0  C0 03 68 D8 */	lfs f0, lit_5037@l(r3)  /* 0x807A68D8@l */
/* 807A57B4  EC 01 00 2A */	fadds f0, f1, f0
/* 807A57B8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807A57BC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807A57C0  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 807A57C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807A57C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 807A57CC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807A57D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A57D4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807A57D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A57DC  3C 60 80 7A */	lis r3, lit_6838@ha /* 0x807A69C8@ha */
/* 807A57E0  C0 03 69 C8 */	lfs f0, lit_6838@l(r3)  /* 0x807A69C8@l */
/* 807A57E4  EC 01 00 2A */	fadds f0, f1, f0
/* 807A57E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A57EC  38 61 00 14 */	addi r3, r1, 0x14
/* 807A57F0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807A57F4  38 A1 00 08 */	addi r5, r1, 8
/* 807A57F8  38 C0 00 00 */	li r6, 0
/* 807A57FC  4B 8D 25 69 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807A5800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A5804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A5808  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807A580C  38 81 00 14 */	addi r4, r1, 0x14
/* 807A5810  4B 8C EB A5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807A5814  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A5818  41 82 00 30 */	beq lbl_807A5848
/* 807A581C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807A5820  D0 1F 07 44 */	stfs f0, 0x744(r31)
/* 807A5824  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807A5828  D0 1F 07 48 */	stfs f0, 0x748(r31)
/* 807A582C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807A5830  D0 1F 07 4C */	stfs f0, 0x74c(r31)
/* 807A5834  38 61 00 14 */	addi r3, r1, 0x14
/* 807A5838  38 80 FF FF */	li r4, -1
/* 807A583C  4B 8D 24 A1 */	bl __dt__11dBgS_LinChkFv
/* 807A5840  38 60 00 01 */	li r3, 1
/* 807A5844  48 00 00 14 */	b lbl_807A5858
lbl_807A5848:
/* 807A5848  38 61 00 14 */	addi r3, r1, 0x14
/* 807A584C  38 80 FF FF */	li r4, -1
/* 807A5850  4B 8D 24 8D */	bl __dt__11dBgS_LinChkFv
/* 807A5854  38 60 00 00 */	li r3, 0
lbl_807A5858:
/* 807A5858  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 807A585C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807A5860  7C 08 03 A6 */	mtlr r0
/* 807A5864  38 21 00 90 */	addi r1, r1, 0x90
/* 807A5868  4E 80 00 20 */	blr 
