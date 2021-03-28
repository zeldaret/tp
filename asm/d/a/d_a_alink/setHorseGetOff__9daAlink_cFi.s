lbl_800EF884:
/* 800EF884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EF888  7C 08 02 A6 */	mflr r0
/* 800EF88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EF890  39 61 00 20 */	addi r11, r1, 0x20
/* 800EF894  48 27 29 49 */	bl _savegpr_29
/* 800EF898  7C 7D 1B 78 */	mr r29, r3
/* 800EF89C  7C 9E 23 78 */	mr r30, r4
/* 800EF8A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800EF8A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800EF8A8  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800EF8AC  88 04 5E 24 */	lbz r0, 0x5e24(r4)
/* 800EF8B0  28 00 00 32 */	cmplwi r0, 0x32
/* 800EF8B4  40 82 00 8C */	bne lbl_800EF940
/* 800EF8B8  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800EF8BC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EF8C0  41 82 00 80 */	beq lbl_800EF940
/* 800EF8C4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800EF8C8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EF8CC  7D 89 03 A6 */	mtctr r12
/* 800EF8D0  4E 80 04 21 */	bctrl 
/* 800EF8D4  28 03 00 00 */	cmplwi r3, 0
/* 800EF8D8  41 82 00 10 */	beq lbl_800EF8E8
/* 800EF8DC  80 1F 17 48 */	lwz r0, 0x1748(r31)
/* 800EF8E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800EF8E4  40 82 00 14 */	bne lbl_800EF8F8
lbl_800EF8E8:
/* 800EF8E8  7F A3 EB 78 */	mr r3, r29
/* 800EF8EC  4B FF D6 19 */	bl checkHorseLieAnime__9daAlink_cCFv
/* 800EF8F0  2C 03 00 00 */	cmpwi r3, 0
/* 800EF8F4  41 82 00 3C */	beq lbl_800EF930
lbl_800EF8F8:
/* 800EF8F8  7F A3 EB 78 */	mr r3, r29
/* 800EF8FC  38 80 00 02 */	li r4, 2
/* 800EF900  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800EF904  4B FB DE 21 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800EF908  7F A3 EB 78 */	mr r3, r29
/* 800EF90C  38 80 00 00 */	li r4, 0
/* 800EF910  4B FD 5E 95 */	bl procBackJumpInit__9daAlink_cFi
/* 800EF914  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 800EF918  3C 60 80 39 */	lis r3, m__22daAlinkHIO_backJump_c0@ha
/* 800EF91C  38 63 D8 2C */	addi r3, r3, m__22daAlinkHIO_backJump_c0@l
/* 800EF920  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800EF924  EC 01 00 2A */	fadds f0, f1, f0
/* 800EF928  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 800EF92C  48 00 00 14 */	b lbl_800EF940
lbl_800EF930:
/* 800EF930  7F A3 EB 78 */	mr r3, r29
/* 800EF934  7F C4 F3 78 */	mr r4, r30
/* 800EF938  48 00 0A 55 */	bl procHorseGetOffInit__9daAlink_cFi
/* 800EF93C  48 00 00 08 */	b lbl_800EF944
lbl_800EF940:
/* 800EF940  38 60 00 00 */	li r3, 0
lbl_800EF944:
/* 800EF944  39 61 00 20 */	addi r11, r1, 0x20
/* 800EF948  48 27 28 E1 */	bl _restgpr_29
/* 800EF94C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EF950  7C 08 03 A6 */	mtlr r0
/* 800EF954  38 21 00 20 */	addi r1, r1, 0x20
/* 800EF958  4E 80 00 20 */	blr 
