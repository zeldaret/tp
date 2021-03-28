lbl_8005648C:
/* 8005648C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80056490  7C 08 02 A6 */	mflr r0
/* 80056494  90 01 00 24 */	stw r0, 0x24(r1)
/* 80056498  39 61 00 20 */	addi r11, r1, 0x20
/* 8005649C  48 30 BD 3D */	bl _savegpr_28
/* 800564A0  7C 7C 1B 79 */	or. r28, r3, r3
/* 800564A4  7C 9D 23 78 */	mr r29, r4
/* 800564A8  41 82 00 74 */	beq lbl_8005651C
/* 800564AC  7F 9F E3 78 */	mr r31, r28
/* 800564B0  3B C0 00 00 */	li r30, 0
lbl_800564B4:
/* 800564B4  80 7F 00 00 */	lwz r3, 0(r31)
/* 800564B8  38 80 00 01 */	li r4, 1
/* 800564BC  3B FF 00 04 */	addi r31, r31, 4
/* 800564C0  48 2C EB 49 */	bl __dt__13J3DDrawBufferFv
/* 800564C4  3B DE 00 01 */	addi r30, r30, 1
/* 800564C8  2C 1E 00 15 */	cmpwi r30, 0x15
/* 800564CC  41 80 FF E8 */	blt lbl_800564B4
/* 800564D0  3C 7C 00 01 */	addis r3, r28, 1
/* 800564D4  3C 80 80 01 */	lis r4, __dt__26mDoExt_3DlineMatSortPacketFv@ha
/* 800564D8  38 84 4E 20 */	addi r4, r4, __dt__26mDoExt_3DlineMatSortPacketFv@l
/* 800564DC  38 A0 00 14 */	li r5, 0x14
/* 800564E0  38 C0 00 03 */	li r6, 3
/* 800564E4  38 63 61 54 */	addi r3, r3, 0x6154
/* 800564E8  48 30 B8 01 */	bl __destroy_arr
/* 800564EC  34 1C 02 5C */	addic. r0, r28, 0x25c
/* 800564F0  41 82 00 1C */	beq lbl_8005650C
/* 800564F4  38 7C 36 6C */	addi r3, r28, 0x366c
/* 800564F8  3C 80 80 05 */	lis r4, __dt__18dDlst_shadowReal_cFv@ha
/* 800564FC  38 84 61 F8 */	addi r4, r4, __dt__18dDlst_shadowReal_cFv@l
/* 80056500  38 A0 25 54 */	li r5, 0x2554
/* 80056504  38 C0 00 08 */	li r6, 8
/* 80056508  48 30 B7 E1 */	bl __destroy_arr
lbl_8005650C:
/* 8005650C  7F A0 07 35 */	extsh. r0, r29
/* 80056510  40 81 00 0C */	ble lbl_8005651C
/* 80056514  7F 83 E3 78 */	mr r3, r28
/* 80056518  48 27 88 25 */	bl __dl__FPv
lbl_8005651C:
/* 8005651C  7F 83 E3 78 */	mr r3, r28
/* 80056520  39 61 00 20 */	addi r11, r1, 0x20
/* 80056524  48 30 BD 01 */	bl _restgpr_28
/* 80056528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005652C  7C 08 03 A6 */	mtlr r0
/* 80056530  38 21 00 20 */	addi r1, r1, 0x20
/* 80056534  4E 80 00 20 */	blr 
