lbl_804988DC:
/* 804988DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804988E0  7C 08 02 A6 */	mflr r0
/* 804988E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804988E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804988EC  93 C1 00 08 */	stw r30, 8(r1)
/* 804988F0  7C 7E 1B 78 */	mr r30, r3
/* 804988F4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804988F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804988FC  40 82 00 1C */	bne lbl_80498918
/* 80498900  28 1E 00 00 */	cmplwi r30, 0
/* 80498904  41 82 00 08 */	beq lbl_8049890C
/* 80498908  4B B8 02 5C */	b __ct__10fopAc_ac_cFv
lbl_8049890C:
/* 8049890C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80498910  60 00 00 08 */	ori r0, r0, 8
/* 80498914  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80498918:
/* 80498918  38 00 00 00 */	li r0, 0
/* 8049891C  98 1E 05 74 */	stb r0, 0x574(r30)
/* 80498920  3B E0 00 04 */	li r31, 4
/* 80498924  7F C3 F3 78 */	mr r3, r30
/* 80498928  3C 80 80 4A */	lis r4, daVrbox_solidHeapCB__FP10fopAc_ac_c@ha
/* 8049892C  38 84 88 68 */	addi r4, r4, daVrbox_solidHeapCB__FP10fopAc_ac_c@l
/* 80498930  38 A0 0C 60 */	li r5, 0xc60
/* 80498934  4B B8 1B 7C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80498938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049893C  41 82 00 2C */	beq lbl_80498968
/* 80498940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80498944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80498948  A0 03 5D 46 */	lhz r0, 0x5d46(r3)
/* 8049894C  60 00 00 01 */	ori r0, r0, 1
/* 80498950  B0 03 5D 46 */	sth r0, 0x5d46(r3)
/* 80498954  38 00 00 00 */	li r0, 0
/* 80498958  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8049895C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80498960  98 03 12 D4 */	stb r0, 0x12d4(r3)
/* 80498964  48 00 00 08 */	b lbl_8049896C
lbl_80498968:
/* 80498968  3B E0 00 05 */	li r31, 5
lbl_8049896C:
/* 8049896C  7F E3 FB 78 */	mr r3, r31
/* 80498970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80498974  83 C1 00 08 */	lwz r30, 8(r1)
/* 80498978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049897C  7C 08 03 A6 */	mtlr r0
/* 80498980  38 21 00 10 */	addi r1, r1, 0x10
/* 80498984  4E 80 00 20 */	blr 
