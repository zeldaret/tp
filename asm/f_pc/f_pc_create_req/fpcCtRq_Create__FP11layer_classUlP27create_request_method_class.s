lbl_80020DB0:
/* 80020DB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80020DB4  7C 08 02 A6 */	mflr r0
/* 80020DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80020DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80020DC0  48 34 14 1D */	bl _savegpr_29
/* 80020DC4  7C 7D 1B 78 */	mr r29, r3
/* 80020DC8  7C BE 2B 78 */	mr r30, r5
/* 80020DCC  38 60 FF FC */	li r3, -4
/* 80020DD0  48 24 24 59 */	bl memalignB__3cMlFiUl
/* 80020DD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80020DD8  41 82 00 44 */	beq lbl_80020E1C
/* 80020DDC  7F E4 FB 78 */	mr r4, r31
/* 80020DE0  48 00 00 A5 */	bl fpcCtTg_Init__FP10create_tagPv
/* 80020DE4  38 7F 00 18 */	addi r3, r31, 0x18
/* 80020DE8  3C 80 80 02 */	lis r4, fpcCtRq_Cancel__FP14create_request@ha
/* 80020DEC  38 84 0C 14 */	addi r4, r4, fpcCtRq_Cancel__FP14create_request@l
/* 80020DF0  7F E5 FB 78 */	mr r5, r31
/* 80020DF4  48 00 2A 05 */	bl fpcMtdTg_Init__FP24process_method_tag_classPFPv_iPv
/* 80020DF8  93 BF 00 44 */	stw r29, 0x44(r31)
/* 80020DFC  93 DF 00 34 */	stw r30, 0x34(r31)
/* 80020E00  4B FF F8 9D */	bl fpcBs_MakeOfId__Fv
/* 80020E04  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80020E08  38 00 00 00 */	li r0, 0
/* 80020E0C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80020E10  98 1F 00 15 */	stb r0, 0x15(r31)
/* 80020E14  7F E3 FB 78 */	mr r3, r31
/* 80020E18  4B FF FD 45 */	bl fpcCtRq_ToCreateQ__FP14create_request
lbl_80020E1C:
/* 80020E1C  7F E3 FB 78 */	mr r3, r31
/* 80020E20  39 61 00 20 */	addi r11, r1, 0x20
/* 80020E24  48 34 14 05 */	bl _restgpr_29
/* 80020E28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020E2C  7C 08 03 A6 */	mtlr r0
/* 80020E30  38 21 00 20 */	addi r1, r1, 0x20
/* 80020E34  4E 80 00 20 */	blr 
