lbl_80CAD6C8:
/* 80CAD6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD6CC  7C 08 02 A6 */	mflr r0
/* 80CAD6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD6D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD6D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAD6DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CAD6E0  7C 9F 23 78 */	mr r31, r4
/* 80CAD6E4  41 82 02 08 */	beq lbl_80CAD8EC
/* 80CAD6E8  3C 60 80 CB */	lis r3, __vt__14daObjPicture_c@ha
/* 80CAD6EC  38 03 F2 04 */	addi r0, r3, __vt__14daObjPicture_c@l
/* 80CAD6F0  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80CAD6F4  7F C3 F3 78 */	mr r3, r30
/* 80CAD6F8  41 82 00 08 */	beq lbl_80CAD700
/* 80CAD6FC  38 63 05 68 */	addi r3, r3, 0x568
lbl_80CAD700:
/* 80CAD700  3C 80 80 CB */	lis r4, l_arcName@ha
/* 80CAD704  38 84 F0 E8 */	addi r4, r4, l_arcName@l
/* 80CAD708  80 84 00 00 */	lwz r4, 0(r4)
/* 80CAD70C  4B 37 F8 FC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CAD710  38 7E 09 EC */	addi r3, r30, 0x9ec
/* 80CAD714  3C 80 80 CB */	lis r4, __dt__8dCcD_CpsFv@ha
/* 80CAD718  38 84 D5 28 */	addi r4, r4, __dt__8dCcD_CpsFv@l
/* 80CAD71C  38 A0 01 44 */	li r5, 0x144
/* 80CAD720  38 C0 00 02 */	li r6, 2
/* 80CAD724  4B 6B 45 C4 */	b __destroy_arr
/* 80CAD728  34 1E 08 B0 */	addic. r0, r30, 0x8b0
/* 80CAD72C  41 82 00 84 */	beq lbl_80CAD7B0
/* 80CAD730  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CAD734  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CAD738  90 7E 08 EC */	stw r3, 0x8ec(r30)
/* 80CAD73C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CAD740  90 1E 09 D0 */	stw r0, 0x9d0(r30)
/* 80CAD744  38 03 00 84 */	addi r0, r3, 0x84
/* 80CAD748  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80CAD74C  34 1E 09 B4 */	addic. r0, r30, 0x9b4
/* 80CAD750  41 82 00 54 */	beq lbl_80CAD7A4
/* 80CAD754  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CAD758  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CAD75C  90 7E 09 D0 */	stw r3, 0x9d0(r30)
/* 80CAD760  38 03 00 58 */	addi r0, r3, 0x58
/* 80CAD764  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80CAD768  34 1E 09 D4 */	addic. r0, r30, 0x9d4
/* 80CAD76C  41 82 00 10 */	beq lbl_80CAD77C
/* 80CAD770  3C 60 80 CB */	lis r3, __vt__8cM3dGCyl@ha
/* 80CAD774  38 03 F2 28 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CAD778  90 1E 09 E8 */	stw r0, 0x9e8(r30)
lbl_80CAD77C:
/* 80CAD77C  34 1E 09 B4 */	addic. r0, r30, 0x9b4
/* 80CAD780  41 82 00 24 */	beq lbl_80CAD7A4
/* 80CAD784  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CAD788  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CAD78C  90 1E 09 D0 */	stw r0, 0x9d0(r30)
/* 80CAD790  34 1E 09 B4 */	addic. r0, r30, 0x9b4
/* 80CAD794  41 82 00 10 */	beq lbl_80CAD7A4
/* 80CAD798  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha
/* 80CAD79C  38 03 F2 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CAD7A0  90 1E 09 CC */	stw r0, 0x9cc(r30)
lbl_80CAD7A4:
/* 80CAD7A4  38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 80CAD7A8  38 80 00 00 */	li r4, 0
/* 80CAD7AC  4B 3D 69 38 */	b __dt__12dCcD_GObjInfFv
lbl_80CAD7B0:
/* 80CAD7B0  38 7E 06 28 */	addi r3, r30, 0x628
/* 80CAD7B4  3C 80 80 CB */	lis r4, __dt__8dCcD_CpsFv@ha
/* 80CAD7B8  38 84 D5 28 */	addi r4, r4, __dt__8dCcD_CpsFv@l
/* 80CAD7BC  38 A0 01 44 */	li r5, 0x144
/* 80CAD7C0  38 C0 00 02 */	li r6, 2
/* 80CAD7C4  4B 6B 45 24 */	b __destroy_arr
/* 80CAD7C8  34 1E 05 EC */	addic. r0, r30, 0x5ec
/* 80CAD7CC  41 82 00 54 */	beq lbl_80CAD820
/* 80CAD7D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CAD7D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CAD7D8  90 7E 06 04 */	stw r3, 0x604(r30)
/* 80CAD7DC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CAD7E0  90 1E 06 08 */	stw r0, 0x608(r30)
/* 80CAD7E4  34 1E 06 08 */	addic. r0, r30, 0x608
/* 80CAD7E8  41 82 00 24 */	beq lbl_80CAD80C
/* 80CAD7EC  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha
/* 80CAD7F0  38 03 F2 1C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CAD7F4  90 1E 06 08 */	stw r0, 0x608(r30)
/* 80CAD7F8  34 1E 06 08 */	addic. r0, r30, 0x608
/* 80CAD7FC  41 82 00 10 */	beq lbl_80CAD80C
/* 80CAD800  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha
/* 80CAD804  38 03 F2 10 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CAD808  90 1E 06 08 */	stw r0, 0x608(r30)
lbl_80CAD80C:
/* 80CAD80C  34 1E 05 EC */	addic. r0, r30, 0x5ec
/* 80CAD810  41 82 00 10 */	beq lbl_80CAD820
/* 80CAD814  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CAD818  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CAD81C  90 1E 06 04 */	stw r0, 0x604(r30)
lbl_80CAD820:
/* 80CAD820  34 1E 05 B0 */	addic. r0, r30, 0x5b0
/* 80CAD824  41 82 00 54 */	beq lbl_80CAD878
/* 80CAD828  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CAD82C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CAD830  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 80CAD834  38 03 00 20 */	addi r0, r3, 0x20
/* 80CAD838  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80CAD83C  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80CAD840  41 82 00 24 */	beq lbl_80CAD864
/* 80CAD844  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha
/* 80CAD848  38 03 F2 1C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CAD84C  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80CAD850  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80CAD854  41 82 00 10 */	beq lbl_80CAD864
/* 80CAD858  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha
/* 80CAD85C  38 03 F2 10 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CAD860  90 1E 05 CC */	stw r0, 0x5cc(r30)
lbl_80CAD864:
/* 80CAD864  34 1E 05 B0 */	addic. r0, r30, 0x5b0
/* 80CAD868  41 82 00 10 */	beq lbl_80CAD878
/* 80CAD86C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CAD870  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CAD874  90 1E 05 C8 */	stw r0, 0x5c8(r30)
lbl_80CAD878:
/* 80CAD878  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80CAD87C  41 82 00 54 */	beq lbl_80CAD8D0
/* 80CAD880  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CAD884  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CAD888  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 80CAD88C  38 03 00 20 */	addi r0, r3, 0x20
/* 80CAD890  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80CAD894  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80CAD898  41 82 00 24 */	beq lbl_80CAD8BC
/* 80CAD89C  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha
/* 80CAD8A0  38 03 F2 1C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CAD8A4  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80CAD8A8  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80CAD8AC  41 82 00 10 */	beq lbl_80CAD8BC
/* 80CAD8B0  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha
/* 80CAD8B4  38 03 F2 10 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CAD8B8  90 1E 05 90 */	stw r0, 0x590(r30)
lbl_80CAD8BC:
/* 80CAD8BC  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80CAD8C0  41 82 00 10 */	beq lbl_80CAD8D0
/* 80CAD8C4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CAD8C8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CAD8CC  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_80CAD8D0:
/* 80CAD8D0  7F C3 F3 78 */	mr r3, r30
/* 80CAD8D4  38 80 00 00 */	li r4, 0
/* 80CAD8D8  4B 36 B3 B4 */	b __dt__10fopAc_ac_cFv
/* 80CAD8DC  7F E0 07 35 */	extsh. r0, r31
/* 80CAD8E0  40 81 00 0C */	ble lbl_80CAD8EC
/* 80CAD8E4  7F C3 F3 78 */	mr r3, r30
/* 80CAD8E8  4B 62 14 54 */	b __dl__FPv
lbl_80CAD8EC:
/* 80CAD8EC  7F C3 F3 78 */	mr r3, r30
/* 80CAD8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD8F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAD8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD8FC  7C 08 03 A6 */	mtlr r0
/* 80CAD900  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD904  4E 80 00 20 */	blr 
