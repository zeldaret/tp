lbl_80A76C7C:
/* 80A76C7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A76C80  7C 08 02 A6 */	mflr r0
/* 80A76C84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A76C88  39 61 00 20 */	addi r11, r1, 0x20
/* 80A76C8C  4B 8E B5 51 */	bl _savegpr_29
/* 80A76C90  7C 7F 1B 78 */	mr r31, r3
/* 80A76C94  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha /* 0x80A7AEF0@ha */
/* 80A76C98  3B C3 AE F0 */	addi r30, r3, m__17daNpc_Moi_Param_c@l /* 0x80A7AEF0@l */
/* 80A76C9C  3B A0 00 01 */	li r29, 1
/* 80A76CA0  80 1F 16 58 */	lwz r0, 0x1658(r31)
/* 80A76CA4  90 01 00 08 */	stw r0, 8(r1)
/* 80A76CA8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A76CAC  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A76CB0  41 82 00 0C */	beq lbl_80A76CBC
/* 80A76CB4  2C 00 00 26 */	cmpwi r0, 0x26
/* 80A76CB8  40 82 00 24 */	bne lbl_80A76CDC
lbl_80A76CBC:
/* 80A76CBC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A76CC0  4B 6C ED 65 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A76CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80A76CC8  41 82 00 10 */	beq lbl_80A76CD8
/* 80A76CCC  38 61 00 08 */	addi r3, r1, 8
/* 80A76CD0  48 00 3E 95 */	bl func_80A7AB64
/* 80A76CD4  48 00 00 08 */	b lbl_80A76CDC
lbl_80A76CD8:
/* 80A76CD8  3B A0 00 00 */	li r29, 0
lbl_80A76CDC:
/* 80A76CDC  2C 1D 00 00 */	cmpwi r29, 0
/* 80A76CE0  41 82 01 14 */	beq lbl_80A76DF4
/* 80A76CE4  80 61 00 08 */	lwz r3, 8(r1)
/* 80A76CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80A76CEC  41 82 01 08 */	beq lbl_80A76DF4
/* 80A76CF0  88 1F 16 67 */	lbz r0, 0x1667(r31)
/* 80A76CF4  28 00 00 00 */	cmplwi r0, 0
/* 80A76CF8  41 82 00 6C */	beq lbl_80A76D64
/* 80A76CFC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80A76D00  41 82 00 34 */	beq lbl_80A76D34
/* 80A76D04  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A76D08  2C 00 00 26 */	cmpwi r0, 0x26
/* 80A76D0C  41 82 00 E8 */	beq lbl_80A76DF4
/* 80A76D10  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80A76D14  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A76D18  4B 6C EB 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A76D1C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80A76D20  38 00 00 26 */	li r0, 0x26
/* 80A76D24  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A76D28  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80A76D2C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A76D30  48 00 00 C4 */	b lbl_80A76DF4
lbl_80A76D34:
/* 80A76D34  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A76D38  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A76D3C  41 82 00 B8 */	beq lbl_80A76DF4
/* 80A76D40  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80A76D44  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A76D48  4B 6C EB 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A76D4C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80A76D50  38 00 00 25 */	li r0, 0x25
/* 80A76D54  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A76D58  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80A76D5C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A76D60  48 00 00 94 */	b lbl_80A76DF4
lbl_80A76D64:
/* 80A76D64  4B 7F 0B 09 */	bl cM_rnd__Fv
/* 80A76D68  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 80A76D6C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A76D70  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A76D74  2C 00 00 26 */	cmpwi r0, 0x26
/* 80A76D78  40 82 00 0C */	bne lbl_80A76D84
/* 80A76D7C  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80A76D80  EC 21 00 2A */	fadds f1, f1, f0
lbl_80A76D84:
/* 80A76D84  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A76D88  40 82 00 0C */	bne lbl_80A76D94
/* 80A76D8C  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80A76D90  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80A76D94:
/* 80A76D94  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80A76D98  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80A76D9C  40 80 00 30 */	bge lbl_80A76DCC
/* 80A76DA0  2C 00 00 26 */	cmpwi r0, 0x26
/* 80A76DA4  41 82 00 50 */	beq lbl_80A76DF4
/* 80A76DA8  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80A76DAC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A76DB0  4B 6C EA E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A76DB4  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80A76DB8  38 00 00 26 */	li r0, 0x26
/* 80A76DBC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A76DC0  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80A76DC4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A76DC8  48 00 00 2C */	b lbl_80A76DF4
lbl_80A76DCC:
/* 80A76DCC  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A76DD0  41 82 00 24 */	beq lbl_80A76DF4
/* 80A76DD4  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80A76DD8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A76DDC  4B 6C EA BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A76DE0  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80A76DE4  38 00 00 25 */	li r0, 0x25
/* 80A76DE8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A76DEC  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80A76DF0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A76DF4:
/* 80A76DF4  80 61 00 08 */	lwz r3, 8(r1)
/* 80A76DF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A76DFC  4B 8E B4 2D */	bl _restgpr_29
/* 80A76E00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A76E04  7C 08 03 A6 */	mtlr r0
/* 80A76E08  38 21 00 20 */	addi r1, r1, 0x20
/* 80A76E0C  4E 80 00 20 */	blr 
