lbl_8059D9A8:
/* 8059D9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D9AC  7C 08 02 A6 */	mflr r0
/* 8059D9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D9B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059D9BC  41 82 01 20 */	beq lbl_8059DADC
/* 8059D9C0  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 8059D9C4  80 9F 07 60 */	lwz r4, 0x760(r31)
/* 8059D9C8  4B A8 F6 40 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8059D9CC  38 7F 07 4C */	addi r3, r31, 0x74c
/* 8059D9D0  3C 80 80 5A */	lis r4, __dt__5csXyzFv@ha
/* 8059D9D4  38 84 D2 E4 */	addi r4, r4, __dt__5csXyzFv@l
/* 8059D9D8  38 A0 00 06 */	li r5, 6
/* 8059D9DC  38 C0 00 03 */	li r6, 3
/* 8059D9E0  4B DC 43 08 */	b __destroy_arr
/* 8059D9E4  38 7F 07 2C */	addi r3, r31, 0x72c
/* 8059D9E8  38 80 FF FF */	li r4, -1
/* 8059D9EC  4B CC A6 C4 */	b __dt__13cBgS_PolyInfoFv
/* 8059D9F0  34 1F 05 F0 */	addic. r0, r31, 0x5f0
/* 8059D9F4  41 82 00 84 */	beq lbl_8059DA78
/* 8059D9F8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8059D9FC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8059DA00  90 7F 06 2C */	stw r3, 0x62c(r31)
/* 8059DA04  38 03 00 2C */	addi r0, r3, 0x2c
/* 8059DA08  90 1F 07 10 */	stw r0, 0x710(r31)
/* 8059DA0C  38 03 00 84 */	addi r0, r3, 0x84
/* 8059DA10  90 1F 07 28 */	stw r0, 0x728(r31)
/* 8059DA14  34 1F 06 F4 */	addic. r0, r31, 0x6f4
/* 8059DA18  41 82 00 54 */	beq lbl_8059DA6C
/* 8059DA1C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8059DA20  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8059DA24  90 7F 07 10 */	stw r3, 0x710(r31)
/* 8059DA28  38 03 00 58 */	addi r0, r3, 0x58
/* 8059DA2C  90 1F 07 28 */	stw r0, 0x728(r31)
/* 8059DA30  34 1F 07 14 */	addic. r0, r31, 0x714
/* 8059DA34  41 82 00 10 */	beq lbl_8059DA44
/* 8059DA38  3C 60 80 5A */	lis r3, __vt__8cM3dGCyl@ha
/* 8059DA3C  38 03 E0 94 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8059DA40  90 1F 07 28 */	stw r0, 0x728(r31)
lbl_8059DA44:
/* 8059DA44  34 1F 06 F4 */	addic. r0, r31, 0x6f4
/* 8059DA48  41 82 00 24 */	beq lbl_8059DA6C
/* 8059DA4C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8059DA50  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8059DA54  90 1F 07 10 */	stw r0, 0x710(r31)
/* 8059DA58  34 1F 06 F4 */	addic. r0, r31, 0x6f4
/* 8059DA5C  41 82 00 10 */	beq lbl_8059DA6C
/* 8059DA60  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 8059DA64  38 03 E0 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8059DA68  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_8059DA6C:
/* 8059DA6C  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8059DA70  38 80 00 00 */	li r4, 0
/* 8059DA74  4B AE 66 70 */	b __dt__12dCcD_GObjInfFv
lbl_8059DA78:
/* 8059DA78  34 1F 05 B4 */	addic. r0, r31, 0x5b4
/* 8059DA7C  41 82 00 54 */	beq lbl_8059DAD0
/* 8059DA80  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8059DA84  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8059DA88  90 7F 05 CC */	stw r3, 0x5cc(r31)
/* 8059DA8C  38 03 00 20 */	addi r0, r3, 0x20
/* 8059DA90  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 8059DA94  34 1F 05 D0 */	addic. r0, r31, 0x5d0
/* 8059DA98  41 82 00 24 */	beq lbl_8059DABC
/* 8059DA9C  3C 60 80 5A */	lis r3, __vt__10dCcD_GStts@ha
/* 8059DAA0  38 03 E0 7C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8059DAA4  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 8059DAA8  34 1F 05 D0 */	addic. r0, r31, 0x5d0
/* 8059DAAC  41 82 00 10 */	beq lbl_8059DABC
/* 8059DAB0  3C 60 80 5A */	lis r3, __vt__10cCcD_GStts@ha
/* 8059DAB4  38 03 E0 70 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8059DAB8  90 1F 05 D0 */	stw r0, 0x5d0(r31)
lbl_8059DABC:
/* 8059DABC  34 1F 05 B4 */	addic. r0, r31, 0x5b4
/* 8059DAC0  41 82 00 10 */	beq lbl_8059DAD0
/* 8059DAC4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8059DAC8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8059DACC  90 1F 05 CC */	stw r0, 0x5cc(r31)
lbl_8059DAD0:
/* 8059DAD0  7F E3 FB 78 */	mr r3, r31
/* 8059DAD4  38 80 00 00 */	li r4, 0
/* 8059DAD8  4B A7 B1 B4 */	b __dt__10fopAc_ac_cFv
lbl_8059DADC:
/* 8059DADC  38 60 00 01 */	li r3, 1
/* 8059DAE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059DAE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059DAE8  7C 08 03 A6 */	mtlr r0
/* 8059DAEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059DAF0  4E 80 00 20 */	blr 
