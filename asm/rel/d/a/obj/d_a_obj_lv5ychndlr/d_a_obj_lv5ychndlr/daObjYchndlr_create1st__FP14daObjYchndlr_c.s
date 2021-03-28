lbl_80C6E404:
/* 80C6E404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E408  7C 08 02 A6 */	mflr r0
/* 80C6E40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6E414  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6E418  7C 7F 1B 78 */	mr r31, r3
/* 80C6E41C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C6E420  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C6E424  40 82 00 D4 */	bne lbl_80C6E4F8
/* 80C6E428  7F E0 FB 79 */	or. r0, r31, r31
/* 80C6E42C  41 82 00 C0 */	beq lbl_80C6E4EC
/* 80C6E430  7C 1E 03 78 */	mr r30, r0
/* 80C6E434  4B 40 A1 F0 */	b __ct__16dBgS_MoveBgActorFv
/* 80C6E438  3C 60 80 C7 */	lis r3, __vt__14daObjYchndlr_c@ha
/* 80C6E43C  38 03 EB 38 */	addi r0, r3, __vt__14daObjYchndlr_c@l
/* 80C6E440  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C6E444  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C6E448  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C6E44C  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 80C6E450  38 7E 06 40 */	addi r3, r30, 0x640
/* 80C6E454  4B 41 53 0C */	b __ct__10dCcD_GSttsFv
/* 80C6E458  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C6E45C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C6E460  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 80C6E464  38 03 00 20 */	addi r0, r3, 0x20
/* 80C6E468  90 1E 06 40 */	stw r0, 0x640(r30)
/* 80C6E46C  38 7E 06 60 */	addi r3, r30, 0x660
/* 80C6E470  3C 80 80 C7 */	lis r4, __ct__8dCcD_CylFv@ha
/* 80C6E474  38 84 E6 74 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80C6E478  3C A0 80 C7 */	lis r5, __dt__8dCcD_CylFv@ha
/* 80C6E47C  38 A5 E5 A8 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80C6E480  38 C0 01 3C */	li r6, 0x13c
/* 80C6E484  38 E0 00 04 */	li r7, 4
/* 80C6E488  4B 6F 38 D8 */	b __construct_array
/* 80C6E48C  3B DE 0B 50 */	addi r30, r30, 0xb50
/* 80C6E490  7F C3 F3 78 */	mr r3, r30
/* 80C6E494  4B 41 55 94 */	b __ct__12dCcD_GObjInfFv
/* 80C6E498  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C6E49C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C6E4A0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6E4A4  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha
/* 80C6E4A8  38 03 EB 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C6E4AC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C6E4B0  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C6E4B4  38 03 EB 20 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C6E4B8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6E4BC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C6E4C0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C6E4C4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C6E4C8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C6E4CC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6E4D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C6E4D4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C6E4D8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C6E4DC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C6E4E0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6E4E4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C6E4E8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C6E4EC:
/* 80C6E4EC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C6E4F0  60 00 00 08 */	ori r0, r0, 8
/* 80C6E4F4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C6E4F8:
/* 80C6E4F8  7F E3 FB 78 */	mr r3, r31
/* 80C6E4FC  4B FF F2 5D */	bl create1st__14daObjYchndlr_cFv
/* 80C6E500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6E504  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6E508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E50C  7C 08 03 A6 */	mtlr r0
/* 80C6E510  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E514  4E 80 00 20 */	blr 
