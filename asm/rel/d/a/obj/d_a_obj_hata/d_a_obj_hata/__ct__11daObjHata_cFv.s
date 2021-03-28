lbl_80C18D08:
/* 80C18D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18D0C  7C 08 02 A6 */	mflr r0
/* 80C18D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18D18  7C 7F 1B 78 */	mr r31, r3
/* 80C18D1C  4B 3F FE 48 */	b __ct__10fopAc_ac_cFv
/* 80C18D20  3C 60 80 C2 */	lis r3, __vt__11daObjHata_c@ha
/* 80C18D24  38 03 95 1C */	addi r0, r3, __vt__11daObjHata_c@l
/* 80C18D28  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80C18D2C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80C18D30  3C 80 80 C2 */	lis r4, __ct__5csXyzFv@ha
/* 80C18D34  38 84 8D 64 */	addi r4, r4, __ct__5csXyzFv@l
/* 80C18D38  3C A0 80 C2 */	lis r5, __dt__5csXyzFv@ha
/* 80C18D3C  38 A5 8C CC */	addi r5, r5, __dt__5csXyzFv@l
/* 80C18D40  38 C0 00 06 */	li r6, 6
/* 80C18D44  38 E0 00 03 */	li r7, 3
/* 80C18D48  4B 74 90 18 */	b __construct_array
/* 80C18D4C  7F E3 FB 78 */	mr r3, r31
/* 80C18D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C18D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18D58  7C 08 03 A6 */	mtlr r0
/* 80C18D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18D60  4E 80 00 20 */	blr 
