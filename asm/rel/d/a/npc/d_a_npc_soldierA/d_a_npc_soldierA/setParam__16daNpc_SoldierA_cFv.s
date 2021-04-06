lbl_80AF017C:
/* 80AF017C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF0180  7C 08 02 A6 */	mflr r0
/* 80AF0184  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF0188  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF018C  4B 87 20 4D */	bl _savegpr_28
/* 80AF0190  7C 7C 1B 78 */	mr r28, r3
/* 80AF0194  80 83 0D D0 */	lwz r4, 0xdd0(r3)
/* 80AF0198  80 03 0D D4 */	lwz r0, 0xdd4(r3)
/* 80AF019C  90 81 00 08 */	stw r4, 8(r1)
/* 80AF01A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF01A4  80 03 0D D8 */	lwz r0, 0xdd8(r3)
/* 80AF01A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF01AC  3B C0 00 0A */	li r30, 0xa
/* 80AF01B0  48 00 0E 75 */	bl selectAction__16daNpc_SoldierA_cFv
/* 80AF01B4  38 7C 0D D0 */	addi r3, r28, 0xdd0
/* 80AF01B8  38 81 00 08 */	addi r4, r1, 8
/* 80AF01BC  4B 87 1E 8D */	bl __ptmf_cmpr
/* 80AF01C0  2C 03 00 00 */	cmpwi r3, 0
/* 80AF01C4  41 82 00 2C */	beq lbl_80AF01F0
/* 80AF01C8  3B A0 00 03 */	li r29, 3
/* 80AF01CC  3B E0 00 18 */	li r31, 0x18
/* 80AF01D0  48 00 00 18 */	b lbl_80AF01E8
lbl_80AF01D4:
/* 80AF01D4  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF01D8  7C 7C 1A 14 */	add r3, r28, r3
/* 80AF01DC  4B 66 04 D5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AF01E0  3B BD 00 01 */	addi r29, r29, 1
/* 80AF01E4  3B FF 00 08 */	addi r31, r31, 8
lbl_80AF01E8:
/* 80AF01E8  2C 1D 00 03 */	cmpwi r29, 3
/* 80AF01EC  41 80 FF E8 */	blt lbl_80AF01D4
lbl_80AF01F0:
/* 80AF01F0  38 00 00 00 */	li r0, 0
/* 80AF01F4  90 1C 0E 00 */	stw r0, 0xe00(r28)
/* 80AF01F8  90 1C 0E 04 */	stw r0, 0xe04(r28)
/* 80AF01FC  88 1C 0E 18 */	lbz r0, 0xe18(r28)
/* 80AF0200  28 00 00 01 */	cmplwi r0, 1
/* 80AF0204  41 82 00 0C */	beq lbl_80AF0210
/* 80AF0208  28 00 00 02 */	cmplwi r0, 2
/* 80AF020C  40 82 00 08 */	bne lbl_80AF0214
lbl_80AF0210:
/* 80AF0210  3B C0 00 00 */	li r30, 0
lbl_80AF0214:
/* 80AF0214  7F 83 E3 78 */	mr r3, r28
/* 80AF0218  38 80 00 05 */	li r4, 5
/* 80AF021C  38 A0 00 06 */	li r5, 6
/* 80AF0220  4B 66 40 59 */	bl getDistTableIdx__8daNpcF_cFii
/* 80AF0224  98 7C 05 44 */	stb r3, 0x544(r28)
/* 80AF0228  88 1C 05 44 */	lbz r0, 0x544(r28)
/* 80AF022C  98 1C 05 45 */	stb r0, 0x545(r28)
/* 80AF0230  7F 83 E3 78 */	mr r3, r28
/* 80AF0234  38 80 00 03 */	li r4, 3
/* 80AF0238  38 A0 00 06 */	li r5, 6
/* 80AF023C  4B 66 40 3D */	bl getDistTableIdx__8daNpcF_cFii
/* 80AF0240  98 7C 05 47 */	stb r3, 0x547(r28)
/* 80AF0244  93 DC 05 5C */	stw r30, 0x55c(r28)
/* 80AF0248  3C 60 80 AF */	lis r3, m__22daNpc_SoldierA_Param_c@ha /* 0x80AF26E8@ha */
/* 80AF024C  38 83 26 E8 */	addi r4, r3, m__22daNpc_SoldierA_Param_c@l /* 0x80AF26E8@l */
/* 80AF0250  C0 04 00 08 */	lfs f0, 8(r4)
/* 80AF0254  D0 1C 04 EC */	stfs f0, 0x4ec(r28)
/* 80AF0258  D0 1C 04 F0 */	stfs f0, 0x4f0(r28)
/* 80AF025C  D0 1C 04 F4 */	stfs f0, 0x4f4(r28)
/* 80AF0260  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 80AF0264  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AF0268  4B 58 5C D9 */	bl SetWallR__12dBgS_AcchCirFf
/* 80AF026C  3C 60 80 AF */	lis r3, m__22daNpc_SoldierA_Param_c@ha /* 0x80AF26E8@ha */
/* 80AF0270  38 83 26 E8 */	addi r4, r3, m__22daNpc_SoldierA_Param_c@l /* 0x80AF26E8@l */
/* 80AF0274  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80AF0278  D0 1C 08 14 */	stfs f0, 0x814(r28)
/* 80AF027C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF0280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF0284  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AF0288  28 00 00 00 */	cmplwi r0, 0
/* 80AF028C  40 82 00 0C */	bne lbl_80AF0298
/* 80AF0290  C0 04 00 04 */	lfs f0, 4(r4)
/* 80AF0294  D0 1C 05 30 */	stfs f0, 0x530(r28)
lbl_80AF0298:
/* 80AF0298  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF029C  4B 87 1F 89 */	bl _restgpr_28
/* 80AF02A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF02A4  7C 08 03 A6 */	mtlr r0
/* 80AF02A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF02AC  4E 80 00 20 */	blr 
