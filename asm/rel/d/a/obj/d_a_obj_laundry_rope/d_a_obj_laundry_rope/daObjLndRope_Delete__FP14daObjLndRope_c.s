lbl_80C52E3C:
/* 80C52E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C52E40  7C 08 02 A6 */	mflr r0
/* 80C52E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C52E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C52E4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C52E50  41 82 00 C4 */	beq lbl_80C52F14
/* 80C52E54  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80C52E58  3C 80 80 C5 */	lis r4, l_arcName@ha
/* 80C52E5C  38 84 33 CC */	addi r4, r4, l_arcName@l
/* 80C52E60  80 84 00 00 */	lwz r4, 0(r4)
/* 80C52E64  4B 3D A1 A4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C52E68  38 7F 16 8C */	addi r3, r31, 0x168c
/* 80C52E6C  3C 80 80 C5 */	lis r4, __dt__4cXyzFv@ha
/* 80C52E70  38 84 28 20 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C52E74  38 A0 00 0C */	li r5, 0xc
/* 80C52E78  38 C0 00 0D */	li r6, 0xd
/* 80C52E7C  4B 70 EE 6C */	b __destroy_arr
/* 80C52E80  38 7F 15 F0 */	addi r3, r31, 0x15f0
/* 80C52E84  3C 80 80 C5 */	lis r4, __dt__4cXyzFv@ha
/* 80C52E88  38 84 28 20 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C52E8C  38 A0 00 0C */	li r5, 0xc
/* 80C52E90  38 C0 00 0D */	li r6, 0xd
/* 80C52E94  4B 70 EE 54 */	b __destroy_arr
/* 80C52E98  38 7F 06 18 */	addi r3, r31, 0x618
/* 80C52E9C  3C 80 80 C5 */	lis r4, __dt__8dCcD_SphFv@ha
/* 80C52EA0  38 84 2F 2C */	addi r4, r4, __dt__8dCcD_SphFv@l
/* 80C52EA4  38 A0 01 38 */	li r5, 0x138
/* 80C52EA8  38 C0 00 0D */	li r6, 0xd
/* 80C52EAC  4B 70 EE 3C */	b __destroy_arr
/* 80C52EB0  34 1F 05 DC */	addic. r0, r31, 0x5dc
/* 80C52EB4  41 82 00 54 */	beq lbl_80C52F08
/* 80C52EB8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C52EBC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C52EC0  90 7F 05 F4 */	stw r3, 0x5f4(r31)
/* 80C52EC4  38 03 00 20 */	addi r0, r3, 0x20
/* 80C52EC8  90 1F 05 F8 */	stw r0, 0x5f8(r31)
/* 80C52ECC  34 1F 05 F8 */	addic. r0, r31, 0x5f8
/* 80C52ED0  41 82 00 24 */	beq lbl_80C52EF4
/* 80C52ED4  3C 60 80 C5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C52ED8  38 03 34 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C52EDC  90 1F 05 F8 */	stw r0, 0x5f8(r31)
/* 80C52EE0  34 1F 05 F8 */	addic. r0, r31, 0x5f8
/* 80C52EE4  41 82 00 10 */	beq lbl_80C52EF4
/* 80C52EE8  3C 60 80 C5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C52EEC  38 03 34 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C52EF0  90 1F 05 F8 */	stw r0, 0x5f8(r31)
lbl_80C52EF4:
/* 80C52EF4  34 1F 05 DC */	addic. r0, r31, 0x5dc
/* 80C52EF8  41 82 00 10 */	beq lbl_80C52F08
/* 80C52EFC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C52F00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C52F04  90 1F 05 F4 */	stw r0, 0x5f4(r31)
lbl_80C52F08:
/* 80C52F08  7F E3 FB 78 */	mr r3, r31
/* 80C52F0C  38 80 00 00 */	li r4, 0
/* 80C52F10  4B 3C 5D 7C */	b __dt__10fopAc_ac_cFv
lbl_80C52F14:
/* 80C52F14  38 60 00 01 */	li r3, 1
/* 80C52F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C52F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C52F20  7C 08 03 A6 */	mtlr r0
/* 80C52F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C52F28  4E 80 00 20 */	blr 
