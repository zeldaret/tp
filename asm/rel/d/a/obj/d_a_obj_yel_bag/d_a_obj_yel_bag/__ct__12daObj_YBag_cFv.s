lbl_80D3C0EC:
/* 80D3C0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C0F0  7C 08 02 A6 */	mflr r0
/* 80D3C0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C0F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3C0FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3C100  7C 7F 1B 78 */	mr r31, r3
/* 80D3C104  4B 2D CA 60 */	b __ct__10fopAc_ac_cFv
/* 80D3C108  3C 60 80 D4 */	lis r3, __vt__12daObj_YBag_c@ha
/* 80D3C10C  38 03 DE 50 */	addi r0, r3, __vt__12daObj_YBag_c@l
/* 80D3C110  90 1F 0A 38 */	stw r0, 0xa38(r31)
/* 80D3C114  3B DF 05 88 */	addi r30, r31, 0x588
/* 80D3C118  7F C3 F3 78 */	mr r3, r30
/* 80D3C11C  4B 33 9F 84 */	b __ct__9dBgS_AcchFv
/* 80D3C120  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D3C124  38 63 DE 98 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D3C128  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80D3C12C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D3C130  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D3C134  38 03 00 18 */	addi r0, r3, 0x18
/* 80D3C138  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D3C13C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D3C140  4B 33 CD 28 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D3C144  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D3C148  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D3C14C  90 1F 07 78 */	stw r0, 0x778(r31)
/* 80D3C150  38 7F 07 7C */	addi r3, r31, 0x77c
/* 80D3C154  4B 34 76 0C */	b __ct__10dCcD_GSttsFv
/* 80D3C158  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D3C15C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D3C160  90 7F 07 78 */	stw r3, 0x778(r31)
/* 80D3C164  38 03 00 20 */	addi r0, r3, 0x20
/* 80D3C168  90 1F 07 7C */	stw r0, 0x77c(r31)
/* 80D3C16C  38 7F 07 9C */	addi r3, r31, 0x79c
/* 80D3C170  4B 33 9D 3C */	b __ct__12dBgS_AcchCirFv
/* 80D3C174  3B DF 07 DC */	addi r30, r31, 0x7dc
/* 80D3C178  7F C3 F3 78 */	mr r3, r30
/* 80D3C17C  4B 34 78 AC */	b __ct__12dCcD_GObjInfFv
/* 80D3C180  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D3C184  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D3C188  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D3C18C  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha
/* 80D3C190  38 03 DE 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D3C194  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D3C198  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D3C19C  38 03 DE 80 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D3C1A0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D3C1A4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D3C1A8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D3C1AC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D3C1B0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D3C1B4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D3C1B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D3C1BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D3C1C0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D3C1C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D3C1C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D3C1CC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D3C1D0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D3C1D4  38 7F 09 18 */	addi r3, r31, 0x918
/* 80D3C1D8  4B 52 BA 44 */	b __ct__11cBgS_GndChkFv
/* 80D3C1DC  38 7F 09 54 */	addi r3, r31, 0x954
/* 80D3C1E0  4B 33 BA 88 */	b __ct__11dBgS_LinChkFv
/* 80D3C1E4  7F E3 FB 78 */	mr r3, r31
/* 80D3C1E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3C1EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3C1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C1F4  7C 08 03 A6 */	mtlr r0
/* 80D3C1F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C1FC  4E 80 00 20 */	blr 
