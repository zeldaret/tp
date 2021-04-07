lbl_8025A9F4:
/* 8025A9F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025A9F8  7C 08 02 A6 */	mflr r0
/* 8025A9FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025AA00  39 61 00 20 */	addi r11, r1, 0x20
/* 8025AA04  48 10 77 CD */	bl _savegpr_26
/* 8025AA08  88 8D 81 E4 */	lbz r4, struct_80450764+0x0(r13)
/* 8025AA0C  7C 80 07 75 */	extsb. r0, r4
/* 8025AA10  41 80 00 94 */	blt lbl_8025AAA4
/* 8025AA14  3B A0 00 02 */	li r29, 2
/* 8025AA18  3C 60 80 3A */	lis r3, PreLoadInfoT@ha /* 0x8039A2C8@ha */
/* 8025AA1C  38 63 A2 C8 */	addi r3, r3, PreLoadInfoT@l /* 0x8039A2C8@l */
/* 8025AA20  7C 80 07 74 */	extsb r0, r4
/* 8025AA24  54 00 20 36 */	slwi r0, r0, 4
/* 8025AA28  7C 63 02 14 */	add r3, r3, r0
/* 8025AA2C  83 83 00 08 */	lwz r28, 8(r3)
/* 8025AA30  8B 63 00 0D */	lbz r27, 0xd(r3)
/* 8025AA34  28 1C 00 00 */	cmplwi r28, 0
/* 8025AA38  41 82 00 50 */	beq lbl_8025AA88
/* 8025AA3C  80 1C 00 00 */	lwz r0, 0(r28)
/* 8025AA40  28 00 00 00 */	cmplwi r0, 0
/* 8025AA44  41 82 00 44 */	beq lbl_8025AA88
/* 8025AA48  3B 40 00 00 */	li r26, 0
/* 8025AA4C  3B E0 00 00 */	li r31, 0
/* 8025AA50  3B C0 00 00 */	li r30, 0
/* 8025AA54  48 00 00 2C */	b lbl_8025AA80
lbl_8025AA58:
/* 8025AA58  38 6D 8B 78 */	la r3, resPhase(r13) /* 804510F8-_SDA_BASE_ */
/* 8025AA5C  7C 63 F2 14 */	add r3, r3, r30
/* 8025AA60  7C 9C F8 2E */	lwzx r4, r28, r31
/* 8025AA64  4B DD 24 59 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8025AA68  2C 03 00 04 */	cmpwi r3, 4
/* 8025AA6C  41 82 00 08 */	beq lbl_8025AA74
/* 8025AA70  3B A0 00 00 */	li r29, 0
lbl_8025AA74:
/* 8025AA74  3B 5A 00 01 */	addi r26, r26, 1
/* 8025AA78  3B FF 00 04 */	addi r31, r31, 4
/* 8025AA7C  3B DE 00 08 */	addi r30, r30, 8
lbl_8025AA80:
/* 8025AA80  7C 1A D8 00 */	cmpw r26, r27
/* 8025AA84  41 80 FF D4 */	blt lbl_8025AA58
lbl_8025AA88:
/* 8025AA88  2C 1D 00 04 */	cmpwi r29, 4
/* 8025AA8C  40 82 00 10 */	bne lbl_8025AA9C
/* 8025AA90  48 0E 7C 6D */	bl OSGetTime
/* 8025AA94  90 8D 8B 9C */	stw r4, data_8045111C(r13)
/* 8025AA98  90 6D 8B 98 */	stw r3, resPreLoadTime1(r13)
lbl_8025AA9C:
/* 8025AA9C  7F A3 EB 78 */	mr r3, r29
/* 8025AAA0  48 00 00 08 */	b lbl_8025AAA8
lbl_8025AAA4:
/* 8025AAA4  38 60 00 02 */	li r3, 2
lbl_8025AAA8:
/* 8025AAA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8025AAAC  48 10 77 71 */	bl _restgpr_26
/* 8025AAB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025AAB4  7C 08 03 A6 */	mtlr r0
/* 8025AAB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8025AABC  4E 80 00 20 */	blr 
