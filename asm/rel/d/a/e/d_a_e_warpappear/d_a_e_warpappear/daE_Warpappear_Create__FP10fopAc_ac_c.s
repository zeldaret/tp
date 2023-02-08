lbl_807D1F40:
/* 807D1F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D1F44  7C 08 02 A6 */	mflr r0
/* 807D1F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D1F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D1F50  93 C1 00 08 */	stw r30, 8(r1)
/* 807D1F54  7C 7F 1B 78 */	mr r31, r3
/* 807D1F58  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807D1F5C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807D1F60  40 82 00 28 */	bne lbl_807D1F88
/* 807D1F64  7F E0 FB 79 */	or. r0, r31, r31
/* 807D1F68  41 82 00 14 */	beq lbl_807D1F7C
/* 807D1F6C  7C 1E 03 78 */	mr r30, r0
/* 807D1F70  4B 84 6B F5 */	bl __ct__10fopAc_ac_cFv
/* 807D1F74  38 7E 06 00 */	addi r3, r30, 0x600
/* 807D1F78  4B A7 7F 89 */	bl __ct__10dMsgFlow_cFv
lbl_807D1F7C:
/* 807D1F7C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807D1F80  60 00 00 08 */	ori r0, r0, 8
/* 807D1F84  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_807D1F88:
/* 807D1F88  38 7F 05 68 */	addi r3, r31, 0x568
/* 807D1F8C  3C 80 80 7D */	lis r4, d_a_e_warpappear__stringBase0@ha /* 0x807D2280@ha */
/* 807D1F90  38 84 22 80 */	addi r4, r4, d_a_e_warpappear__stringBase0@l /* 0x807D2280@l */
/* 807D1F94  38 84 00 08 */	addi r4, r4, 8
/* 807D1F98  4B 85 AF 25 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807D1F9C  7C 7E 1B 78 */	mr r30, r3
/* 807D1FA0  2C 1E 00 04 */	cmpwi r30, 4
/* 807D1FA4  40 82 00 AC */	bne lbl_807D2050
/* 807D1FA8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807D1FAC  98 1F 05 70 */	stb r0, 0x570(r31)
/* 807D1FB0  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 807D1FB4  28 00 00 35 */	cmplwi r0, 0x35
/* 807D1FB8  41 82 00 6C */	beq lbl_807D2024
/* 807D1FBC  28 00 00 FF */	cmplwi r0, 0xff
/* 807D1FC0  40 82 00 30 */	bne lbl_807D1FF0
/* 807D1FC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D1FC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D1FCC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 807D1FD0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 807D1FD4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 807D1FD8  A0 84 01 2E */	lhz r4, 0x12e(r4)
/* 807D1FDC  4B 86 29 E1 */	bl isEventBit__11dSv_event_cCFUs
/* 807D1FE0  2C 03 00 00 */	cmpwi r3, 0
/* 807D1FE4  41 82 00 14 */	beq lbl_807D1FF8
/* 807D1FE8  38 60 00 05 */	li r3, 5
/* 807D1FEC  48 00 00 68 */	b lbl_807D2054
lbl_807D1FF0:
/* 807D1FF0  38 00 00 78 */	li r0, 0x78
/* 807D1FF4  B0 1F 05 9A */	sth r0, 0x59a(r31)
lbl_807D1FF8:
/* 807D1FF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D1FFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D2000  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807D2004  54 04 46 3E */	srwi r4, r0, 0x18
/* 807D2008  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807D200C  7C 05 07 74 */	extsb r5, r0
/* 807D2010  4B 86 33 51 */	bl isSwitch__10dSv_info_cCFii
/* 807D2014  2C 03 00 00 */	cmpwi r3, 0
/* 807D2018  41 82 00 0C */	beq lbl_807D2024
/* 807D201C  38 60 00 05 */	li r3, 5
/* 807D2020  48 00 00 34 */	b lbl_807D2054
lbl_807D2024:
/* 807D2024  7F E3 FB 78 */	mr r3, r31
/* 807D2028  3C 80 80 7D */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807D1C8C@ha */
/* 807D202C  38 84 1C 8C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807D1C8C@l */
/* 807D2030  38 A0 20 80 */	li r5, 0x2080
/* 807D2034  4B 84 84 7D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807D2038  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D203C  40 82 00 0C */	bne lbl_807D2048
/* 807D2040  38 60 00 05 */	li r3, 5
/* 807D2044  48 00 00 10 */	b lbl_807D2054
lbl_807D2048:
/* 807D2048  7F E3 FB 78 */	mr r3, r31
/* 807D204C  4B FF FA FD */	bl mtx_set__FP18e_warpappear_class
lbl_807D2050:
/* 807D2050  7F C3 F3 78 */	mr r3, r30
lbl_807D2054:
/* 807D2054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D2058  83 C1 00 08 */	lwz r30, 8(r1)
/* 807D205C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D2060  7C 08 03 A6 */	mtlr r0
/* 807D2064  38 21 00 10 */	addi r1, r1, 0x10
/* 807D2068  4E 80 00 20 */	blr 
