lbl_80C91448:
/* 80C91448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9144C  7C 08 02 A6 */	mflr r0
/* 80C91450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C91458  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9145C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C91460  7C 9F 23 78 */	mr r31, r4
/* 80C91464  41 82 01 68 */	beq lbl_80C915CC
/* 80C91468  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80C9146C  3C 80 80 C9 */	lis r4, l_arcName@ha /* 0x80C9199C@ha */
/* 80C91470  38 84 19 9C */	addi r4, r4, l_arcName@l /* 0x80C9199C@l */
/* 80C91474  80 84 00 00 */	lwz r4, 0(r4)
/* 80C91478  4B 39 BB 91 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C9147C  38 7E 07 28 */	addi r3, r30, 0x728
/* 80C91480  38 80 FF FF */	li r4, -1
/* 80C91484  4B 5D 6C 2D */	bl __dt__13cBgS_PolyInfoFv
/* 80C91488  34 1E 05 E0 */	addic. r0, r30, 0x5e0
/* 80C9148C  41 82 00 84 */	beq lbl_80C91510
/* 80C91490  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C91494  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C91498  90 7E 06 1C */	stw r3, 0x61c(r30)
/* 80C9149C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C914A0  90 1E 07 00 */	stw r0, 0x700(r30)
/* 80C914A4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C914A8  90 1E 07 18 */	stw r0, 0x718(r30)
/* 80C914AC  34 1E 06 E4 */	addic. r0, r30, 0x6e4
/* 80C914B0  41 82 00 54 */	beq lbl_80C91504
/* 80C914B4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C914B8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C914BC  90 7E 07 00 */	stw r3, 0x700(r30)
/* 80C914C0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C914C4  90 1E 07 18 */	stw r0, 0x718(r30)
/* 80C914C8  34 1E 07 04 */	addic. r0, r30, 0x704
/* 80C914CC  41 82 00 10 */	beq lbl_80C914DC
/* 80C914D0  3C 60 80 C9 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C91AAC@ha */
/* 80C914D4  38 03 1A AC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C91AAC@l */
/* 80C914D8  90 1E 07 18 */	stw r0, 0x718(r30)
lbl_80C914DC:
/* 80C914DC  34 1E 06 E4 */	addic. r0, r30, 0x6e4
/* 80C914E0  41 82 00 24 */	beq lbl_80C91504
/* 80C914E4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C914E8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C914EC  90 1E 07 00 */	stw r0, 0x700(r30)
/* 80C914F0  34 1E 06 E4 */	addic. r0, r30, 0x6e4
/* 80C914F4  41 82 00 10 */	beq lbl_80C91504
/* 80C914F8  3C 60 80 C9 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C91AB8@ha */
/* 80C914FC  38 03 1A B8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C91AB8@l */
/* 80C91500  90 1E 06 FC */	stw r0, 0x6fc(r30)
lbl_80C91504:
/* 80C91504  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80C91508  38 80 00 00 */	li r4, 0
/* 80C9150C  4B 3F 2B D9 */	bl __dt__12dCcD_GObjInfFv
lbl_80C91510:
/* 80C91510  34 1E 05 A4 */	addic. r0, r30, 0x5a4
/* 80C91514  41 82 00 54 */	beq lbl_80C91568
/* 80C91518  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C9151C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C91520  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80C91524  38 03 00 20 */	addi r0, r3, 0x20
/* 80C91528  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80C9152C  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 80C91530  41 82 00 24 */	beq lbl_80C91554
/* 80C91534  3C 60 80 C9 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C91A70@ha */
/* 80C91538  38 03 1A 70 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C91A70@l */
/* 80C9153C  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80C91540  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 80C91544  41 82 00 10 */	beq lbl_80C91554
/* 80C91548  3C 60 80 C9 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C91A64@ha */
/* 80C9154C  38 03 1A 64 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C91A64@l */
/* 80C91550  90 1E 05 C0 */	stw r0, 0x5c0(r30)
lbl_80C91554:
/* 80C91554  34 1E 05 A4 */	addic. r0, r30, 0x5a4
/* 80C91558  41 82 00 10 */	beq lbl_80C91568
/* 80C9155C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C91560  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C91564  90 1E 05 BC */	stw r0, 0x5bc(r30)
lbl_80C91568:
/* 80C91568  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80C9156C  41 82 00 20 */	beq lbl_80C9158C
/* 80C91570  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80C91574  41 82 00 18 */	beq lbl_80C9158C
/* 80C91578  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80C9157C  41 82 00 10 */	beq lbl_80C9158C
/* 80C91580  3C 60 80 C9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C91AC4@ha */
/* 80C91584  38 03 1A C4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C91AC4@l */
/* 80C91588  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_80C9158C:
/* 80C9158C  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80C91590  41 82 00 20 */	beq lbl_80C915B0
/* 80C91594  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80C91598  41 82 00 18 */	beq lbl_80C915B0
/* 80C9159C  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80C915A0  41 82 00 10 */	beq lbl_80C915B0
/* 80C915A4  3C 60 80 C9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C91AC4@ha */
/* 80C915A8  38 03 1A C4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C91AC4@l */
/* 80C915AC  90 1E 05 74 */	stw r0, 0x574(r30)
lbl_80C915B0:
/* 80C915B0  7F C3 F3 78 */	mr r3, r30
/* 80C915B4  38 80 00 00 */	li r4, 0
/* 80C915B8  4B 38 76 D5 */	bl __dt__10fopAc_ac_cFv
/* 80C915BC  7F E0 07 35 */	extsh. r0, r31
/* 80C915C0  40 81 00 0C */	ble lbl_80C915CC
/* 80C915C4  7F C3 F3 78 */	mr r3, r30
/* 80C915C8  4B 63 D7 75 */	bl __dl__FPv
lbl_80C915CC:
/* 80C915CC  7F C3 F3 78 */	mr r3, r30
/* 80C915D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C915D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C915D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C915DC  7C 08 03 A6 */	mtlr r0
/* 80C915E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C915E4  4E 80 00 20 */	blr 
