lbl_80BC92B0:
/* 80BC92B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC92B4  7C 08 02 A6 */	mflr r0
/* 80BC92B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC92BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC92C0  4B 79 8F 1C */	b _savegpr_29
/* 80BC92C4  7C 7F 1B 78 */	mr r31, r3
/* 80BC92C8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC92CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC92D0  40 82 00 AC */	bne lbl_80BC937C
/* 80BC92D4  7F E0 FB 79 */	or. r0, r31, r31
/* 80BC92D8  41 82 00 98 */	beq lbl_80BC9370
/* 80BC92DC  7C 1E 03 78 */	mr r30, r0
/* 80BC92E0  4B 4A F3 44 */	b __ct__16dBgS_MoveBgActorFv
/* 80BC92E4  3C 60 80 BD */	lis r3, __vt__12daObjChest_c@ha
/* 80BC92E8  38 03 A1 D4 */	addi r0, r3, __vt__12daObjChest_c@l
/* 80BC92EC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BC92F0  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80BC92F4  7F A3 EB 78 */	mr r3, r29
/* 80BC92F8  4B 4A CD A8 */	b __ct__9dBgS_AcchFv
/* 80BC92FC  3C 60 80 BD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BC9300  38 63 A1 B0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BC9304  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BC9308  38 03 00 0C */	addi r0, r3, 0xc
/* 80BC930C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BC9310  38 03 00 18 */	addi r0, r3, 0x18
/* 80BC9314  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BC9318  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BC931C  4B 4A FB 4C */	b SetObj__16dBgS_PolyPassChkFv
/* 80BC9320  38 7E 07 84 */	addi r3, r30, 0x784
/* 80BC9324  4B 4A CB 88 */	b __ct__12dBgS_AcchCirFv
/* 80BC9328  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BC932C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BC9330  90 1E 07 DC */	stw r0, 0x7dc(r30)
/* 80BC9334  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80BC9338  4B 4B A4 28 */	b __ct__10dCcD_GSttsFv
/* 80BC933C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BC9340  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BC9344  90 7E 07 DC */	stw r3, 0x7dc(r30)
/* 80BC9348  38 03 00 20 */	addi r0, r3, 0x20
/* 80BC934C  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80BC9350  38 7E 08 00 */	addi r3, r30, 0x800
/* 80BC9354  3C 80 80 BD */	lis r4, __ct__8dCcD_CylFv@ha
/* 80BC9358  38 84 94 BC */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80BC935C  3C A0 80 BD */	lis r5, __dt__8dCcD_CylFv@ha
/* 80BC9360  38 A5 93 F0 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80BC9364  38 C0 01 3C */	li r6, 0x13c
/* 80BC9368  38 E0 00 02 */	li r7, 2
/* 80BC936C  4B 79 89 F4 */	b __construct_array
lbl_80BC9370:
/* 80BC9370  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BC9374  60 00 00 08 */	ori r0, r0, 8
/* 80BC9378  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BC937C:
/* 80BC937C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BC9380  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BC9384  38 84 A0 D8 */	addi r4, r4, l_arcName@l
/* 80BC9388  80 84 00 00 */	lwz r4, 0(r4)
/* 80BC938C  4B 46 3B 30 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BC9390  7C 60 1B 78 */	mr r0, r3
/* 80BC9394  2C 00 00 04 */	cmpwi r0, 4
/* 80BC9398  40 82 00 3C */	bne lbl_80BC93D4
/* 80BC939C  7F E3 FB 78 */	mr r3, r31
/* 80BC93A0  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BC93A4  38 84 A0 D8 */	addi r4, r4, l_arcName@l
/* 80BC93A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80BC93AC  38 A0 00 07 */	li r5, 7
/* 80BC93B0  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BC93B4  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BC93B8  38 E0 0C 00 */	li r7, 0xc00
/* 80BC93BC  39 00 00 00 */	li r8, 0
/* 80BC93C0  4B 4A F3 FC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BC93C4  7C 60 1B 78 */	mr r0, r3
/* 80BC93C8  2C 00 00 05 */	cmpwi r0, 5
/* 80BC93CC  40 82 00 08 */	bne lbl_80BC93D4
/* 80BC93D0  48 00 00 08 */	b lbl_80BC93D8
lbl_80BC93D4:
/* 80BC93D4  7C 03 03 78 */	mr r3, r0
lbl_80BC93D8:
/* 80BC93D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC93DC  4B 79 8E 4C */	b _restgpr_29
/* 80BC93E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC93E4  7C 08 03 A6 */	mtlr r0
/* 80BC93E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC93EC  4E 80 00 20 */	blr 
