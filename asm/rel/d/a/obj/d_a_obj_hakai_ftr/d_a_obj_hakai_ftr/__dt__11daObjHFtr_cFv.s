lbl_80C17778:
/* 80C17778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1777C  7C 08 02 A6 */	mflr r0
/* 80C17780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C17788  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1778C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C17790  7C 9F 23 78 */	mr r31, r4
/* 80C17794  41 82 00 C4 */	beq lbl_80C17858
/* 80C17798  3C 60 80 C2 */	lis r3, __vt__11daObjHFtr_c@ha /* 0x80C181D8@ha */
/* 80C1779C  38 03 81 D8 */	addi r0, r3, __vt__11daObjHFtr_c@l /* 0x80C181D8@l */
/* 80C177A0  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80C177A4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C177A8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C177AC  7F C3 F3 78 */	mr r3, r30
/* 80C177B0  41 82 00 08 */	beq lbl_80C177B8
/* 80C177B4  38 63 05 68 */	addi r3, r3, 0x568
lbl_80C177B8:
/* 80C177B8  54 00 10 3A */	slwi r0, r0, 2
/* 80C177BC  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C1817C@ha */
/* 80C177C0  38 84 81 7C */	addi r4, r4, l_arcName@l /* 0x80C1817C@l */
/* 80C177C4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C177C8  4B 41 58 41 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C177CC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80C177D0  3C 80 80 C1 */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80C1753C@ha */
/* 80C177D4  38 84 75 3C */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80C1753C@l */
/* 80C177D8  38 A0 01 3C */	li r5, 0x13c
/* 80C177DC  38 C0 00 02 */	li r6, 2
/* 80C177E0  4B 74 A5 09 */	bl __destroy_arr
/* 80C177E4  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 80C177E8  41 82 00 54 */	beq lbl_80C1783C
/* 80C177EC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C177F0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C177F4  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 80C177F8  38 03 00 20 */	addi r0, r3, 0x20
/* 80C177FC  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80C17800  34 1E 05 C8 */	addic. r0, r30, 0x5c8
/* 80C17804  41 82 00 24 */	beq lbl_80C17828
/* 80C17808  3C 60 80 C2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C181F0@ha */
/* 80C1780C  38 03 81 F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C181F0@l */
/* 80C17810  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80C17814  34 1E 05 C8 */	addic. r0, r30, 0x5c8
/* 80C17818  41 82 00 10 */	beq lbl_80C17828
/* 80C1781C  3C 60 80 C2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C181E4@ha */
/* 80C17820  38 03 81 E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C181E4@l */
/* 80C17824  90 1E 05 C8 */	stw r0, 0x5c8(r30)
lbl_80C17828:
/* 80C17828  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 80C1782C  41 82 00 10 */	beq lbl_80C1783C
/* 80C17830  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C17834  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C17838  90 1E 05 C4 */	stw r0, 0x5c4(r30)
lbl_80C1783C:
/* 80C1783C  7F C3 F3 78 */	mr r3, r30
/* 80C17840  38 80 00 00 */	li r4, 0
/* 80C17844  4B 40 14 49 */	bl __dt__10fopAc_ac_cFv
/* 80C17848  7F E0 07 35 */	extsh. r0, r31
/* 80C1784C  40 81 00 0C */	ble lbl_80C17858
/* 80C17850  7F C3 F3 78 */	mr r3, r30
/* 80C17854  4B 6B 74 E9 */	bl __dl__FPv
lbl_80C17858:
/* 80C17858  7F C3 F3 78 */	mr r3, r30
/* 80C1785C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C17860  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C17864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17868  7C 08 03 A6 */	mtlr r0
/* 80C1786C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17870  4E 80 00 20 */	blr 
