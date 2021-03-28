lbl_80D2F5A0:
/* 80D2F5A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2F5A4  7C 08 02 A6 */	mflr r0
/* 80D2F5A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2F5AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2F5B0  4B 63 2C 2C */	b _savegpr_29
/* 80D2F5B4  7C 7F 1B 78 */	mr r31, r3
/* 80D2F5B8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D2F5BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D2F5C0  40 82 00 E8 */	bne lbl_80D2F6A8
/* 80D2F5C4  7F E0 FB 79 */	or. r0, r31, r31
/* 80D2F5C8  41 82 00 D4 */	beq lbl_80D2F69C
/* 80D2F5CC  7C 1E 03 78 */	mr r30, r0
/* 80D2F5D0  4B 2E 95 94 */	b __ct__10fopAc_ac_cFv
/* 80D2F5D4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D2F5D8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D2F5DC  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80D2F5E0  38 7E 05 90 */	addi r3, r30, 0x590
/* 80D2F5E4  4B 35 41 7C */	b __ct__10dCcD_GSttsFv
/* 80D2F5E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D2F5EC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D2F5F0  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 80D2F5F4  38 03 00 20 */	addi r0, r3, 0x20
/* 80D2F5F8  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80D2F5FC  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80D2F600  3C 80 80 D3 */	lis r4, __ct__8dCcD_TriFv@ha
/* 80D2F604  38 84 F8 50 */	addi r4, r4, __ct__8dCcD_TriFv@l
/* 80D2F608  3C A0 80 D3 */	lis r5, __dt__8dCcD_TriFv@ha
/* 80D2F60C  38 A5 F7 70 */	addi r5, r5, __dt__8dCcD_TriFv@l
/* 80D2F610  38 C0 01 5C */	li r6, 0x15c
/* 80D2F614  38 E0 00 02 */	li r7, 2
/* 80D2F618  4B 63 27 48 */	b __construct_array
/* 80D2F61C  3B BE 08 68 */	addi r29, r30, 0x868
/* 80D2F620  7F A3 EB 78 */	mr r3, r29
/* 80D2F624  4B 35 44 04 */	b __ct__12dCcD_GObjInfFv
/* 80D2F628  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D2F62C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D2F630  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D2F634  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D2F638  38 03 FE 40 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D2F63C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D2F640  3C 60 80 D3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D2F644  38 03 FE 34 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D2F648  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D2F64C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D2F650  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D2F654  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D2F658  38 03 00 58 */	addi r0, r3, 0x58
/* 80D2F65C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D2F660  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D2F664  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D2F668  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D2F66C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D2F670  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D2F674  38 03 00 84 */	addi r0, r3, 0x84
/* 80D2F678  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D2F67C  38 7E 09 A4 */	addi r3, r30, 0x9a4
/* 80D2F680  3C 80 80 D3 */	lis r4, __ct__4cXyzFv@ha
/* 80D2F684  38 84 F6 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80D2F688  3C A0 80 D3 */	lis r5, __dt__4cXyzFv@ha
/* 80D2F68C  38 A5 EF F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80D2F690  38 C0 00 0C */	li r6, 0xc
/* 80D2F694  38 E0 00 02 */	li r7, 2
/* 80D2F698  4B 63 26 C8 */	b __construct_array
lbl_80D2F69C:
/* 80D2F69C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D2F6A0  60 00 00 08 */	ori r0, r0, 8
/* 80D2F6A4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D2F6A8:
/* 80D2F6A8  7F E3 FB 78 */	mr r3, r31
/* 80D2F6AC  4B FF FC F1 */	bl Create__16daObjWaterFall_cFv
/* 80D2F6B0  2C 03 00 00 */	cmpwi r3, 0
/* 80D2F6B4  40 82 00 0C */	bne lbl_80D2F6C0
/* 80D2F6B8  38 60 00 05 */	li r3, 5
/* 80D2F6BC  48 00 00 08 */	b lbl_80D2F6C4
lbl_80D2F6C0:
/* 80D2F6C0  38 60 00 04 */	li r3, 4
lbl_80D2F6C4:
/* 80D2F6C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2F6C8  4B 63 2B 60 */	b _restgpr_29
/* 80D2F6CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2F6D0  7C 08 03 A6 */	mtlr r0
/* 80D2F6D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2F6D8  4E 80 00 20 */	blr 
