lbl_80C1C1A8:
/* 80C1C1A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1C1AC  7C 08 02 A6 */	mflr r0
/* 80C1C1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1C1B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1C1B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1C1BC  7C 7F 1B 78 */	mr r31, r3
/* 80C1C1C0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C1C1C4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C1C1C8  40 82 00 D4 */	bne lbl_80C1C29C
/* 80C1C1CC  7F E0 FB 79 */	or. r0, r31, r31
/* 80C1C1D0  41 82 00 C0 */	beq lbl_80C1C290
/* 80C1C1D4  7C 1E 03 78 */	mr r30, r0
/* 80C1C1D8  4B 45 C4 4C */	b __ct__16dBgS_MoveBgActorFv
/* 80C1C1DC  3C 60 80 C2 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C1C1E0  38 03 C9 84 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C1C1E4  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C1C1E8  93 DE 05 AC */	stw r30, 0x5ac(r30)
/* 80C1C1EC  38 00 00 00 */	li r0, 0
/* 80C1C1F0  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80C1C1F4  3C 60 80 C2 */	lis r3, __vt__16daObjHBombkoya_c@ha
/* 80C1C1F8  38 63 C9 A8 */	addi r3, r3, __vt__16daObjHBombkoya_c@l
/* 80C1C1FC  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C1C200  38 03 00 28 */	addi r0, r3, 0x28
/* 80C1C204  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C1C208  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C1C20C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C1C210  90 1E 06 60 */	stw r0, 0x660(r30)
/* 80C1C214  38 7E 06 64 */	addi r3, r30, 0x664
/* 80C1C218  4B 46 75 48 */	b __ct__10dCcD_GSttsFv
/* 80C1C21C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C1C220  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C1C224  90 7E 06 60 */	stw r3, 0x660(r30)
/* 80C1C228  38 03 00 20 */	addi r0, r3, 0x20
/* 80C1C22C  90 1E 06 64 */	stw r0, 0x664(r30)
/* 80C1C230  3B DE 06 84 */	addi r30, r30, 0x684
/* 80C1C234  7F C3 F3 78 */	mr r3, r30
/* 80C1C238  4B 46 77 F0 */	b __ct__12dCcD_GObjInfFv
/* 80C1C23C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C1C240  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C1C244  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C1C248  3C 60 80 C2 */	lis r3, __vt__8cM3dGAab@ha
/* 80C1C24C  38 03 C9 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C1C250  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C1C254  3C 60 80 C2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C1C258  38 03 C9 78 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C1C25C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C1C260  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C1C264  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C1C268  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C1C26C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C1C270  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C1C274  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C1C278  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C1C27C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C1C280  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C1C284  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C1C288  38 03 00 84 */	addi r0, r3, 0x84
/* 80C1C28C  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C1C290:
/* 80C1C290  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C1C294  60 00 00 08 */	ori r0, r0, 8
/* 80C1C298  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C1C29C:
/* 80C1C29C  7F E3 FB 78 */	mr r3, r31
/* 80C1C2A0  4B FF F5 D9 */	bl create1st__16daObjHBombkoya_cFv
/* 80C1C2A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1C2A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1C2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1C2B0  7C 08 03 A6 */	mtlr r0
/* 80C1C2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1C2B8  4E 80 00 20 */	blr 
