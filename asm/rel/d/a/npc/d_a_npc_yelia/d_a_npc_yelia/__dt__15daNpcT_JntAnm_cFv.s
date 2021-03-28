lbl_80B51944:
/* 80B51944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B51948  7C 08 02 A6 */	mflr r0
/* 80B5194C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51954  93 C1 00 08 */	stw r30, 8(r1)
/* 80B51958  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5195C  7C 9E 23 78 */	mr r30, r4
/* 80B51960  41 82 00 C4 */	beq lbl_80B51A24
/* 80B51964  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B51968  38 03 32 E8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B5196C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B51970  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B51974  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B51978  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B5197C  38 A0 00 0C */	li r5, 0xc
/* 80B51980  38 C0 00 03 */	li r6, 3
/* 80B51984  4B 81 03 64 */	b __destroy_arr
/* 80B51988  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B5198C  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B51990  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B51994  38 A0 00 0C */	li r5, 0xc
/* 80B51998  38 C0 00 03 */	li r6, 3
/* 80B5199C  4B 81 03 4C */	b __destroy_arr
/* 80B519A0  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B519A4  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B519A8  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B519AC  38 A0 00 0C */	li r5, 0xc
/* 80B519B0  38 C0 00 03 */	li r6, 3
/* 80B519B4  4B 81 03 34 */	b __destroy_arr
/* 80B519B8  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B519BC  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B519C0  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B519C4  38 A0 00 0C */	li r5, 0xc
/* 80B519C8  38 C0 00 03 */	li r6, 3
/* 80B519CC  4B 81 03 1C */	b __destroy_arr
/* 80B519D0  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B519D4  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B519D8  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B519DC  38 A0 00 0C */	li r5, 0xc
/* 80B519E0  38 C0 00 03 */	li r6, 3
/* 80B519E4  4B 81 03 04 */	b __destroy_arr
/* 80B519E8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B519EC  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B519F0  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B519F4  38 A0 00 0C */	li r5, 0xc
/* 80B519F8  38 C0 00 03 */	li r6, 3
/* 80B519FC  4B 81 02 EC */	b __destroy_arr
/* 80B51A00  28 1F 00 00 */	cmplwi r31, 0
/* 80B51A04  41 82 00 10 */	beq lbl_80B51A14
/* 80B51A08  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B51A0C  38 03 32 DC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B51A10  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B51A14:
/* 80B51A14  7F C0 07 35 */	extsh. r0, r30
/* 80B51A18  40 81 00 0C */	ble lbl_80B51A24
/* 80B51A1C  7F E3 FB 78 */	mr r3, r31
/* 80B51A20  4B 77 D3 1C */	b __dl__FPv
lbl_80B51A24:
/* 80B51A24  7F E3 FB 78 */	mr r3, r31
/* 80B51A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51A2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B51A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51A34  7C 08 03 A6 */	mtlr r0
/* 80B51A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51A3C  4E 80 00 20 */	blr 
