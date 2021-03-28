lbl_80019E04:
/* 80019E04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80019E08  7C 08 02 A6 */	mflr r0
/* 80019E0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80019E10  39 61 00 20 */	addi r11, r1, 0x20
/* 80019E14  48 34 83 C9 */	bl _savegpr_29
/* 80019E18  7C 7D 1B 78 */	mr r29, r3
/* 80019E1C  7D 5E 53 78 */	mr r30, r10
/* 80019E20  83 E1 00 28 */	lwz r31, 0x28(r1)
/* 80019E24  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80019E28  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80019E2C  39 40 FF FF */	li r10, -1
/* 80019E30  4B FF FC ED */	bl createAppend__FUsUlPC4cXyziPC5csXyzPC4cXyzScUi
/* 80019E34  7C 66 1B 79 */	or. r6, r3, r3
/* 80019E38  40 82 00 0C */	bne lbl_80019E44
/* 80019E3C  38 60 00 00 */	li r3, 0
/* 80019E40  48 00 00 14 */	b lbl_80019E54
lbl_80019E44:
/* 80019E44  7F A3 EB 78 */	mr r3, r29
/* 80019E48  7F C4 F3 78 */	mr r4, r30
/* 80019E4C  7F E5 FB 78 */	mr r5, r31
/* 80019E50  48 00 84 A5 */	bl fpcM_FastCreate__FsPFPv_iPvPv
lbl_80019E54:
/* 80019E54  39 61 00 20 */	addi r11, r1, 0x20
/* 80019E58  48 34 83 D1 */	bl _restgpr_29
/* 80019E5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80019E60  7C 08 03 A6 */	mtlr r0
/* 80019E64  38 21 00 20 */	addi r1, r1, 0x20
/* 80019E68  4E 80 00 20 */	blr 
