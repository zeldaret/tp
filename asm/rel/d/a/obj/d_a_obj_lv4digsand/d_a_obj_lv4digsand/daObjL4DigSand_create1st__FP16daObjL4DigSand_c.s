lbl_80C671DC:
/* 80C671DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C671E0  7C 08 02 A6 */	mflr r0
/* 80C671E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C671E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C671EC  4B 6F AF F1 */	bl _savegpr_29
/* 80C671F0  7C 7F 1B 78 */	mr r31, r3
/* 80C671F4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C671F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C671FC  40 82 00 EC */	bne lbl_80C672E8
/* 80C67200  7F E0 FB 79 */	or. r0, r31, r31
/* 80C67204  41 82 00 D8 */	beq lbl_80C672DC
/* 80C67208  7C 1E 03 78 */	mr r30, r0
/* 80C6720C  4B 41 14 19 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C67210  3C 60 80 C6 */	lis r3, __vt__16daObjL4DigSand_c@ha /* 0x80C67738@ha */
/* 80C67214  38 03 77 38 */	addi r0, r3, __vt__16daObjL4DigSand_c@l /* 0x80C67738@l */
/* 80C67218  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C6721C  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80C67220  7F A3 EB 78 */	mr r3, r29
/* 80C67224  4B 40 EE 7D */	bl __ct__9dBgS_AcchFv
/* 80C67228  3C 60 80 C6 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C676E4@ha */
/* 80C6722C  38 63 76 E4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C676E4@l */
/* 80C67230  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C67234  38 03 00 0C */	addi r0, r3, 0xc
/* 80C67238  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C6723C  38 03 00 18 */	addi r0, r3, 0x18
/* 80C67240  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C67244  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C67248  4B 41 1C 21 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C6724C  38 7E 07 84 */	addi r3, r30, 0x784
/* 80C67250  4B 40 EC 5D */	bl __ct__12dBgS_AcchCirFv
/* 80C67254  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C67258  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C6725C  90 1E 07 DC */	stw r0, 0x7dc(r30)
/* 80C67260  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80C67264  4B 41 C4 FD */	bl __ct__10dCcD_GSttsFv
/* 80C67268  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C6726C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C67270  90 7E 07 DC */	stw r3, 0x7dc(r30)
/* 80C67274  38 03 00 20 */	addi r0, r3, 0x20
/* 80C67278  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80C6727C  3B BE 08 00 */	addi r29, r30, 0x800
/* 80C67280  7F A3 EB 78 */	mr r3, r29
/* 80C67284  4B 41 C7 A5 */	bl __ct__12dCcD_GObjInfFv
/* 80C67288  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C6728C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C67290  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C67294  3C 60 80 C6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C676D8@ha */
/* 80C67298  38 03 76 D8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C676D8@l */
/* 80C6729C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C672A0  3C 60 80 C6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C676CC@ha */
/* 80C672A4  38 03 76 CC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C676CC@l */
/* 80C672A8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C672AC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C672B0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C672B4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C672B8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C672BC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C672C0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C672C4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C672C8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C672CC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C672D0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C672D4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C672D8  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80C672DC:
/* 80C672DC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C672E0  60 00 00 08 */	ori r0, r0, 8
/* 80C672E4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C672E8:
/* 80C672E8  7F E3 FB 78 */	mr r3, r31
/* 80C672EC  4B FF F9 A9 */	bl create1st__16daObjL4DigSand_cFv
/* 80C672F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C672F4  4B 6F AF 35 */	bl _restgpr_29
/* 80C672F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C672FC  7C 08 03 A6 */	mtlr r0
/* 80C67300  38 21 00 20 */	addi r1, r1, 0x20
/* 80C67304  4E 80 00 20 */	blr 
