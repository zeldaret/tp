lbl_80CED258:
/* 80CED258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CED25C  7C 08 02 A6 */	mflr r0
/* 80CED260  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CED264  39 61 00 20 */	addi r11, r1, 0x20
/* 80CED268  4B 67 4F 74 */	b _savegpr_29
/* 80CED26C  7C 7F 1B 78 */	mr r31, r3
/* 80CED270  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CED274  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CED278  40 82 01 4C */	bne lbl_80CED3C4
/* 80CED27C  7F E0 FB 79 */	or. r0, r31, r31
/* 80CED280  41 82 01 38 */	beq lbl_80CED3B8
/* 80CED284  7C 1E 03 78 */	mr r30, r0
/* 80CED288  4B 38 B3 9C */	b __ct__16dBgS_MoveBgActorFv
/* 80CED28C  3C 60 80 CF */	lis r3, __vt__14daObjStopper_c@ha
/* 80CED290  38 03 F1 B4 */	addi r0, r3, __vt__14daObjStopper_c@l
/* 80CED294  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CED298  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80CED29C  7F A3 EB 78 */	mr r3, r29
/* 80CED2A0  4B 38 8E 00 */	b __ct__9dBgS_AcchFv
/* 80CED2A4  3C 60 80 CF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CED2A8  38 63 F1 90 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CED2AC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80CED2B0  38 03 00 0C */	addi r0, r3, 0xc
/* 80CED2B4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80CED2B8  38 03 00 18 */	addi r0, r3, 0x18
/* 80CED2BC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80CED2C0  38 7D 00 14 */	addi r3, r29, 0x14
/* 80CED2C4  4B 38 BB A4 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CED2C8  38 7E 07 84 */	addi r3, r30, 0x784
/* 80CED2CC  4B 38 8B E0 */	b __ct__12dBgS_AcchCirFv
/* 80CED2D0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CED2D4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CED2D8  90 1E 07 DC */	stw r0, 0x7dc(r30)
/* 80CED2DC  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80CED2E0  4B 39 64 80 */	b __ct__10dCcD_GSttsFv
/* 80CED2E4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CED2E8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CED2EC  90 7E 07 DC */	stw r3, 0x7dc(r30)
/* 80CED2F0  38 03 00 20 */	addi r0, r3, 0x20
/* 80CED2F4  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80CED2F8  3B BE 08 00 */	addi r29, r30, 0x800
/* 80CED2FC  7F A3 EB 78 */	mr r3, r29
/* 80CED300  4B 39 67 28 */	b __ct__12dCcD_GObjInfFv
/* 80CED304  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CED308  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CED30C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CED310  3C 60 80 CF */	lis r3, __vt__8cM3dGAab@ha
/* 80CED314  38 03 F1 84 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CED318  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80CED31C  3C 60 80 CF */	lis r3, __vt__8cM3dGCyl@ha
/* 80CED320  38 03 F1 78 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CED324  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CED328  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CED32C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CED330  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80CED334  38 03 00 58 */	addi r0, r3, 0x58
/* 80CED338  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CED33C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CED340  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CED344  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80CED348  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CED34C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CED350  38 03 00 84 */	addi r0, r3, 0x84
/* 80CED354  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CED358  38 7E 09 84 */	addi r3, r30, 0x984
/* 80CED35C  3C 80 80 CF */	lis r4, __defctor__19dPa_followEcallBackFv@ha
/* 80CED360  38 84 D4 C8 */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l
/* 80CED364  3C A0 80 CF */	lis r5, __dt__19dPa_followEcallBackFv@ha
/* 80CED368  38 A5 D4 40 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l
/* 80CED36C  38 C0 00 14 */	li r6, 0x14
/* 80CED370  38 E0 00 02 */	li r7, 2
/* 80CED374  4B 67 49 EC */	b __construct_array
/* 80CED378  38 7E 09 AC */	addi r3, r30, 0x9ac
/* 80CED37C  3C 80 80 CF */	lis r4, __defctor__19dPa_followEcallBackFv@ha
/* 80CED380  38 84 D4 C8 */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l
/* 80CED384  3C A0 80 CF */	lis r5, __dt__19dPa_followEcallBackFv@ha
/* 80CED388  38 A5 D4 40 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l
/* 80CED38C  38 C0 00 14 */	li r6, 0x14
/* 80CED390  38 E0 00 01 */	li r7, 1
/* 80CED394  4B 67 49 CC */	b __construct_array
/* 80CED398  38 7E 09 C0 */	addi r3, r30, 0x9c0
/* 80CED39C  3C 80 80 CF */	lis r4, __defctor__19dPa_followEcallBackFv@ha
/* 80CED3A0  38 84 D4 C8 */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l
/* 80CED3A4  3C A0 80 CF */	lis r5, __dt__19dPa_followEcallBackFv@ha
/* 80CED3A8  38 A5 D4 40 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l
/* 80CED3AC  38 C0 00 14 */	li r6, 0x14
/* 80CED3B0  38 E0 00 02 */	li r7, 2
/* 80CED3B4  4B 67 49 AC */	b __construct_array
lbl_80CED3B8:
/* 80CED3B8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CED3BC  60 00 00 08 */	ori r0, r0, 8
/* 80CED3C0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CED3C4:
/* 80CED3C4  88 1F 09 FC */	lbz r0, 0x9fc(r31)
/* 80CED3C8  28 00 00 00 */	cmplwi r0, 0
/* 80CED3CC  40 82 00 38 */	bne lbl_80CED404
/* 80CED3D0  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CED3D4  B0 1F 09 F8 */	sth r0, 0x9f8(r31)
/* 80CED3D8  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CED3DC  B0 1F 09 FA */	sth r0, 0x9fa(r31)
/* 80CED3E0  38 00 00 00 */	li r0, 0
/* 80CED3E4  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80CED3E8  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80CED3EC  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CED3F0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CED3F4  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CED3F8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CED3FC  38 00 00 01 */	li r0, 1
/* 80CED400  98 1F 09 FC */	stb r0, 0x9fc(r31)
lbl_80CED404:
/* 80CED404  7F E3 FB 78 */	mr r3, r31
/* 80CED408  38 80 00 00 */	li r4, 0
/* 80CED40C  38 A0 FF FF */	li r5, -1
/* 80CED410  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CED414  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CED418  38 E0 08 10 */	li r7, 0x810
/* 80CED41C  39 00 00 00 */	li r8, 0
/* 80CED420  4B 38 B3 9C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CED424  2C 03 00 05 */	cmpwi r3, 5
/* 80CED428  39 61 00 20 */	addi r11, r1, 0x20
/* 80CED42C  4B 67 4D FC */	b _restgpr_29
/* 80CED430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CED434  7C 08 03 A6 */	mtlr r0
/* 80CED438  38 21 00 20 */	addi r1, r1, 0x20
/* 80CED43C  4E 80 00 20 */	blr 
