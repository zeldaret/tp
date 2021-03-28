lbl_80BDD2EC:
/* 80BDD2EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDD2F0  7C 08 02 A6 */	mflr r0
/* 80BDD2F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDD2F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDD2FC  4B 78 4E E0 */	b _savegpr_29
/* 80BDD300  7C 7F 1B 78 */	mr r31, r3
/* 80BDD304  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BDD308  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BDD30C  40 82 00 EC */	bne lbl_80BDD3F8
/* 80BDD310  7F E0 FB 79 */	or. r0, r31, r31
/* 80BDD314  41 82 00 D8 */	beq lbl_80BDD3EC
/* 80BDD318  7C 1E 03 78 */	mr r30, r0
/* 80BDD31C  4B 49 B3 08 */	b __ct__16dBgS_MoveBgActorFv
/* 80BDD320  3C 60 80 BE */	lis r3, __vt__14daObjDigSnow_c@ha
/* 80BDD324  38 03 D8 34 */	addi r0, r3, __vt__14daObjDigSnow_c@l
/* 80BDD328  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BDD32C  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80BDD330  7F A3 EB 78 */	mr r3, r29
/* 80BDD334  4B 49 8D 6C */	b __ct__9dBgS_AcchFv
/* 80BDD338  3C 60 80 BE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BDD33C  38 63 D7 E0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BDD340  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BDD344  38 03 00 0C */	addi r0, r3, 0xc
/* 80BDD348  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BDD34C  38 03 00 18 */	addi r0, r3, 0x18
/* 80BDD350  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BDD354  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BDD358  4B 49 BB 10 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BDD35C  38 7E 07 84 */	addi r3, r30, 0x784
/* 80BDD360  4B 49 8B 4C */	b __ct__12dBgS_AcchCirFv
/* 80BDD364  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BDD368  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BDD36C  90 1E 07 DC */	stw r0, 0x7dc(r30)
/* 80BDD370  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80BDD374  4B 4A 63 EC */	b __ct__10dCcD_GSttsFv
/* 80BDD378  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BDD37C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BDD380  90 7E 07 DC */	stw r3, 0x7dc(r30)
/* 80BDD384  38 03 00 20 */	addi r0, r3, 0x20
/* 80BDD388  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80BDD38C  3B BE 08 00 */	addi r29, r30, 0x800
/* 80BDD390  7F A3 EB 78 */	mr r3, r29
/* 80BDD394  4B 4A 66 94 */	b __ct__12dCcD_GObjInfFv
/* 80BDD398  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BDD39C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BDD3A0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BDD3A4  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha
/* 80BDD3A8  38 03 D7 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BDD3AC  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BDD3B0  3C 60 80 BE */	lis r3, __vt__8cM3dGCyl@ha
/* 80BDD3B4  38 03 D7 C8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BDD3B8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BDD3BC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BDD3C0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BDD3C4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BDD3C8  38 03 00 58 */	addi r0, r3, 0x58
/* 80BDD3CC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BDD3D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BDD3D4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BDD3D8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BDD3DC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BDD3E0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BDD3E4  38 03 00 84 */	addi r0, r3, 0x84
/* 80BDD3E8  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80BDD3EC:
/* 80BDD3EC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BDD3F0  60 00 00 08 */	ori r0, r0, 8
/* 80BDD3F4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BDD3F8:
/* 80BDD3F8  7F E3 FB 78 */	mr r3, r31
/* 80BDD3FC  4B FF F9 D9 */	bl create1st__14daObjDigSnow_cFv
/* 80BDD400  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDD404  4B 78 4E 24 */	b _restgpr_29
/* 80BDD408  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDD40C  7C 08 03 A6 */	mtlr r0
/* 80BDD410  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDD414  4E 80 00 20 */	blr 
