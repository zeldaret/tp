lbl_80C61514:
/* 80C61514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C61518  7C 08 02 A6 */	mflr r0
/* 80C6151C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C61520  39 61 00 20 */	addi r11, r1, 0x20
/* 80C61524  4B 70 0C B8 */	b _savegpr_29
/* 80C61528  7C 7F 1B 78 */	mr r31, r3
/* 80C6152C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C61530  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C61534  40 82 01 0C */	bne lbl_80C61640
/* 80C61538  7F E0 FB 79 */	or. r0, r31, r31
/* 80C6153C  41 82 00 F8 */	beq lbl_80C61634
/* 80C61540  7C 1E 03 78 */	mr r30, r0
/* 80C61544  4B 41 70 E0 */	b __ct__16dBgS_MoveBgActorFv
/* 80C61548  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C6154C  38 03 1C D8 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C61550  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80C61554  93 DE 05 A4 */	stw r30, 0x5a4(r30)
/* 80C61558  38 00 00 00 */	li r0, 0
/* 80C6155C  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C61560  3C 60 80 C6 */	lis r3, __vt__14daObjLv4Wall_c@ha
/* 80C61564  38 63 1C F0 */	addi r3, r3, __vt__14daObjLv4Wall_c@l
/* 80C61568  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C6156C  38 03 00 28 */	addi r0, r3, 0x28
/* 80C61570  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80C61574  3B BE 05 BC */	addi r29, r30, 0x5bc
/* 80C61578  7F A3 EB 78 */	mr r3, r29
/* 80C6157C  4B 41 4B 24 */	b __ct__9dBgS_AcchFv
/* 80C61580  3C 60 80 C6 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C61584  38 63 1C B4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C61588  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C6158C  38 03 00 0C */	addi r0, r3, 0xc
/* 80C61590  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C61594  38 03 00 18 */	addi r0, r3, 0x18
/* 80C61598  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C6159C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C615A0  4B 41 78 C8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C615A4  38 7E 07 94 */	addi r3, r30, 0x794
/* 80C615A8  4B 41 49 04 */	b __ct__12dBgS_AcchCirFv
/* 80C615AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C615B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C615B4  90 1E 07 EC */	stw r0, 0x7ec(r30)
/* 80C615B8  38 7E 07 F0 */	addi r3, r30, 0x7f0
/* 80C615BC  4B 42 21 A4 */	b __ct__10dCcD_GSttsFv
/* 80C615C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C615C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C615C8  90 7E 07 EC */	stw r3, 0x7ec(r30)
/* 80C615CC  38 03 00 20 */	addi r0, r3, 0x20
/* 80C615D0  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80C615D4  3B BE 08 10 */	addi r29, r30, 0x810
/* 80C615D8  7F A3 EB 78 */	mr r3, r29
/* 80C615DC  4B 42 24 4C */	b __ct__12dCcD_GObjInfFv
/* 80C615E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C615E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C615E8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C615EC  3C 60 80 C6 */	lis r3, __vt__8cM3dGAab@ha
/* 80C615F0  38 03 1C A8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C615F4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C615F8  3C 60 80 C6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C615FC  38 03 1C 9C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C61600  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C61604  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C61608  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C6160C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C61610  38 03 00 58 */	addi r0, r3, 0x58
/* 80C61614  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C61618  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C6161C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C61620  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C61624  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C61628  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C6162C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C61630  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80C61634:
/* 80C61634  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C61638  60 00 00 08 */	ori r0, r0, 8
/* 80C6163C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C61640:
/* 80C61640  7F E3 FB 78 */	mr r3, r31
/* 80C61644  4B FF F6 FD */	bl create1st__14daObjLv4Wall_cFv
/* 80C61648  39 61 00 20 */	addi r11, r1, 0x20
/* 80C6164C  4B 70 0B DC */	b _restgpr_29
/* 80C61650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C61654  7C 08 03 A6 */	mtlr r0
/* 80C61658  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6165C  4E 80 00 20 */	blr 
