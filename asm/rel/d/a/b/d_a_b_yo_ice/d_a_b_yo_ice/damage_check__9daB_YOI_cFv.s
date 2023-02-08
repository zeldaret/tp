lbl_8063A2E4:
/* 8063A2E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063A2E8  7C 08 02 A6 */	mflr r0
/* 8063A2EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063A2F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8063A2F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8063A2F8  7C 7E 1B 78 */	mr r30, r3
/* 8063A2FC  3C 60 80 64 */	lis r3, lit_3776@ha /* 0x8063DC84@ha */
/* 8063A300  3B E3 DC 84 */	addi r31, r3, lit_3776@l /* 0x8063DC84@l */
/* 8063A304  38 7E 07 38 */	addi r3, r30, 0x738
/* 8063A308  4B A4 95 29 */	bl Move__10dCcD_GSttsFv
/* 8063A30C  A0 1E 06 A0 */	lhz r0, 0x6a0(r30)
/* 8063A310  28 00 00 00 */	cmplwi r0, 0
/* 8063A314  40 82 00 74 */	bne lbl_8063A388
/* 8063A318  38 00 00 00 */	li r0, 0
/* 8063A31C  90 1E 0B 0C */	stw r0, 0xb0c(r30)
/* 8063A320  38 7E 07 58 */	addi r3, r30, 0x758
/* 8063A324  4B A4 A1 3D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8063A328  28 03 00 00 */	cmplwi r3, 0
/* 8063A32C  41 82 00 5C */	beq lbl_8063A388
/* 8063A330  38 7E 07 58 */	addi r3, r30, 0x758
/* 8063A334  4B A4 A1 C5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8063A338  90 7E 0B 0C */	stw r3, 0xb0c(r30)
/* 8063A33C  80 7E 0B 0C */	lwz r3, 0xb0c(r30)
/* 8063A340  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8063A344  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8063A348  41 82 00 10 */	beq lbl_8063A358
/* 8063A34C  38 00 00 14 */	li r0, 0x14
/* 8063A350  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 8063A354  48 00 00 0C */	b lbl_8063A360
lbl_8063A358:
/* 8063A358  38 00 00 0A */	li r0, 0xa
/* 8063A35C  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_8063A360:
/* 8063A360  A0 1E 0B 28 */	lhz r0, 0xb28(r30)
/* 8063A364  28 00 00 01 */	cmplwi r0, 1
/* 8063A368  41 81 00 0C */	bgt lbl_8063A374
/* 8063A36C  38 00 00 0A */	li r0, 0xa
/* 8063A370  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_8063A374:
/* 8063A374  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 8063A378  80 9E 0B 0C */	lwz r4, 0xb0c(r30)
/* 8063A37C  38 A0 00 2A */	li r5, 0x2a
/* 8063A380  7F C6 F3 78 */	mr r6, r30
/* 8063A384  4B A4 D1 91 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_8063A388:
/* 8063A388  38 7E 08 94 */	addi r3, r30, 0x894
/* 8063A38C  4B A4 A0 D5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8063A390  28 03 00 00 */	cmplwi r3, 0
/* 8063A394  41 82 00 D4 */	beq lbl_8063A468
/* 8063A398  4B B4 72 A9 */	bl dCam_getBody__Fv
/* 8063A39C  7F C4 F3 78 */	mr r4, r30
/* 8063A3A0  4B B4 71 95 */	bl ForceLockOn__9dCamera_cFP10fopAc_ac_c
/* 8063A3A4  7F C3 F3 78 */	mr r3, r30
/* 8063A3A8  48 00 02 91 */	bl setBreakIceEffect__9daB_YOI_cFv
/* 8063A3AC  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 8063A3B0  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8063A3B4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8063A3B8  4B FF 58 35 */	bl onIceBreak__8daB_YO_cFUs
/* 8063A3BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FC@ha */
/* 8063A3C0  38 03 02 FC */	addi r0, r3, 0x02FC /* 0x000702FC@l */
/* 8063A3C4  90 01 00 08 */	stw r0, 8(r1)
/* 8063A3C8  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063A3CC  38 81 00 08 */	addi r4, r1, 8
/* 8063A3D0  38 A0 00 00 */	li r5, 0
/* 8063A3D4  38 C0 FF FF */	li r6, -1
/* 8063A3D8  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063A3DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063A3E0  7D 89 03 A6 */	mtctr r12
/* 8063A3E4  4E 80 04 21 */	bctrl 
/* 8063A3E8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8063A3EC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8063A3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063A3F4  4C 40 13 82 */	cror 2, 0, 2
/* 8063A3F8  40 82 00 10 */	bne lbl_8063A408
/* 8063A3FC  7F C3 F3 78 */	mr r3, r30
/* 8063A400  4B 9D F8 7D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8063A404  48 00 00 0C */	b lbl_8063A410
lbl_8063A408:
/* 8063A408  38 00 00 0F */	li r0, 0xf
/* 8063A40C  98 1E 06 AE */	stb r0, 0x6ae(r30)
lbl_8063A410:
/* 8063A410  4B C2 D4 5D */	bl cM_rnd__Fv
/* 8063A414  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8063A418  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063A41C  40 80 00 4C */	bge lbl_8063A468
/* 8063A420  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8063A424  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8063A428  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8063A42C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8063A430  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8063A434  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8063A438  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8063A43C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063A440  40 80 00 08 */	bge lbl_8063A448
/* 8063A444  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8063A448:
/* 8063A448  38 61 00 0C */	addi r3, r1, 0xc
/* 8063A44C  38 80 00 00 */	li r4, 0
/* 8063A450  38 A0 FF FF */	li r5, -1
/* 8063A454  38 C0 FF FF */	li r6, -1
/* 8063A458  38 E0 00 00 */	li r7, 0
/* 8063A45C  39 00 00 00 */	li r8, 0
/* 8063A460  39 20 00 00 */	li r9, 0
/* 8063A464  4B 9E 1D DD */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
lbl_8063A468:
/* 8063A468  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8063A46C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8063A470  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063A474  7C 08 03 A6 */	mtlr r0
/* 8063A478  38 21 00 20 */	addi r1, r1, 0x20
/* 8063A47C  4E 80 00 20 */	blr 
