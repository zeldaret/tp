lbl_8006DA04:
/* 8006DA04  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8006DA08  7C 08 02 A6 */	mflr r0
/* 8006DA0C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8006DA10  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8006DA14  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006DA18  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006DA1C  83 E3 10 58 */	lwz r31, 0x1058(r3)
/* 8006DA20  38 61 00 08 */	addi r3, r1, 8
/* 8006DA24  4B FE D0 DD */	bl dKyw_get_wind_vecpow__Fv
/* 8006DA28  C0 01 00 08 */	lfs f0, 8(r1)
/* 8006DA2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8006DA30  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8006DA34  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8006DA38  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8006DA3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8006DA40  38 61 00 20 */	addi r3, r1, 0x20
/* 8006DA44  48 00 9B 39 */	bl __ct__11dBgS_GndChkFv
/* 8006DA48  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8006DA4C  7C 09 03 A6 */	mtctr r0
/* 8006DA50  2C 00 00 00 */	cmpwi r0, 0
/* 8006DA54  40 81 00 08 */	ble lbl_8006DA5C
lbl_8006DA58:
/* 8006DA58  42 00 00 00 */	bdnz lbl_8006DA58
lbl_8006DA5C:
/* 8006DA5C  38 61 00 20 */	addi r3, r1, 0x20
/* 8006DA60  38 80 FF FF */	li r4, -1
/* 8006DA64  48 00 9B 8D */	bl __dt__11dBgS_GndChkFv
/* 8006DA68  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8006DA6C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8006DA70  7C 08 03 A6 */	mtlr r0
/* 8006DA74  38 21 00 80 */	addi r1, r1, 0x80
/* 8006DA78  4E 80 00 20 */	blr 
