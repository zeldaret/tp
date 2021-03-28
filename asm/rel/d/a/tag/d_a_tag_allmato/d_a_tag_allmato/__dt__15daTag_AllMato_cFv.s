lbl_80489608:
/* 80489608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048960C  7C 08 02 A6 */	mflr r0
/* 80489610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80489618  93 C1 00 08 */	stw r30, 8(r1)
/* 8048961C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80489620  7C 9F 23 78 */	mr r31, r4
/* 80489624  41 82 00 9C */	beq lbl_804896C0
/* 80489628  3C 60 80 49 */	lis r3, __vt__15daTag_AllMato_c@ha
/* 8048962C  38 03 98 70 */	addi r0, r3, __vt__15daTag_AllMato_c@l
/* 80489630  90 1E 1D 14 */	stw r0, 0x1d14(r30)
/* 80489634  38 7E 05 90 */	addi r3, r30, 0x590
/* 80489638  3C 80 80 48 */	lis r4, __dt__4cXyzFv@ha
/* 8048963C  38 84 76 70 */	addi r4, r4, __dt__4cXyzFv@l
/* 80489640  38 A0 00 0C */	li r5, 0xc
/* 80489644  38 C0 01 F4 */	li r6, 0x1f4
/* 80489648  4B ED 86 A0 */	b __destroy_arr
/* 8048964C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80489650  41 82 00 10 */	beq lbl_80489660
/* 80489654  3C 60 80 49 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80489658  38 03 98 64 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8048965C  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_80489660:
/* 80489660  34 1E 05 80 */	addic. r0, r30, 0x580
/* 80489664  41 82 00 10 */	beq lbl_80489674
/* 80489668  3C 60 80 49 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8048966C  38 03 98 64 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80489670  90 1E 05 84 */	stw r0, 0x584(r30)
lbl_80489674:
/* 80489674  38 7E 05 70 */	addi r3, r30, 0x570
/* 80489678  3C 80 80 49 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 8048967C  38 84 91 38 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80489680  38 A0 00 08 */	li r5, 8
/* 80489684  38 C0 00 02 */	li r6, 2
/* 80489688  4B ED 86 60 */	b __destroy_arr
/* 8048968C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80489690  3C 80 80 49 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80489694  38 84 91 38 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80489698  38 A0 00 08 */	li r5, 8
/* 8048969C  38 C0 00 01 */	li r6, 1
/* 804896A0  4B ED 86 48 */	b __destroy_arr
/* 804896A4  7F C3 F3 78 */	mr r3, r30
/* 804896A8  38 80 00 00 */	li r4, 0
/* 804896AC  4B B8 F5 E0 */	b __dt__10fopAc_ac_cFv
/* 804896B0  7F E0 07 35 */	extsh. r0, r31
/* 804896B4  40 81 00 0C */	ble lbl_804896C0
/* 804896B8  7F C3 F3 78 */	mr r3, r30
/* 804896BC  4B E4 56 80 */	b __dl__FPv
lbl_804896C0:
/* 804896C0  7F C3 F3 78 */	mr r3, r30
/* 804896C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804896C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804896CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804896D0  7C 08 03 A6 */	mtlr r0
/* 804896D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804896D8  4E 80 00 20 */	blr 
