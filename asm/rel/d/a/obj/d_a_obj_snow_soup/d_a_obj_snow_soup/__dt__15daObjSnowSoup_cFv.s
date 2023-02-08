lbl_80CDF910:
/* 80CDF910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF914  7C 08 02 A6 */	mflr r0
/* 80CDF918  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF91C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDF920  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDF924  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDF928  7C 9F 23 78 */	mr r31, r4
/* 80CDF92C  41 82 00 48 */	beq lbl_80CDF974
/* 80CDF930  3C 60 80 CE */	lis r3, __vt__15daObjSnowSoup_c@ha /* 0x80CE02D4@ha */
/* 80CDF934  38 03 02 D4 */	addi r0, r3, __vt__15daObjSnowSoup_c@l /* 0x80CE02D4@l */
/* 80CDF938  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80CDF93C  7F C3 F3 78 */	mr r3, r30
/* 80CDF940  41 82 00 08 */	beq lbl_80CDF948
/* 80CDF944  38 63 05 68 */	addi r3, r3, 0x568
lbl_80CDF948:
/* 80CDF948  3C 80 80 CE */	lis r4, l_arcName@ha /* 0x80CE0280@ha */
/* 80CDF94C  38 84 02 80 */	addi r4, r4, l_arcName@l /* 0x80CE0280@l */
/* 80CDF950  80 84 00 00 */	lwz r4, 0(r4)
/* 80CDF954  4B 34 D6 B5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CDF958  7F C3 F3 78 */	mr r3, r30
/* 80CDF95C  38 80 00 00 */	li r4, 0
/* 80CDF960  4B 33 93 2D */	bl __dt__10fopAc_ac_cFv
/* 80CDF964  7F E0 07 35 */	extsh. r0, r31
/* 80CDF968  40 81 00 0C */	ble lbl_80CDF974
/* 80CDF96C  7F C3 F3 78 */	mr r3, r30
/* 80CDF970  4B 5E F3 CD */	bl __dl__FPv
lbl_80CDF974:
/* 80CDF974  7F C3 F3 78 */	mr r3, r30
/* 80CDF978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDF97C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDF980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF984  7C 08 03 A6 */	mtlr r0
/* 80CDF988  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF98C  4E 80 00 20 */	blr 
