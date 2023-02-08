lbl_8097A398:
/* 8097A398  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097A39C  7C 08 02 A6 */	mflr r0
/* 8097A3A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097A3A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8097A3A8  4B 9E 7E 35 */	bl _savegpr_29
/* 8097A3AC  7C 7F 1B 78 */	mr r31, r3
/* 8097A3B0  3B A0 00 26 */	li r29, 0x26
/* 8097A3B4  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 8097A3B8  83 C4 00 08 */	lwz r30, 8(r4)
/* 8097A3BC  38 80 00 0E */	li r4, 0xe
/* 8097A3C0  80 A3 0B 58 */	lwz r5, 0xb58(r3)
/* 8097A3C4  4B 7D DD 2D */	bl getAnmP__10daNpcCd2_cFii
/* 8097A3C8  7C 1E 18 40 */	cmplw r30, r3
/* 8097A3CC  41 82 00 44 */	beq lbl_8097A410
/* 8097A3D0  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097A3D4  83 C3 00 08 */	lwz r30, 8(r3)
/* 8097A3D8  7F E3 FB 78 */	mr r3, r31
/* 8097A3DC  38 80 00 0F */	li r4, 0xf
/* 8097A3E0  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097A3E4  4B 7D DD 0D */	bl getAnmP__10daNpcCd2_cFii
/* 8097A3E8  7C 1E 18 40 */	cmplw r30, r3
/* 8097A3EC  41 82 00 24 */	beq lbl_8097A410
/* 8097A3F0  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097A3F4  83 C3 00 08 */	lwz r30, 8(r3)
/* 8097A3F8  7F E3 FB 78 */	mr r3, r31
/* 8097A3FC  38 80 00 10 */	li r4, 0x10
/* 8097A400  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097A404  4B 7D DC ED */	bl getAnmP__10daNpcCd2_cFii
/* 8097A408  7C 1E 18 40 */	cmplw r30, r3
/* 8097A40C  40 82 00 0C */	bne lbl_8097A418
lbl_8097A410:
/* 8097A410  3B A0 00 27 */	li r29, 0x27
/* 8097A414  48 00 00 68 */	b lbl_8097A47C
lbl_8097A418:
/* 8097A418  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097A41C  83 C3 00 08 */	lwz r30, 8(r3)
/* 8097A420  7F E3 FB 78 */	mr r3, r31
/* 8097A424  38 80 00 11 */	li r4, 0x11
/* 8097A428  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097A42C  4B 7D DC C5 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A430  7C 1E 18 40 */	cmplw r30, r3
/* 8097A434  41 82 00 44 */	beq lbl_8097A478
/* 8097A438  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097A43C  83 C3 00 08 */	lwz r30, 8(r3)
/* 8097A440  7F E3 FB 78 */	mr r3, r31
/* 8097A444  38 80 00 12 */	li r4, 0x12
/* 8097A448  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097A44C  4B 7D DC A5 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A450  7C 1E 18 40 */	cmplw r30, r3
/* 8097A454  41 82 00 24 */	beq lbl_8097A478
/* 8097A458  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097A45C  83 C3 00 08 */	lwz r30, 8(r3)
/* 8097A460  7F E3 FB 78 */	mr r3, r31
/* 8097A464  38 80 00 13 */	li r4, 0x13
/* 8097A468  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097A46C  4B 7D DC 85 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A470  7C 1E 18 40 */	cmplw r30, r3
/* 8097A474  40 82 00 08 */	bne lbl_8097A47C
lbl_8097A478:
/* 8097A478  3B A0 00 28 */	li r29, 0x28
lbl_8097A47C:
/* 8097A47C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 8097A480  7F E3 FB 78 */	mr r3, r31
/* 8097A484  38 80 00 29 */	li r4, 0x29
/* 8097A488  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097A48C  4B 7D DC 65 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A490  7C 64 1B 78 */	mr r4, r3
/* 8097A494  7F E3 FB 78 */	mr r3, r31
/* 8097A498  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097A49C  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097A4A0  3C A0 80 98 */	lis r5, lit_4037@ha /* 0x8097F540@ha */
/* 8097A4A4  C0 45 F5 40 */	lfs f2, lit_4037@l(r5)  /* 0x8097F540@l */
/* 8097A4A8  38 A0 00 00 */	li r5, 0
/* 8097A4AC  38 C0 00 00 */	li r6, 0
/* 8097A4B0  38 E0 FF FF */	li r7, -1
/* 8097A4B4  4B 7D EA 4D */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097A4B8  7F E3 FB 78 */	mr r3, r31
/* 8097A4BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A4C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A4C4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8097A4C8  4B 6A 02 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8097A4CC  B0 7F 0B 92 */	sth r3, 0xb92(r31)
/* 8097A4D0  38 00 00 00 */	li r0, 0
/* 8097A4D4  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 8097A4D8  3C 60 80 98 */	lis r3, lit_4037@ha /* 0x8097F540@ha */
/* 8097A4DC  C0 03 F5 40 */	lfs f0, lit_4037@l(r3)  /* 0x8097F540@l */
/* 8097A4E0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8097A4E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A4E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A4EC  38 63 09 78 */	addi r3, r3, 0x978
/* 8097A4F0  38 80 00 3C */	li r4, 0x3c
/* 8097A4F4  4B 6B A6 A5 */	bl onSwitch__12dSv_danBit_cFi
/* 8097A4F8  38 00 00 00 */	li r0, 0
/* 8097A4FC  90 1F 0B 68 */	stw r0, 0xb68(r31)
/* 8097A500  39 61 00 20 */	addi r11, r1, 0x20
/* 8097A504  4B 9E 7D 25 */	bl _restgpr_29
/* 8097A508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097A50C  7C 08 03 A6 */	mtlr r0
/* 8097A510  38 21 00 20 */	addi r1, r1, 0x20
/* 8097A514  4E 80 00 20 */	blr 
