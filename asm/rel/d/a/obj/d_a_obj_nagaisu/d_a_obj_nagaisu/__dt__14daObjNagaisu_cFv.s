lbl_80C9F4B8:
/* 80C9F4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F4BC  7C 08 02 A6 */	mflr r0
/* 80C9F4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F4C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9F4C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9F4CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C9F4D0  7C 9F 23 78 */	mr r31, r4
/* 80C9F4D4  41 82 00 B8 */	beq lbl_80C9F58C
/* 80C9F4D8  3C 60 80 CA */	lis r3, __vt__14daObjNagaisu_c@ha /* 0x80CA0480@ha */
/* 80C9F4DC  38 03 04 80 */	addi r0, r3, __vt__14daObjNagaisu_c@l /* 0x80CA0480@l */
/* 80C9F4E0  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80C9F4E4  7F C3 F3 78 */	mr r3, r30
/* 80C9F4E8  41 82 00 08 */	beq lbl_80C9F4F0
/* 80C9F4EC  38 63 05 68 */	addi r3, r3, 0x568
lbl_80C9F4F0:
/* 80C9F4F0  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80CA0408@ha */
/* 80C9F4F4  38 84 04 08 */	addi r4, r4, l_arcName@l /* 0x80CA0408@l */
/* 80C9F4F8  80 84 00 00 */	lwz r4, 0(r4)
/* 80C9F4FC  4B 38 DB 0D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C9F500  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C9F504  3C 80 80 CA */	lis r4, __dt__15daObjIsuChild_cFv@ha /* 0x80C9FCDC@ha */
/* 80C9F508  38 84 FC DC */	addi r4, r4, __dt__15daObjIsuChild_cFv@l /* 0x80C9FCDC@l */
/* 80C9F50C  38 A0 02 F4 */	li r5, 0x2f4
/* 80C9F510  38 C0 00 3C */	li r6, 0x3c
/* 80C9F514  4B 6C 27 D5 */	bl __destroy_arr
/* 80C9F518  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80C9F51C  41 82 00 54 */	beq lbl_80C9F570
/* 80C9F520  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C9F524  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C9F528  90 7E 05 90 */	stw r3, 0x590(r30)
/* 80C9F52C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C9F530  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80C9F534  34 1E 05 94 */	addic. r0, r30, 0x594
/* 80C9F538  41 82 00 24 */	beq lbl_80C9F55C
/* 80C9F53C  3C 60 80 CA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CA0498@ha */
/* 80C9F540  38 03 04 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CA0498@l */
/* 80C9F544  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80C9F548  34 1E 05 94 */	addic. r0, r30, 0x594
/* 80C9F54C  41 82 00 10 */	beq lbl_80C9F55C
/* 80C9F550  3C 60 80 CA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CA048C@ha */
/* 80C9F554  38 03 04 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CA048C@l */
/* 80C9F558  90 1E 05 94 */	stw r0, 0x594(r30)
lbl_80C9F55C:
/* 80C9F55C  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80C9F560  41 82 00 10 */	beq lbl_80C9F570
/* 80C9F564  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C9F568  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C9F56C  90 1E 05 90 */	stw r0, 0x590(r30)
lbl_80C9F570:
/* 80C9F570  7F C3 F3 78 */	mr r3, r30
/* 80C9F574  38 80 00 00 */	li r4, 0
/* 80C9F578  4B 37 97 15 */	bl __dt__10fopAc_ac_cFv
/* 80C9F57C  7F E0 07 35 */	extsh. r0, r31
/* 80C9F580  40 81 00 0C */	ble lbl_80C9F58C
/* 80C9F584  7F C3 F3 78 */	mr r3, r30
/* 80C9F588  4B 62 F7 B5 */	bl __dl__FPv
lbl_80C9F58C:
/* 80C9F58C  7F C3 F3 78 */	mr r3, r30
/* 80C9F590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9F594  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9F598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F59C  7C 08 03 A6 */	mtlr r0
/* 80C9F5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F5A4  4E 80 00 20 */	blr 
