lbl_80592468:
/* 80592468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059246C  7C 08 02 A6 */	mflr r0
/* 80592470  90 01 00 24 */	stw r0, 0x24(r1)
/* 80592474  39 61 00 20 */	addi r11, r1, 0x20
/* 80592478  4B DC FD 64 */	b _savegpr_29
/* 8059247C  7C 7F 1B 78 */	mr r31, r3
/* 80592480  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80592484  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80592488  40 82 00 EC */	bne lbl_80592574
/* 8059248C  7F E0 FB 79 */	or. r0, r31, r31
/* 80592490  41 82 00 D8 */	beq lbl_80592568
/* 80592494  7C 1E 03 78 */	mr r30, r0
/* 80592498  4B AE 61 8C */	b __ct__16dBgS_MoveBgActorFv
/* 8059249C  3C 60 80 59 */	lis r3, __vt__11daObjMarm_c@ha
/* 805924A0  38 03 2D 3C */	addi r0, r3, __vt__11daObjMarm_c@l
/* 805924A4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 805924A8  3B BE 06 64 */	addi r29, r30, 0x664
/* 805924AC  7F A3 EB 78 */	mr r3, r29
/* 805924B0  4B AE 3B F0 */	b __ct__9dBgS_AcchFv
/* 805924B4  3C 60 80 59 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805924B8  38 63 2C F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805924BC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 805924C0  38 03 00 0C */	addi r0, r3, 0xc
/* 805924C4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805924C8  38 03 00 18 */	addi r0, r3, 0x18
/* 805924CC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805924D0  38 7D 00 14 */	addi r3, r29, 0x14
/* 805924D4  4B AE 69 94 */	b SetObj__16dBgS_PolyPassChkFv
/* 805924D8  38 7E 08 3C */	addi r3, r30, 0x83c
/* 805924DC  4B AE 39 D0 */	b __ct__12dBgS_AcchCirFv
/* 805924E0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805924E4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805924E8  90 1E 08 94 */	stw r0, 0x894(r30)
/* 805924EC  38 7E 08 98 */	addi r3, r30, 0x898
/* 805924F0  4B AF 12 70 */	b __ct__10dCcD_GSttsFv
/* 805924F4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805924F8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805924FC  90 7E 08 94 */	stw r3, 0x894(r30)
/* 80592500  38 03 00 20 */	addi r0, r3, 0x20
/* 80592504  90 1E 08 98 */	stw r0, 0x898(r30)
/* 80592508  3B BE 08 B8 */	addi r29, r30, 0x8b8
/* 8059250C  7F A3 EB 78 */	mr r3, r29
/* 80592510  4B AF 15 18 */	b __ct__12dCcD_GObjInfFv
/* 80592514  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80592518  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8059251C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80592520  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha
/* 80592524  38 03 2C EC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80592528  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8059252C  3C 60 80 59 */	lis r3, __vt__8cM3dGCyl@ha
/* 80592530  38 03 2C E0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80592534  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80592538  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8059253C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80592540  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80592544  38 03 00 58 */	addi r0, r3, 0x58
/* 80592548  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8059254C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80592550  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80592554  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80592558  38 03 00 2C */	addi r0, r3, 0x2c
/* 8059255C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80592560  38 03 00 84 */	addi r0, r3, 0x84
/* 80592564  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80592568:
/* 80592568  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8059256C  60 00 00 08 */	ori r0, r0, 8
/* 80592570  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80592574:
/* 80592574  7F E3 FB 78 */	mr r3, r31
/* 80592578  4B FF DE E9 */	bl create1st__11daObjMarm_cFv
/* 8059257C  39 61 00 20 */	addi r11, r1, 0x20
/* 80592580  4B DC FC A8 */	b _restgpr_29
/* 80592584  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80592588  7C 08 03 A6 */	mtlr r0
/* 8059258C  38 21 00 20 */	addi r1, r1, 0x20
/* 80592590  4E 80 00 20 */	blr 
