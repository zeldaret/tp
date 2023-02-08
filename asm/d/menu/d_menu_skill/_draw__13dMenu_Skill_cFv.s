lbl_801F77B0:
/* 801F77B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F77B4  7C 08 02 A6 */	mflr r0
/* 801F77B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F77BC  39 61 00 20 */	addi r11, r1, 0x20
/* 801F77C0  48 16 AA 1D */	bl _savegpr_29
/* 801F77C4  7C 7D 1B 78 */	mr r29, r3
/* 801F77C8  80 03 00 08 */	lwz r0, 8(r3)
/* 801F77CC  28 00 00 00 */	cmplwi r0, 0
/* 801F77D0  41 82 01 68 */	beq lbl_801F7938
/* 801F77D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F77D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F77DC  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801F77E0  80 7D 01 58 */	lwz r3, 0x158(r29)
/* 801F77E4  8B C3 00 B2 */	lbz r30, 0xb2(r3)
/* 801F77E8  38 80 00 FF */	li r4, 0xff
/* 801F77EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F77F0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F77F4  7D 89 03 A6 */	mtctr r12
/* 801F77F8  4E 80 04 21 */	bctrl 
/* 801F77FC  80 7D 01 58 */	lwz r3, 0x158(r29)
/* 801F7800  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F7804  FC 40 08 90 */	fmr f2, f1
/* 801F7808  C0 62 AA A0 */	lfs f3, lit_3944(r2)
/* 801F780C  C0 82 AA A4 */	lfs f4, lit_3945(r2)
/* 801F7810  38 80 00 00 */	li r4, 0
/* 801F7814  38 A0 00 00 */	li r5, 0
/* 801F7818  38 C0 00 00 */	li r6, 0
/* 801F781C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7820  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801F7824  7D 89 03 A6 */	mtctr r12
/* 801F7828  4E 80 04 21 */	bctrl 
/* 801F782C  80 7D 01 58 */	lwz r3, 0x158(r29)
/* 801F7830  7F C4 F3 78 */	mr r4, r30
/* 801F7834  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7838  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F783C  7D 89 03 A6 */	mtctr r12
/* 801F7840  4E 80 04 21 */	bctrl 
/* 801F7844  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801F7848  C0 3D 01 F0 */	lfs f1, 0x1f0(r29)
/* 801F784C  C0 42 AA 88 */	lfs f2, lit_3808(r2)
/* 801F7850  7F E4 FB 78 */	mr r4, r31
/* 801F7854  48 10 16 81 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801F7858  80 7D 01 98 */	lwz r3, 0x198(r29)
/* 801F785C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7860  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F7864  7D 89 03 A6 */	mtctr r12
/* 801F7868  4E 80 04 21 */	bctrl 
/* 801F786C  88 1D 02 05 */	lbz r0, 0x205(r29)
/* 801F7870  28 00 00 01 */	cmplwi r0, 1
/* 801F7874  41 82 00 14 */	beq lbl_801F7888
/* 801F7878  28 00 00 02 */	cmplwi r0, 2
/* 801F787C  41 82 00 0C */	beq lbl_801F7888
/* 801F7880  28 00 00 03 */	cmplwi r0, 3
/* 801F7884  40 82 00 A0 */	bne lbl_801F7924
lbl_801F7888:
/* 801F7888  80 7D 01 58 */	lwz r3, 0x158(r29)
/* 801F788C  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F7890  FC 40 08 90 */	fmr f2, f1
/* 801F7894  C0 62 AA A0 */	lfs f3, lit_3944(r2)
/* 801F7898  C0 82 AA A4 */	lfs f4, lit_3945(r2)
/* 801F789C  38 80 00 00 */	li r4, 0
/* 801F78A0  38 A0 00 00 */	li r5, 0
/* 801F78A4  38 C0 00 00 */	li r6, 0
/* 801F78A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F78AC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801F78B0  7D 89 03 A6 */	mtctr r12
/* 801F78B4  4E 80 04 21 */	bctrl 
/* 801F78B8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 801F78BC  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F78C0  FC 40 08 90 */	fmr f2, f1
/* 801F78C4  7F E4 FB 78 */	mr r4, r31
/* 801F78C8  48 10 16 0D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801F78CC  80 9D 01 FC */	lwz r4, 0x1fc(r29)
/* 801F78D0  28 04 00 00 */	cmplwi r4, 0
/* 801F78D4  41 82 00 50 */	beq lbl_801F7924
/* 801F78D8  80 7D 01 80 */	lwz r3, 0x180(r29)
/* 801F78DC  80 A3 00 04 */	lwz r5, 4(r3)
/* 801F78E0  80 7D 01 9C */	lwz r3, 0x19c(r29)
/* 801F78E4  38 C0 00 00 */	li r6, 0
/* 801F78E8  38 E0 00 00 */	li r7, 0
/* 801F78EC  39 00 00 00 */	li r8, 0
/* 801F78F0  39 20 00 00 */	li r9, 0
/* 801F78F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F78F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F78FC  7D 89 03 A6 */	mtctr r12
/* 801F7900  4E 80 04 21 */	bctrl 
/* 801F7904  80 7D 01 80 */	lwz r3, 0x180(r29)
/* 801F7908  80 83 00 04 */	lwz r4, 4(r3)
/* 801F790C  80 7D 01 9C */	lwz r3, 0x19c(r29)
/* 801F7910  C0 22 AA A8 */	lfs f1, lit_3946(r2)
/* 801F7914  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7918  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801F791C  7D 89 03 A6 */	mtctr r12
/* 801F7920  4E 80 04 21 */	bctrl 
lbl_801F7924:
/* 801F7924  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801F7928  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F792C  FC 40 08 90 */	fmr f2, f1
/* 801F7930  7F E4 FB 78 */	mr r4, r31
/* 801F7934  48 10 15 A1 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801F7938:
/* 801F7938  39 61 00 20 */	addi r11, r1, 0x20
/* 801F793C  48 16 A8 ED */	bl _restgpr_29
/* 801F7940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F7944  7C 08 03 A6 */	mtlr r0
/* 801F7948  38 21 00 20 */	addi r1, r1, 0x20
/* 801F794C  4E 80 00 20 */	blr 
