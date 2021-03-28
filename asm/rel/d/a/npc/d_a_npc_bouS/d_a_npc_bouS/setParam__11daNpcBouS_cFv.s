lbl_80976C00:
/* 80976C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80976C04  7C 08 02 A6 */	mflr r0
/* 80976C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80976C0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80976C10  7C 7F 1B 78 */	mr r31, r3
/* 80976C14  38 80 00 05 */	li r4, 5
/* 80976C18  38 A0 00 06 */	li r5, 6
/* 80976C1C  4B 7D D6 5C */	b getDistTableIdx__8daNpcF_cFii
/* 80976C20  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80976C24  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80976C28  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80976C2C  7F E3 FB 78 */	mr r3, r31
/* 80976C30  38 80 00 03 */	li r4, 3
/* 80976C34  38 A0 00 06 */	li r5, 6
/* 80976C38  4B 7D D6 40 */	b getDistTableIdx__8daNpcF_cFii
/* 80976C3C  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80976C40  80 7F 0D F0 */	lwz r3, 0xdf0(r31)
/* 80976C44  7C 03 00 D0 */	neg r0, r3
/* 80976C48  7C 00 18 78 */	andc r0, r0, r3
/* 80976C4C  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 80976C50  38 00 00 0A */	li r0, 0xa
/* 80976C54  7C 00 18 38 */	and r0, r0, r3
/* 80976C58  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80976C5C  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80976C60  3C 80 80 98 */	lis r4, m__17daNpcBouS_Param_c@ha
/* 80976C64  38 84 84 10 */	addi r4, r4, m__17daNpcBouS_Param_c@l
/* 80976C68  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80976C6C  4B 6F F2 D4 */	b SetWallR__12dBgS_AcchCirFf
/* 80976C70  3C 60 80 98 */	lis r3, m__17daNpcBouS_Param_c@ha
/* 80976C74  38 63 84 10 */	addi r3, r3, m__17daNpcBouS_Param_c@l
/* 80976C78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80976C7C  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 80976C80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80976C84  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80976C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80976C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80976C90  7C 08 03 A6 */	mtlr r0
/* 80976C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80976C98  4E 80 00 20 */	blr 
