lbl_80975ED8:
/* 80975ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80975EDC  7C 08 02 A6 */	mflr r0
/* 80975EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80975EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80975EE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80975EEC  7C 7E 1B 78 */	mr r30, r3
/* 80975EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80975EF4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80975EF8  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80975EFC  3C 80 80 98 */	lis r4, d_a_npc_bouS__stringBase0@ha /* 0x80978758@ha */
/* 80975F00  38 84 87 58 */	addi r4, r4, d_a_npc_bouS__stringBase0@l /* 0x80978758@l */
/* 80975F04  38 84 00 41 */	addi r4, r4, 0x41
/* 80975F08  4B 9F 2A 8D */	bl strcmp
/* 80975F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80975F10  40 82 00 18 */	bne lbl_80975F28
/* 80975F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80975F18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80975F1C  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 80975F20  2C 00 00 02 */	cmpwi r0, 2
/* 80975F24  41 82 00 0C */	beq lbl_80975F30
lbl_80975F28:
/* 80975F28  38 60 00 00 */	li r3, 0
/* 80975F2C  48 00 00 98 */	b lbl_80975FC4
lbl_80975F30:
/* 80975F30  38 00 00 01 */	li r0, 1
/* 80975F34  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80975F38  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80975F3C  28 00 00 00 */	cmplwi r0, 0
/* 80975F40  41 82 00 3C */	beq lbl_80975F7C
/* 80975F44  7F C3 F3 78 */	mr r3, r30
/* 80975F48  3C 80 80 98 */	lis r4, d_a_npc_bouS__stringBase0@ha /* 0x80978758@ha */
/* 80975F4C  38 84 87 58 */	addi r4, r4, d_a_npc_bouS__stringBase0@l /* 0x80978758@l */
/* 80975F50  38 84 00 04 */	addi r4, r4, 4
/* 80975F54  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80975F58  54 00 10 3A */	slwi r0, r0, 2
/* 80975F5C  3C A0 80 98 */	lis r5, l_evtNames@ha /* 0x80978928@ha */
/* 80975F60  38 A5 89 28 */	addi r5, r5, l_evtNames@l /* 0x80978928@l */
/* 80975F64  7C A5 00 2E */	lwzx r5, r5, r0
/* 80975F68  38 C0 00 01 */	li r6, 1
/* 80975F6C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80975F70  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80975F74  4B 7D D9 E1 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80975F78  48 00 00 48 */	b lbl_80975FC0
lbl_80975F7C:
/* 80975F7C  3C 60 80 98 */	lis r3, d_a_npc_bouS__stringBase0@ha /* 0x80978758@ha */
/* 80975F80  38 63 87 58 */	addi r3, r3, d_a_npc_bouS__stringBase0@l /* 0x80978758@l */
/* 80975F84  38 03 00 04 */	addi r0, r3, 4
/* 80975F88  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80975F8C  7F C3 F3 78 */	mr r3, r30
/* 80975F90  38 80 00 00 */	li r4, 0
/* 80975F94  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80975F98  54 00 10 3A */	slwi r0, r0, 2
/* 80975F9C  3C A0 80 98 */	lis r5, l_evtNames@ha /* 0x80978928@ha */
/* 80975FA0  38 A5 89 28 */	addi r5, r5, l_evtNames@l /* 0x80978928@l */
/* 80975FA4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80975FA8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80975FAC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80975FB0  38 E0 00 04 */	li r7, 4
/* 80975FB4  39 00 00 FF */	li r8, 0xff
/* 80975FB8  39 20 00 01 */	li r9, 1
/* 80975FBC  4B 7D D8 C1 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80975FC0:
/* 80975FC0  38 60 00 01 */	li r3, 1
lbl_80975FC4:
/* 80975FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80975FC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80975FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80975FD0  7C 08 03 A6 */	mtlr r0
/* 80975FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80975FD8  4E 80 00 20 */	blr 
