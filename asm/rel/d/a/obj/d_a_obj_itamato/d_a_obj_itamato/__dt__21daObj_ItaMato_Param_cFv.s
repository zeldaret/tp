lbl_80C2AB04:
/* 80C2AB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2AB08  7C 08 02 A6 */	mflr r0
/* 80C2AB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2AB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2AB14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2AB18  41 82 00 1C */	beq lbl_80C2AB34
/* 80C2AB1C  3C A0 80 C3 */	lis r5, __vt__21daObj_ItaMato_Param_c@ha
/* 80C2AB20  38 05 AD 40 */	addi r0, r5, __vt__21daObj_ItaMato_Param_c@l
/* 80C2AB24  90 1F 00 00 */	stw r0, 0(r31)
/* 80C2AB28  7C 80 07 35 */	extsh. r0, r4
/* 80C2AB2C  40 81 00 08 */	ble lbl_80C2AB34
/* 80C2AB30  4B 6A 42 0C */	b __dl__FPv
lbl_80C2AB34:
/* 80C2AB34  7F E3 FB 78 */	mr r3, r31
/* 80C2AB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2AB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2AB40  7C 08 03 A6 */	mtlr r0
/* 80C2AB44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2AB48  4E 80 00 20 */	blr 
