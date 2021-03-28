lbl_80655250:
/* 80655250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655254  7C 08 02 A6 */	mflr r0
/* 80655258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065525C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80655260  93 C1 00 08 */	stw r30, 8(r1)
/* 80655264  7C 7F 1B 78 */	mr r31, r3
/* 80655268  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8065526C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80655270  40 82 00 74 */	bne lbl_806552E4
/* 80655274  7F E0 FB 79 */	or. r0, r31, r31
/* 80655278  41 82 00 60 */	beq lbl_806552D8
/* 8065527C  7C 1E 03 78 */	mr r30, r0
/* 80655280  4B 9C 38 E4 */	b __ct__10fopAc_ac_cFv
/* 80655284  3C 60 80 65 */	lis r3, __vt__13daBalloon2D_c@ha
/* 80655288  38 03 57 34 */	addi r0, r3, __vt__13daBalloon2D_c@l
/* 8065528C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80655290  3C 60 80 65 */	lis r3, __vt__12dDlst_base_c@ha
/* 80655294  38 03 57 28 */	addi r0, r3, __vt__12dDlst_base_c@l
/* 80655298  90 1E 05 F0 */	stw r0, 0x5f0(r30)
/* 8065529C  3C 60 80 65 */	lis r3, __vt__Q213daBalloon2D_c6c_list@ha
/* 806552A0  38 03 57 40 */	addi r0, r3, __vt__Q213daBalloon2D_c6c_list@l
/* 806552A4  90 1E 05 F0 */	stw r0, 0x5f0(r30)
/* 806552A8  38 00 00 00 */	li r0, 0
/* 806552AC  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 806552B0  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 806552B4  3C 80 80 65 */	lis r4, __ct__Q213daBalloon2D_c10CHeadScoreFv@ha
/* 806552B8  38 84 53 40 */	addi r4, r4, __ct__Q213daBalloon2D_c10CHeadScoreFv@l
/* 806552BC  3C A0 80 65 */	lis r5, __dt__Q213daBalloon2D_c10CHeadScoreFv@ha
/* 806552C0  38 A5 53 04 */	addi r5, r5, __dt__Q213daBalloon2D_c10CHeadScoreFv@l
/* 806552C4  38 C0 00 10 */	li r6, 0x10
/* 806552C8  38 E0 00 14 */	li r7, 0x14
/* 806552CC  4B D0 CA 94 */	b __construct_array
/* 806552D0  7F C3 F3 78 */	mr r3, r30
/* 806552D4  4B FF ED E1 */	bl initiate__13daBalloon2D_cFv
lbl_806552D8:
/* 806552D8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806552DC  60 00 00 08 */	ori r0, r0, 8
/* 806552E0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806552E4:
/* 806552E4  7F E3 FB 78 */	mr r3, r31
/* 806552E8  4B FF EA 3D */	bl create__13daBalloon2D_cFv
/* 806552EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806552F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806552F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806552F8  7C 08 03 A6 */	mtlr r0
/* 806552FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80655300  4E 80 00 20 */	blr 
