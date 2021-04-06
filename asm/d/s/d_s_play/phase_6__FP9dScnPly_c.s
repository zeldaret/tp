lbl_8025AAC0:
/* 8025AAC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025AAC4  7C 08 02 A6 */	mflr r0
/* 8025AAC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025AACC  39 61 00 20 */	addi r11, r1, 0x20
/* 8025AAD0  48 10 77 01 */	bl _savegpr_26
/* 8025AAD4  88 8D 81 E4 */	lbz r4, struct_80450764+0x0(r13)
/* 8025AAD8  7C 80 07 75 */	extsb. r0, r4
/* 8025AADC  41 80 00 94 */	blt lbl_8025AB70
/* 8025AAE0  3B A0 00 02 */	li r29, 2
/* 8025AAE4  3C 60 80 3A */	lis r3, PreLoadInfoT@ha /* 0x8039A2C8@ha */
/* 8025AAE8  38 63 A2 C8 */	addi r3, r3, PreLoadInfoT@l /* 0x8039A2C8@l */
/* 8025AAEC  7C 80 07 74 */	extsb r0, r4
/* 8025AAF0  54 00 20 36 */	slwi r0, r0, 4
/* 8025AAF4  7C 63 02 14 */	add r3, r3, r0
/* 8025AAF8  83 83 00 04 */	lwz r28, 4(r3)
/* 8025AAFC  8B 63 00 0C */	lbz r27, 0xc(r3)
/* 8025AB00  28 1C 00 00 */	cmplwi r28, 0
/* 8025AB04  41 82 00 50 */	beq lbl_8025AB54
/* 8025AB08  A8 1C 00 00 */	lha r0, 0(r28)
/* 8025AB0C  2C 00 00 00 */	cmpwi r0, 0
/* 8025AB10  41 82 00 44 */	beq lbl_8025AB54
/* 8025AB14  3B 40 00 00 */	li r26, 0
/* 8025AB18  3B E0 00 00 */	li r31, 0
/* 8025AB1C  3B C0 00 00 */	li r30, 0
/* 8025AB20  48 00 00 2C */	b lbl_8025AB4C
lbl_8025AB24:
/* 8025AB24  38 6D 8B 80 */	la r3, dylPhase(r13) /* 80451100-_SDA_BASE_ */
/* 8025AB28  7C 63 F2 14 */	add r3, r3, r30
/* 8025AB2C  7C 9C FA AE */	lhax r4, r28, r31
/* 8025AB30  4B DB DD 1D */	bl Link__7cDylPhsFP30request_of_phase_process_classs
/* 8025AB34  2C 03 00 04 */	cmpwi r3, 4
/* 8025AB38  41 82 00 08 */	beq lbl_8025AB40
/* 8025AB3C  3B A0 00 00 */	li r29, 0
lbl_8025AB40:
/* 8025AB40  3B 5A 00 01 */	addi r26, r26, 1
/* 8025AB44  3B FF 00 02 */	addi r31, r31, 2
/* 8025AB48  3B DE 00 08 */	addi r30, r30, 8
lbl_8025AB4C:
/* 8025AB4C  7C 1A D8 00 */	cmpw r26, r27
/* 8025AB50  41 80 FF D4 */	blt lbl_8025AB24
lbl_8025AB54:
/* 8025AB54  2C 1D 00 04 */	cmpwi r29, 4
/* 8025AB58  40 82 00 10 */	bne lbl_8025AB68
/* 8025AB5C  48 0E 7B A1 */	bl OSGetTime
/* 8025AB60  90 8D 8B 8C */	stw r4, data_8045110C(r13)
/* 8025AB64  90 6D 8B 88 */	stw r3, dylPreLoadTime1(r13)
lbl_8025AB68:
/* 8025AB68  7F A3 EB 78 */	mr r3, r29
/* 8025AB6C  48 00 00 08 */	b lbl_8025AB74
lbl_8025AB70:
/* 8025AB70  38 60 00 02 */	li r3, 2
lbl_8025AB74:
/* 8025AB74  39 61 00 20 */	addi r11, r1, 0x20
/* 8025AB78  48 10 76 A5 */	bl _restgpr_26
/* 8025AB7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025AB80  7C 08 03 A6 */	mtlr r0
/* 8025AB84  38 21 00 20 */	addi r1, r1, 0x20
/* 8025AB88  4E 80 00 20 */	blr 
