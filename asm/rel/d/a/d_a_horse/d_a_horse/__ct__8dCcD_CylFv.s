lbl_80845194:
/* 80845194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80845198  7C 08 02 A6 */	mflr r0
/* 8084519C  90 01 00 14 */	stw r0, 0x14(r1)
/* 808451A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808451A4  7C 7F 1B 78 */	mr r31, r3
/* 808451A8  4B 83 E8 80 */	b __ct__12dCcD_GObjInfFv
/* 808451AC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 808451B0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 808451B4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 808451B8  3C 60 80 84 */	lis r3, __vt__8cM3dGAab@ha
/* 808451BC  38 03 5A E0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 808451C0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 808451C4  3C 60 80 84 */	lis r3, __vt__8cM3dGCyl@ha
/* 808451C8  38 03 5A D4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 808451CC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 808451D0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 808451D4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 808451D8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 808451DC  38 03 00 58 */	addi r0, r3, 0x58
/* 808451E0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 808451E4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 808451E8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 808451EC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 808451F0  38 03 00 2C */	addi r0, r3, 0x2c
/* 808451F4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 808451F8  38 03 00 84 */	addi r0, r3, 0x84
/* 808451FC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80845200  7F E3 FB 78 */	mr r3, r31
/* 80845204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80845208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084520C  7C 08 03 A6 */	mtlr r0
/* 80845210  38 21 00 10 */	addi r1, r1, 0x10
/* 80845214  4E 80 00 20 */	blr 
