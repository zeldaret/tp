lbl_80C18D68:
/* 80C18D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18D6C  7C 08 02 A6 */	mflr r0
/* 80C18D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18D74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18D78  93 C1 00 08 */	stw r30, 8(r1)
/* 80C18D7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C18D80  7C 9F 23 78 */	mr r31, r4
/* 80C18D84  41 82 00 60 */	beq lbl_80C18DE4
/* 80C18D88  3C 60 80 C2 */	lis r3, __vt__11daObjHata_c@ha /* 0x80C1951C@ha */
/* 80C18D8C  38 03 95 1C */	addi r0, r3, __vt__11daObjHata_c@l /* 0x80C1951C@l */
/* 80C18D90  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80C18D94  7F C3 F3 78 */	mr r3, r30
/* 80C18D98  41 82 00 08 */	beq lbl_80C18DA0
/* 80C18D9C  38 63 05 68 */	addi r3, r3, 0x568
lbl_80C18DA0:
/* 80C18DA0  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C194C8@ha */
/* 80C18DA4  38 84 94 C8 */	addi r4, r4, l_arcName@l /* 0x80C194C8@l */
/* 80C18DA8  80 84 00 00 */	lwz r4, 0(r4)
/* 80C18DAC  4B 41 42 5D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C18DB0  38 7E 05 74 */	addi r3, r30, 0x574
/* 80C18DB4  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C18CCC@ha */
/* 80C18DB8  38 84 8C CC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C18CCC@l */
/* 80C18DBC  38 A0 00 06 */	li r5, 6
/* 80C18DC0  38 C0 00 03 */	li r6, 3
/* 80C18DC4  4B 74 8F 25 */	bl __destroy_arr
/* 80C18DC8  7F C3 F3 78 */	mr r3, r30
/* 80C18DCC  38 80 00 00 */	li r4, 0
/* 80C18DD0  4B 3F FE BD */	bl __dt__10fopAc_ac_cFv
/* 80C18DD4  7F E0 07 35 */	extsh. r0, r31
/* 80C18DD8  40 81 00 0C */	ble lbl_80C18DE4
/* 80C18DDC  7F C3 F3 78 */	mr r3, r30
/* 80C18DE0  4B 6B 5F 5D */	bl __dl__FPv
lbl_80C18DE4:
/* 80C18DE4  7F C3 F3 78 */	mr r3, r30
/* 80C18DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C18DEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C18DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18DF4  7C 08 03 A6 */	mtlr r0
/* 80C18DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18DFC  4E 80 00 20 */	blr 
