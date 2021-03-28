lbl_80998F7C:
/* 80998F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80998F80  7C 08 02 A6 */	mflr r0
/* 80998F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80998F88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80998F8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80998F90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80998F94  7C 9E 23 78 */	mr r30, r4
/* 80998F98  41 82 00 C4 */	beq lbl_8099905C
/* 80998F9C  3C 60 80 9A */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80998FA0  38 03 9F 24 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80998FA4  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80998FA8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80998FAC  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 80998FB0  38 84 8A F0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80998FB4  38 A0 00 0C */	li r5, 0xc
/* 80998FB8  38 C0 00 03 */	li r6, 3
/* 80998FBC  4B 9C 8D 2C */	b __destroy_arr
/* 80998FC0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80998FC4  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 80998FC8  38 84 8A F0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80998FCC  38 A0 00 0C */	li r5, 0xc
/* 80998FD0  38 C0 00 03 */	li r6, 3
/* 80998FD4  4B 9C 8D 14 */	b __destroy_arr
/* 80998FD8  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80998FDC  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 80998FE0  38 84 8A F0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80998FE4  38 A0 00 0C */	li r5, 0xc
/* 80998FE8  38 C0 00 03 */	li r6, 3
/* 80998FEC  4B 9C 8C FC */	b __destroy_arr
/* 80998FF0  38 7F 00 78 */	addi r3, r31, 0x78
/* 80998FF4  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 80998FF8  38 84 8A F0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80998FFC  38 A0 00 0C */	li r5, 0xc
/* 80999000  38 C0 00 03 */	li r6, 3
/* 80999004  4B 9C 8C E4 */	b __destroy_arr
/* 80999008  38 7F 00 54 */	addi r3, r31, 0x54
/* 8099900C  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 80999010  38 84 8A F0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80999014  38 A0 00 0C */	li r5, 0xc
/* 80999018  38 C0 00 03 */	li r6, 3
/* 8099901C  4B 9C 8C CC */	b __destroy_arr
/* 80999020  38 7F 00 30 */	addi r3, r31, 0x30
/* 80999024  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha
/* 80999028  38 84 8A F0 */	addi r4, r4, __dt__4cXyzFv@l
/* 8099902C  38 A0 00 0C */	li r5, 0xc
/* 80999030  38 C0 00 03 */	li r6, 3
/* 80999034  4B 9C 8C B4 */	b __destroy_arr
/* 80999038  28 1F 00 00 */	cmplwi r31, 0
/* 8099903C  41 82 00 10 */	beq lbl_8099904C
/* 80999040  3C 60 80 9A */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80999044  38 03 9F 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80999048  90 1F 00 04 */	stw r0, 4(r31)
lbl_8099904C:
/* 8099904C  7F C0 07 35 */	extsh. r0, r30
/* 80999050  40 81 00 0C */	ble lbl_8099905C
/* 80999054  7F E3 FB 78 */	mr r3, r31
/* 80999058  4B 93 5C E4 */	b __dl__FPv
lbl_8099905C:
/* 8099905C  7F E3 FB 78 */	mr r3, r31
/* 80999060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80999064  83 C1 00 08 */	lwz r30, 8(r1)
/* 80999068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099906C  7C 08 03 A6 */	mtlr r0
/* 80999070  38 21 00 10 */	addi r1, r1, 0x10
/* 80999074  4E 80 00 20 */	blr 
