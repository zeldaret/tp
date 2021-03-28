lbl_80A62FD4:
/* 80A62FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62FD8  7C 08 02 A6 */	mflr r0
/* 80A62FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62FE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A62FE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A62FEC  7C 9E 23 78 */	mr r30, r4
/* 80A62FF0  41 82 00 C4 */	beq lbl_80A630B4
/* 80A62FF4  3C 60 80 A6 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A62FF8  38 03 41 18 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A62FFC  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A63000  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A63004  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A63008  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6300C  38 A0 00 0C */	li r5, 0xc
/* 80A63010  38 C0 00 03 */	li r6, 3
/* 80A63014  4B 8F EC D4 */	b __destroy_arr
/* 80A63018  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A6301C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A63020  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A63024  38 A0 00 0C */	li r5, 0xc
/* 80A63028  38 C0 00 03 */	li r6, 3
/* 80A6302C  4B 8F EC BC */	b __destroy_arr
/* 80A63030  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A63034  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A63038  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6303C  38 A0 00 0C */	li r5, 0xc
/* 80A63040  38 C0 00 03 */	li r6, 3
/* 80A63044  4B 8F EC A4 */	b __destroy_arr
/* 80A63048  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A6304C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A63050  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A63054  38 A0 00 0C */	li r5, 0xc
/* 80A63058  38 C0 00 03 */	li r6, 3
/* 80A6305C  4B 8F EC 8C */	b __destroy_arr
/* 80A63060  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A63064  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A63068  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6306C  38 A0 00 0C */	li r5, 0xc
/* 80A63070  38 C0 00 03 */	li r6, 3
/* 80A63074  4B 8F EC 74 */	b __destroy_arr
/* 80A63078  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A6307C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha
/* 80A63080  38 84 29 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A63084  38 A0 00 0C */	li r5, 0xc
/* 80A63088  38 C0 00 03 */	li r6, 3
/* 80A6308C  4B 8F EC 5C */	b __destroy_arr
/* 80A63090  28 1F 00 00 */	cmplwi r31, 0
/* 80A63094  41 82 00 10 */	beq lbl_80A630A4
/* 80A63098  3C 60 80 A6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6309C  38 03 41 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A630A0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A630A4:
/* 80A630A4  7F C0 07 35 */	extsh. r0, r30
/* 80A630A8  40 81 00 0C */	ble lbl_80A630B4
/* 80A630AC  7F E3 FB 78 */	mr r3, r31
/* 80A630B0  4B 86 BC 8C */	b __dl__FPv
lbl_80A630B4:
/* 80A630B4  7F E3 FB 78 */	mr r3, r31
/* 80A630B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A630BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A630C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A630C4  7C 08 03 A6 */	mtlr r0
/* 80A630C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A630CC  4E 80 00 20 */	blr 
