lbl_80653D24:
/* 80653D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80653D28  7C 08 02 A6 */	mflr r0
/* 80653D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80653D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80653D34  93 C1 00 08 */	stw r30, 8(r1)
/* 80653D38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80653D3C  41 82 00 08 */	beq lbl_80653D44
/* 80653D40  38 63 05 68 */	addi r3, r3, 0x568
lbl_80653D44:
/* 80653D44  3C 80 80 65 */	lis r4, l_arcName@ha /* 0x806556D4@ha */
/* 80653D48  38 84 56 D4 */	addi r4, r4, l_arcName@l /* 0x806556D4@l */
/* 80653D4C  80 84 00 00 */	lwz r4, 0(r4)
/* 80653D50  4B 9D 91 6D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80653D54  7C 7F 1B 78 */	mr r31, r3
/* 80653D58  2C 1F 00 04 */	cmpwi r31, 4
/* 80653D5C  40 82 00 3C */	bne lbl_80653D98
/* 80653D60  7F C3 F3 78 */	mr r3, r30
/* 80653D64  3C 80 80 65 */	lis r4, daBalloon2D_createHeap__FP10fopAc_ac_c@ha /* 0x80653518@ha */
/* 80653D68  38 84 35 18 */	addi r4, r4, daBalloon2D_createHeap__FP10fopAc_ac_c@l /* 0x80653518@l */
/* 80653D6C  38 A0 00 00 */	li r5, 0
/* 80653D70  4B 9C 67 41 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80653D74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80653D78  40 82 00 0C */	bne lbl_80653D84
/* 80653D7C  38 60 00 05 */	li r3, 5
/* 80653D80  48 00 00 1C */	b lbl_80653D9C
lbl_80653D84:
/* 80653D84  3C 60 80 65 */	lis r3, myclass__13daBalloon2D_c@ha /* 0x80655844@ha */
/* 80653D88  93 C3 58 44 */	stw r30, myclass__13daBalloon2D_c@l(r3)  /* 0x80655844@l */
/* 80653D8C  7F C3 F3 78 */	mr r3, r30
/* 80653D90  38 80 00 01 */	li r4, 1
/* 80653D94  48 00 10 F9 */	bl setHIO__13daBalloon2D_cFb
lbl_80653D98:
/* 80653D98  7F E3 FB 78 */	mr r3, r31
lbl_80653D9C:
/* 80653D9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80653DA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80653DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80653DA8  7C 08 03 A6 */	mtlr r0
/* 80653DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80653DB0  4E 80 00 20 */	blr 
