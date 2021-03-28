lbl_80BD0880:
/* 80BD0880  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD0884  7C 08 02 A6 */	mflr r0
/* 80BD0888  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD088C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD0890  4B 79 19 4C */	b _savegpr_29
/* 80BD0894  7C 7D 1B 78 */	mr r29, r3
/* 80BD0898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD089C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD08A0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80BD08A4  7C 00 07 74 */	extsb r0, r0
/* 80BD08A8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80BD08AC  7C 63 02 14 */	add r3, r3, r0
/* 80BD08B0  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 80BD08B4  4B 5B 0D 8C */	b dCam_getBody__Fv
/* 80BD08B8  7C 7E 1B 78 */	mr r30, r3
/* 80BD08BC  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80BD08C0  28 00 00 02 */	cmplwi r0, 2
/* 80BD08C4  41 82 00 20 */	beq lbl_80BD08E4
/* 80BD08C8  7F A3 EB 78 */	mr r3, r29
/* 80BD08CC  38 80 00 02 */	li r4, 2
/* 80BD08D0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80BD08D4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80BD08D8  38 C0 00 00 */	li r6, 0
/* 80BD08DC  4B 44 B0 2C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80BD08E0  48 00 00 80 */	b lbl_80BD0960
lbl_80BD08E4:
/* 80BD08E4  38 7F 02 48 */	addi r3, r31, 0x248
/* 80BD08E8  4B 59 0B E8 */	b Stop__9dCamera_cFv
/* 80BD08EC  38 00 00 00 */	li r0, 0
/* 80BD08F0  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 80BD08F4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80BD08F8  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 80BD08FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD0900  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 80BD0904  38 61 00 14 */	addi r3, r1, 0x14
/* 80BD0908  7F C4 F3 78 */	mr r4, r30
/* 80BD090C  4B 5B 15 8C */	b Center__9dCamera_cFv
/* 80BD0910  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BD0914  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 80BD0918  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BD091C  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 80BD0920  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BD0924  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 80BD0928  38 61 00 08 */	addi r3, r1, 8
/* 80BD092C  7F C4 F3 78 */	mr r4, r30
/* 80BD0930  4B 5B 15 34 */	b Eye__9dCamera_cFv
/* 80BD0934  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BD0938  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 80BD093C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BD0940  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80BD0944  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BD0948  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80BD094C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80BD0950  38 80 00 03 */	li r4, 3
/* 80BD0954  4B 59 26 B8 */	b SetTrimSize__9dCamera_cFl
/* 80BD0958  38 00 00 02 */	li r0, 2
/* 80BD095C  90 1D 05 A0 */	stw r0, 0x5a0(r29)
lbl_80BD0960:
/* 80BD0960  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD0964  4B 79 18 C4 */	b _restgpr_29
/* 80BD0968  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD096C  7C 08 03 A6 */	mtlr r0
/* 80BD0970  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD0974  4E 80 00 20 */	blr 
