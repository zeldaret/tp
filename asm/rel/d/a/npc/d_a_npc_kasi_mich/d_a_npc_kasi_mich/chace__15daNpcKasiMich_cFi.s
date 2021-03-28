lbl_80A287A0:
/* 80A287A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A287A4  7C 08 02 A6 */	mflr r0
/* 80A287A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A287AC  39 61 00 50 */	addi r11, r1, 0x50
/* 80A287B0  4B 93 9A 2C */	b _savegpr_29
/* 80A287B4  7C 7D 1B 78 */	mr r29, r3
/* 80A287B8  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha
/* 80A287BC  3B C4 A0 4C */	addi r30, r4, m__21daNpcKasiMich_Param_c@l
/* 80A287C0  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A287C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A287C8  41 82 00 18 */	beq lbl_80A287E0
/* 80A287CC  40 80 00 08 */	bge lbl_80A287D4
/* 80A287D0  48 00 01 24 */	b lbl_80A288F4
lbl_80A287D4:
/* 80A287D4  2C 00 00 02 */	cmpwi r0, 2
/* 80A287D8  40 80 01 1C */	bge lbl_80A288F4
/* 80A287DC  48 00 00 54 */	b lbl_80A28830
lbl_80A287E0:
/* 80A287E0  38 80 00 08 */	li r4, 8
/* 80A287E4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80A287E8  38 A0 00 00 */	li r5, 0
/* 80A287EC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A287F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A287F4  7D 89 03 A6 */	mtctr r12
/* 80A287F8  4E 80 04 21 */	bctrl 
/* 80A287FC  7F A3 EB 78 */	mr r3, r29
/* 80A28800  38 80 00 00 */	li r4, 0
/* 80A28804  4B FF F3 29 */	bl setLookMode__15daNpcKasiMich_cFi
/* 80A28808  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80A2880C  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A28810  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A28814  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A28818  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 80A2881C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A28820  38 00 00 01 */	li r0, 1
/* 80A28824  98 1D 14 65 */	stb r0, 0x1465(r29)
/* 80A28828  B0 1D 14 04 */	sth r0, 0x1404(r29)
/* 80A2882C  48 00 00 C8 */	b lbl_80A288F4
lbl_80A28830:
/* 80A28830  38 61 00 20 */	addi r3, r1, 0x20
/* 80A28834  7F A4 EB 78 */	mr r4, r29
/* 80A28838  48 00 00 D9 */	bl getChacePos__15daNpcKasiMich_cFv
/* 80A2883C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A28840  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A28844  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A28848  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A2884C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A28850  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A28854  7F A3 EB 78 */	mr r3, r29
/* 80A28858  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A2885C  38 A0 08 00 */	li r5, 0x800
/* 80A28860  48 00 0C 45 */	bl _turn_pos__15daNpcKasiMich_cFRC4cXyzs
/* 80A28864  7F A3 EB 78 */	mr r3, r29
/* 80A28868  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A2886C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80A28870  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A28874  48 00 0C 8D */	bl actor_front_check__15daNpcKasiMich_cFP10fopAc_ac_c
/* 80A28878  2C 03 00 00 */	cmpwi r3, 0
/* 80A2887C  41 82 00 4C */	beq lbl_80A288C8
/* 80A28880  7F A3 EB 78 */	mr r3, r29
/* 80A28884  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A28888  4B 5F 20 DC */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2888C  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 80A28890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A28894  40 80 00 60 */	bge lbl_80A288F4
/* 80A28898  3C 60 80 A3 */	lis r3, lit_5043@ha
/* 80A2889C  38 83 A5 E8 */	addi r4, r3, lit_5043@l
/* 80A288A0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A288A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A288A8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A288AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A288B0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A288B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A288B8  7F A3 EB 78 */	mr r3, r29
/* 80A288BC  38 81 00 14 */	addi r4, r1, 0x14
/* 80A288C0  4B FF F1 C5 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
/* 80A288C4  48 00 00 30 */	b lbl_80A288F4
lbl_80A288C8:
/* 80A288C8  3C 60 80 A3 */	lis r3, lit_5046@ha
/* 80A288CC  38 83 A5 F4 */	addi r4, r3, lit_5046@l
/* 80A288D0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A288D4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A288D8  90 61 00 08 */	stw r3, 8(r1)
/* 80A288DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A288E0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A288E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A288E8  7F A3 EB 78 */	mr r3, r29
/* 80A288EC  38 81 00 08 */	addi r4, r1, 8
/* 80A288F0  4B FF F1 95 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
lbl_80A288F4:
/* 80A288F4  38 60 00 01 */	li r3, 1
/* 80A288F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A288FC  4B 93 99 2C */	b _restgpr_29
/* 80A28900  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A28904  7C 08 03 A6 */	mtlr r0
/* 80A28908  38 21 00 50 */	addi r1, r1, 0x50
/* 80A2890C  4E 80 00 20 */	blr 
