lbl_80A847C8:
/* 80A847C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A847CC  7C 08 02 A6 */	mflr r0
/* 80A847D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A847D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A847D8  4B 8D DA 05 */	bl _savegpr_29
/* 80A847DC  7C 7D 1B 78 */	mr r29, r3
/* 80A847E0  80 83 0D C0 */	lwz r4, 0xdc0(r3)
/* 80A847E4  80 03 0D C4 */	lwz r0, 0xdc4(r3)
/* 80A847E8  90 81 00 08 */	stw r4, 8(r1)
/* 80A847EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A847F0  80 03 0D C8 */	lwz r0, 0xdc8(r3)
/* 80A847F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A847F8  48 00 0E C5 */	bl selectAction__13daNpc_myna2_cFv
/* 80A847FC  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80A84800  38 81 00 08 */	addi r4, r1, 8
/* 80A84804  4B 8D D8 45 */	bl __ptmf_cmpr
/* 80A84808  2C 03 00 00 */	cmpwi r3, 0
/* 80A8480C  41 82 00 2C */	beq lbl_80A84838
/* 80A84810  3B C0 00 01 */	li r30, 1
/* 80A84814  3B E0 00 08 */	li r31, 8
/* 80A84818  48 00 00 18 */	b lbl_80A84830
lbl_80A8481C:
/* 80A8481C  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A84820  7C 7D 1A 14 */	add r3, r29, r3
/* 80A84824  4B 6C BE 8D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A84828  3B DE 00 01 */	addi r30, r30, 1
/* 80A8482C  3B FF 00 08 */	addi r31, r31, 8
lbl_80A84830:
/* 80A84830  2C 1E 00 01 */	cmpwi r30, 1
/* 80A84834  41 80 FF E8 */	blt lbl_80A8481C
lbl_80A84838:
/* 80A84838  38 00 00 00 */	li r0, 0
/* 80A8483C  90 1D 0D F4 */	stw r0, 0xdf4(r29)
/* 80A84840  90 1D 0D F8 */	stw r0, 0xdf8(r29)
/* 80A84844  38 00 00 51 */	li r0, 0x51
/* 80A84848  98 1D 05 44 */	stb r0, 0x544(r29)
/* 80A8484C  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80A84850  38 00 00 50 */	li r0, 0x50
/* 80A84854  98 1D 05 47 */	stb r0, 0x547(r29)
/* 80A84858  38 00 00 0A */	li r0, 0xa
/* 80A8485C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A84860  3C 60 80 A9 */	lis r3, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A84864  38 83 84 34 */	addi r4, r3, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A84868  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A8486C  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80A84870  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80A84874  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80A84878  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80A8487C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A84880  4B 5F 16 C1 */	bl SetWallR__12dBgS_AcchCirFf
/* 80A84884  3C 60 80 A9 */	lis r3, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A84888  38 63 84 34 */	addi r3, r3, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A8488C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A84890  D0 1D 08 14 */	stfs f0, 0x814(r29)
/* 80A84894  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A84898  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80A8489C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A848A0  4B 8D D9 89 */	bl _restgpr_29
/* 80A848A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A848A8  7C 08 03 A6 */	mtlr r0
/* 80A848AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A848B0  4E 80 00 20 */	blr 
