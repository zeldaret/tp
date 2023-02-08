lbl_8045D0B4:
/* 8045D0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D0B8  7C 08 02 A6 */	mflr r0
/* 8045D0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D0C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8045D0C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8045D0CC  7C 9F 23 78 */	mr r31, r4
/* 8045D0D0  41 82 00 30 */	beq lbl_8045D100
/* 8045D0D4  38 7E 05 68 */	addi r3, r30, 0x568
/* 8045D0D8  3C 80 80 46 */	lis r4, l_arcName@ha /* 0x8045D290@ha */
/* 8045D0DC  38 84 D2 90 */	addi r4, r4, l_arcName@l /* 0x8045D290@l */
/* 8045D0E0  4B BC FF 29 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8045D0E4  7F C3 F3 78 */	mr r3, r30
/* 8045D0E8  38 80 00 00 */	li r4, 0
/* 8045D0EC  4B BB BB A1 */	bl __dt__10fopAc_ac_cFv
/* 8045D0F0  7F E0 07 35 */	extsh. r0, r31
/* 8045D0F4  40 81 00 0C */	ble lbl_8045D100
/* 8045D0F8  7F C3 F3 78 */	mr r3, r30
/* 8045D0FC  4B E7 1C 41 */	bl __dl__FPv
lbl_8045D100:
/* 8045D100  7F C3 F3 78 */	mr r3, r30
/* 8045D104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D108  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045D10C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D110  7C 08 03 A6 */	mtlr r0
/* 8045D114  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D118  4E 80 00 20 */	blr 
