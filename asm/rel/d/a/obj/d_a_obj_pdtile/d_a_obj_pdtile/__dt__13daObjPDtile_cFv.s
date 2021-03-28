lbl_80CAC374:
/* 80CAC374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC378  7C 08 02 A6 */	mflr r0
/* 80CAC37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAC384  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAC388  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CAC38C  7C 9F 23 78 */	mr r31, r4
/* 80CAC390  41 82 01 40 */	beq lbl_80CAC4D0
/* 80CAC394  3C 60 80 CB */	lis r3, __vt__13daObjPDtile_c@ha
/* 80CAC398  38 03 C7 3C */	addi r0, r3, __vt__13daObjPDtile_c@l
/* 80CAC39C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CAC3A0  34 1E 07 DC */	addic. r0, r30, 0x7dc
/* 80CAC3A4  41 82 00 1C */	beq lbl_80CAC3C0
/* 80CAC3A8  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 80CAC3AC  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 80CAC3B0  90 1E 07 EC */	stw r0, 0x7ec(r30)
/* 80CAC3B4  38 7E 07 DC */	addi r3, r30, 0x7dc
/* 80CAC3B8  38 80 00 00 */	li r4, 0
/* 80CAC3BC  4B 61 1B 8C */	b __dt__14Z2SoundObjBaseFv
lbl_80CAC3C0:
/* 80CAC3C0  34 1E 06 70 */	addic. r0, r30, 0x670
/* 80CAC3C4  41 82 00 84 */	beq lbl_80CAC448
/* 80CAC3C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CAC3CC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CAC3D0  90 7E 06 AC */	stw r3, 0x6ac(r30)
/* 80CAC3D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CAC3D8  90 1E 07 90 */	stw r0, 0x790(r30)
/* 80CAC3DC  38 03 00 84 */	addi r0, r3, 0x84
/* 80CAC3E0  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 80CAC3E4  34 1E 07 74 */	addic. r0, r30, 0x774
/* 80CAC3E8  41 82 00 54 */	beq lbl_80CAC43C
/* 80CAC3EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CAC3F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CAC3F4  90 7E 07 90 */	stw r3, 0x790(r30)
/* 80CAC3F8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CAC3FC  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 80CAC400  34 1E 07 94 */	addic. r0, r30, 0x794
/* 80CAC404  41 82 00 10 */	beq lbl_80CAC414
/* 80CAC408  3C 60 80 CB */	lis r3, __vt__8cM3dGCyl@ha
/* 80CAC40C  38 03 C6 F4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CAC410  90 1E 07 A8 */	stw r0, 0x7a8(r30)
lbl_80CAC414:
/* 80CAC414  34 1E 07 74 */	addic. r0, r30, 0x774
/* 80CAC418  41 82 00 24 */	beq lbl_80CAC43C
/* 80CAC41C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CAC420  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CAC424  90 1E 07 90 */	stw r0, 0x790(r30)
/* 80CAC428  34 1E 07 74 */	addic. r0, r30, 0x774
/* 80CAC42C  41 82 00 10 */	beq lbl_80CAC43C
/* 80CAC430  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha
/* 80CAC434  38 03 C7 00 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CAC438  90 1E 07 8C */	stw r0, 0x78c(r30)
lbl_80CAC43C:
/* 80CAC43C  38 7E 06 70 */	addi r3, r30, 0x670
/* 80CAC440  38 80 00 00 */	li r4, 0
/* 80CAC444  4B 3D 7C A0 */	b __dt__12dCcD_GObjInfFv
lbl_80CAC448:
/* 80CAC448  34 1E 06 34 */	addic. r0, r30, 0x634
/* 80CAC44C  41 82 00 54 */	beq lbl_80CAC4A0
/* 80CAC450  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CAC454  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CAC458  90 7E 06 4C */	stw r3, 0x64c(r30)
/* 80CAC45C  38 03 00 20 */	addi r0, r3, 0x20
/* 80CAC460  90 1E 06 50 */	stw r0, 0x650(r30)
/* 80CAC464  34 1E 06 50 */	addic. r0, r30, 0x650
/* 80CAC468  41 82 00 24 */	beq lbl_80CAC48C
/* 80CAC46C  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha
/* 80CAC470  38 03 C6 E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CAC474  90 1E 06 50 */	stw r0, 0x650(r30)
/* 80CAC478  34 1E 06 50 */	addic. r0, r30, 0x650
/* 80CAC47C  41 82 00 10 */	beq lbl_80CAC48C
/* 80CAC480  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha
/* 80CAC484  38 03 C6 DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CAC488  90 1E 06 50 */	stw r0, 0x650(r30)
lbl_80CAC48C:
/* 80CAC48C  34 1E 06 34 */	addic. r0, r30, 0x634
/* 80CAC490  41 82 00 10 */	beq lbl_80CAC4A0
/* 80CAC494  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CAC498  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CAC49C  90 1E 06 4C */	stw r0, 0x64c(r30)
lbl_80CAC4A0:
/* 80CAC4A0  28 1E 00 00 */	cmplwi r30, 0
/* 80CAC4A4  41 82 00 1C */	beq lbl_80CAC4C0
/* 80CAC4A8  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80CAC4AC  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80CAC4B0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CAC4B4  7F C3 F3 78 */	mr r3, r30
/* 80CAC4B8  38 80 00 00 */	li r4, 0
/* 80CAC4BC  4B 36 C7 D0 */	b __dt__10fopAc_ac_cFv
lbl_80CAC4C0:
/* 80CAC4C0  7F E0 07 35 */	extsh. r0, r31
/* 80CAC4C4  40 81 00 0C */	ble lbl_80CAC4D0
/* 80CAC4C8  7F C3 F3 78 */	mr r3, r30
/* 80CAC4CC  4B 62 28 70 */	b __dl__FPv
lbl_80CAC4D0:
/* 80CAC4D0  7F C3 F3 78 */	mr r3, r30
/* 80CAC4D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAC4D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAC4DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC4E0  7C 08 03 A6 */	mtlr r0
/* 80CAC4E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC4E8  4E 80 00 20 */	blr 
