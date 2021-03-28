lbl_80656D18:
/* 80656D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80656D1C  7C 08 02 A6 */	mflr r0
/* 80656D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80656D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80656D28  93 C1 00 08 */	stw r30, 8(r1)
/* 80656D2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80656D30  41 82 00 08 */	beq lbl_80656D38
/* 80656D34  38 63 05 68 */	addi r3, r3, 0x568
lbl_80656D38:
/* 80656D38  3C 80 80 65 */	lis r4, l_arcName@ha
/* 80656D3C  38 84 79 F4 */	addi r4, r4, l_arcName@l
/* 80656D40  80 84 00 00 */	lwz r4, 0(r4)
/* 80656D44  4B 9D 61 78 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80656D48  7C 7F 1B 78 */	mr r31, r3
/* 80656D4C  2C 1F 00 04 */	cmpwi r31, 4
/* 80656D50  40 82 00 28 */	bne lbl_80656D78
/* 80656D54  7F C3 F3 78 */	mr r3, r30
/* 80656D58  3C 80 80 65 */	lis r4, daCoach2D_createHeap__FP10fopAc_ac_c@ha
/* 80656D5C  38 84 6A 18 */	addi r4, r4, daCoach2D_createHeap__FP10fopAc_ac_c@l
/* 80656D60  38 A0 50 50 */	li r5, 0x5050
/* 80656D64  4B 9C 37 4C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80656D68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80656D6C  40 82 00 0C */	bne lbl_80656D78
/* 80656D70  38 60 00 05 */	li r3, 5
/* 80656D74  48 00 00 08 */	b lbl_80656D7C
lbl_80656D78:
/* 80656D78  7F E3 FB 78 */	mr r3, r31
lbl_80656D7C:
/* 80656D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80656D80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80656D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80656D88  7C 08 03 A6 */	mtlr r0
/* 80656D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80656D90  4E 80 00 20 */	blr 
