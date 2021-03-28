lbl_80655494:
/* 80655494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655498  7C 08 02 A6 */	mflr r0
/* 8065549C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806554A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806554A4  93 C1 00 08 */	stw r30, 8(r1)
/* 806554A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806554AC  7C 9F 23 78 */	mr r31, r4
/* 806554B0  41 82 00 58 */	beq lbl_80655508
/* 806554B4  3C 60 80 65 */	lis r3, __vt__13daBalloon2D_c@ha
/* 806554B8  38 03 57 34 */	addi r0, r3, __vt__13daBalloon2D_c@l
/* 806554BC  90 1E 05 70 */	stw r0, 0x570(r30)
/* 806554C0  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 806554C4  3C 80 80 65 */	lis r4, __dt__Q213daBalloon2D_c10CHeadScoreFv@ha
/* 806554C8  38 84 53 04 */	addi r4, r4, __dt__Q213daBalloon2D_c10CHeadScoreFv@l
/* 806554CC  38 A0 00 10 */	li r5, 0x10
/* 806554D0  38 C0 00 14 */	li r6, 0x14
/* 806554D4  4B D0 C8 14 */	b __destroy_arr
/* 806554D8  34 1E 05 F0 */	addic. r0, r30, 0x5f0
/* 806554DC  41 82 00 10 */	beq lbl_806554EC
/* 806554E0  3C 60 80 65 */	lis r3, __vt__Q213daBalloon2D_c6c_list@ha
/* 806554E4  38 03 57 40 */	addi r0, r3, __vt__Q213daBalloon2D_c6c_list@l
/* 806554E8  90 1E 05 F0 */	stw r0, 0x5f0(r30)
lbl_806554EC:
/* 806554EC  7F C3 F3 78 */	mr r3, r30
/* 806554F0  38 80 00 00 */	li r4, 0
/* 806554F4  4B 9C 37 98 */	b __dt__10fopAc_ac_cFv
/* 806554F8  7F E0 07 35 */	extsh. r0, r31
/* 806554FC  40 81 00 0C */	ble lbl_80655508
/* 80655500  7F C3 F3 78 */	mr r3, r30
/* 80655504  4B C7 98 38 */	b __dl__FPv
lbl_80655508:
/* 80655508  7F C3 F3 78 */	mr r3, r30
/* 8065550C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655510  83 C1 00 08 */	lwz r30, 8(r1)
/* 80655514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80655518  7C 08 03 A6 */	mtlr r0
/* 8065551C  38 21 00 10 */	addi r1, r1, 0x10
/* 80655520  4E 80 00 20 */	blr 
